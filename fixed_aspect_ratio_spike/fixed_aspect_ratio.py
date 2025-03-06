import os
import random

os.environ['PYGAME_HIDE_SUPPORT_PROMPT'] = "True"
import pygame

import const

def rand_color():
    return (random.randint(0,255), random.randint(0,255), random.randint(0,255))

def main():
    pygame.init()

    window = pygame.display.set_mode((const.DIMENSIONS), pygame.RESIZABLE)
    window_width, window_height = const.WIDTH, const.HEIGHT
    scaled_width, scaled_height = const.WIDTH, const.HEIGHT
    x_offset, y_offset = 0, 0
    aspect_scalar = 1.0

    surface = pygame.Surface(const.DIMENSIONS)

    pygame.display.set_caption("PT-Robots Fixed Aspect Ratio Spike")

    quit = False
    while not quit:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                quit = True
            elif event.type == pygame.VIDEORESIZE:
                window_width, window_height = event.w, event.h

                # Force min window size to constant WIDTH, HEIGHT
                force_base_size = False
                if event.w < const.WIDTH:
                    window_width = const.WIDTH
                    force_base_size = True
                if event.h < const.HEIGHT:
                    window_height = const.HEIGHT
                    force_base_size = True
                if force_base_size:                    
                    window = pygame.display.set_mode((window_width, window_height), pygame.RESIZABLE)

                if window_width / window_height > const.ASPECT_RATIO:
                    # Window too wide
                    scaled_height = window_height
                    scaled_width = int(scaled_height * const.ASPECT_RATIO)
                    aspect_scalar = const.WIDTH / scaled_width
                    x_offset = (window_width - scaled_width) // 2
                    y_offset = 0
                else:
                    # Window too tall (or just right)
                    scaled_width = window_width
                    scaled_height = int(scaled_width / const.ASPECT_RATIO)
                    aspect_scalar = const.HEIGHT / scaled_height
                    x_offset = 0
                    y_offset = (window_height - scaled_height) // 2
            elif event.type == pygame.MOUSEBUTTONDOWN:
                # Is mouse in the scaled area
                if x_offset <= event.pos[0] < x_offset + scaled_width and \
                   y_offset <= event.pos[1] < y_offset + scaled_height:
                    # Map coordinates to the unscaled surface
                    scaled_x = event.pos[0] - x_offset
                    scaled_y = event.pos[1] - y_offset

                    # x and y would be what we use in logic
                    x = int(scaled_x * aspect_scalar)
                    y = int(scaled_y * aspect_scalar)

                    print(f"Mouse: ({x}, {y})")

        # Some basic random pixels code
        random.seed(0)
        for y in range(const.HEIGHT):
            for x in range(const.WIDTH):
                surface.set_at((x, y), rand_color())

        scaled_surface = pygame.transform.scale(surface, (scaled_width, scaled_height))
        window.fill((0, 0, 0))
        window.blit(scaled_surface, (x_offset, y_offset))

        pygame.display.flip()

    pygame.quit()

if __name__ == "__main__":
    main()
