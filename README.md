# PT-Robots (Python Technical Robots)

PT-Robots is a Python port of the fantastic programming game, 
[AT-Robots 2](http://necrobones.com/atrobots/) 
written by 
[Ed T. Toton III](https://ed.toton.org/)
in the late 1990s.  Originally written for
Borland's Turbo Pascal 6, AT-Robots was a competitive game where players
wrote assembly language code to control their bots in a simulated arena.
The bots have somewhat configurable hardware and can hunt one another in
various ways.  However, in the decades since its last official update,
AT-Robots has stayed in regular use at 
[SUNY Polytechnic Institute](http://www.sunypoly.edu)
as a fun tool with which to learn and practice basic assembly language
control flow programming in the Computer Organization class I've taught
since 2005.

Learning to program AT-Robots assembly, and subsequently reading and
modifying its sources in my younger days has had a serious impact on my
life and professional career... weird to admit that, but it's true.
:rolling_on_the_floor_laughing:
I always look forward to introducing my students to this 25 year addication,
but it's time this gem is ported so it can be enjoyed without a
DOS emulator and my students encouraged to explore its code,
rewritten in a language they're confident using.

Goodness gracious... have some fun!!! :nerd_face:

-- luv, Amos

## A Work In Progress

This project is in its infancy.  For the time being, the only truly working
thing is the actual AT-Robots program we've fixed up and embedded within
this project.

## AT-Robots 2.10

Included in this repository (in the `atrobots` directory) is a copy of the
last AT-Robots distribution I'm aware of.  At least at the time of this
writing (December 2024), the official last version was still available for
download at the [AT-Robots website](http://necrobones.com/atrobots/).  That
version (2.10) had a few flaws discovered in the decades since its release,
so in the first few commits of this project, modifications will be made and
documented to resolve them and make the updated sources compilable with
Turbo Pascal compiler [Embarcadero](https://www.embarcadero.com/) once
released as antique software (we couldn't find it any longer, though).
To be clear, this is **NOT** an official
release of AT-Robots, although the overwhelming majority of that original
code is still there, untouched.  The ATROBS GUI that launches basic runs of 
the game did not have its sources anywhere we could find, so we could not
correct its known defects.