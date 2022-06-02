# Introduction

Welcome to _The Violet User Guide_,
the place-to-be for everything about the [Violet simulator](https://github.com/m-rots/violet).
In this guide, we will have a more detailed look on how to use Violet for your own simulations.

If you're simply looking for which functions and classes Violet has in store for you,
then you can also check out [Violet's API Reference](https://api.violet.m-rots.com/vi).
While the API documentation goes in-depth on specific functions and attributes,
this User Guide tries to explain where to start,
and which hidden superpowers are available to you.

## What is Violet anyway?

Many simulator frameworks exist, and for this course you're free to experiment with others as well,
but Violet is tailor-made for the course Project Collective Intelligence.

Violet is a small framework which builds on top of [PyGame](https://www.pygame.org/wiki/about),
an easy-to-use Python package for game development.
Now, you don't really need to understand how PyGame works,
as Violet hides all the complexity behind some easy to use functions and classes.
However, if you have some cool ideas which Violet doesn't support out-of-the-box,
such as [creating a player-controllable agent](https://github.com/m-rots/violet/blob/eecc28082808b23ef4849cc7b453fad61803a273/examples/proximity-player.py#L11-L20),
then Violet doesn't get in your way either.
You can always drop down a level and call any PyGame function that you want,
such as [polling the event queue](https://www.pygame.org/docs/ref/event.html)
or [checking which keys are currently pressed](https://www.pygame.org/docs/ref/key.html#pygame.key.get_pressed).

In fact, you'll notice that Violet's `Agent` class,
which will be the foundation of your simulations,
is simply a wrapper around PyGame's `Sprite` class,
but with some helpful additions which we'll get to later.

Technicalities aside, you probably won't be using Violet beyond the scope of this course.
And that's a good thing!
This course is all about you learning how to conduct empirical research in the field of collective intelligence,
no matter which simulator you chose to use!
Therefore, Violet tries to get out of your way as often as it can.
Want to change the image of the agent? That's just one line of code away!
How about querying agents that are in proximity of the agent? Well, perhaps that's two lines of code. 😉

With that out of the way, let's build some simulations!