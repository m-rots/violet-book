# Getting started

## Installation

Installing `Violet` is just a simple `pip install` away.

```shell
pip install -U violet-simulator
```

Please do note that `Violet` requires `Python` 3.9 or later.

## Quick start

Below we show a simple snippet that creates a new simulation, adds 500 agents and then runs the simulation.

```python
from vi import Agent, Simulation

(
    Simulation()
    .batch_spawn_agents(500, Agent, images=["examples/images/white.png"])
    .run()
)
```

The snippet above will add 500 instances of the `Agent` class to the simulation,
with each agent defaulting to the first image, which is `white.png`.
All agents are positioned randomly and automatically wander through the environment.

## Agent quick start

To add custom logic to your agents, you can inherit the `Agent` class and override the `update` method with your own.

```python
from vi import Agent, Config, Simulation


class MyAgent(Agent):
    def update(self):
        if self.in_radius().count() > 0:
            self.change_image(1)  # red
        else:
            self.change_image(0)  # white


(
    Simulation(Config(radius=15))
    .batch_spawn_agents(
        500,
        MyAgent,  # 👈 use our own MyAgent class
        images=[
            "examples/images/white.png",
            "examples/images/red.png",
        ],
    )
    .run()
)
```

Here we create a new class called `MyAgent` in which we inherit `Agent`.
We inherit the `Agent` class so that our agent is drawn to the screen automatically.

In our `update` function we check whether there are any agents close to our current agent.
If there is at least one agent nearby, we change our image to index `1` of the `images` list, in this case resulting in us selecting `red.png`.
However, if no one is around, we revert the image back to `white.png`.

Last but not least we make sure to spawn our newly created `MyAgent` class inside the `batch_spawn_agents` function.
In addition, we change the radius (the agent's visibility) from the default of 50 pixels to 15 pixels by modifying the `radius` configuration value.