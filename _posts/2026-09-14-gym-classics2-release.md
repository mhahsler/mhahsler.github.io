---
layout: post
title:  "gym-classics2 released for teaching reinforcement learning"
categories: research
summary: gym-classics2 combines classic finite Markov decision processes, readable textbook algorithms, and visualization tools in a modern Gymnasium package.
thumbnail: /assets/img/gym-classics2-release.webp
thumbnail_alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
image:
  path: /assets/img/gym-classics2-release.webp
  width: 1200
  height: 630
  alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
---

![An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal]({{ '/assets/img/gym-classics2-release.webp' | relative_url }}){: loading="eager" decoding="async" }

I released version 1.0.2 of [`gym-classics2`](https://github.com/mhahsler/gym-classics2), a Python package designed to make classic reinforcement learning easy to inspect, teach, and experiment with. It is based on Brett Daley's [`gym-classics`](https://github.com/brett-daley/gym-classics) and uses the modern [Gymnasium](https://gymnasium.farama.org/) API.

The package includes:

* finite Markov decision processes such as random walks, gridworlds, mazes, cliff walking, four rooms, and windy gridworld;
* direct access to transition and reward models for planning algorithms;
* readable implementations of dynamic programming, Monte Carlo, temporal-difference, function-approximation, eligibility-trace, and policy-gradient methods; and
* plotting and animation helpers for exploring learned values, policies, and agent behavior.

The implementations follow the presentation in Sutton and Barto's *Reinforcement Learning: An Introduction*. They emphasize clear code and inspectable intermediate results, making the package especially useful for coursework, demonstrations, and small experiments.

Install the package directly from GitHub:

```bash
python -m pip install "gym-classics2 @ git+https://github.com/mhahsler/gym-classics2.git"
```

See the [documentation](https://mhahsler.github.io/gym-classics2/) for the environment catalog, tutorials, and API reference. Companion slides, examples, and exercises are available in my [Introduction to Reinforcement Learning course](https://mhahsler.github.io/Introduction_to_Reinforcement_Learning/).
