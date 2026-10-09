---
layout: post
title:  "gym-classics2 prerelease"
categories: research
summary: gym-classics2 is a Python module developed for teaching reinforcement learning using the popular Gymnasium environment.
thumbnail: /assets/img/gym-classics2-release.webp
thumbnail_alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
image:
  path: /assets/img/gym-classics2-release.webp
  width: 1200
  height: 630
  alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
---

![An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal]({{ '/assets/img/gym-classics2-release.webp' | relative_url }}){: loading="eager" decoding="async" }

I prereleased version 1.0.2 of [`gym-classics2`](https://michael.hahsler.net/gym-classics2/), a Python package designed to make classic reinforcement learning easy to learn, experiment, and teach with. It is based on Brett Daley's [`gym-classics`](https://github.com/brett-daley/gym-classics) and uses the modern [Gymnasium](https://gymnasium.farama.org/) API. The official release on PyPI is planned for December 2026.

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

See the [documentation](https://michael.hahsler.net/gym-classics2/) for the supported environments, tutorials, and API reference. Companion slides, examples, and exercises are available in my [Introduction to Reinforcement Learning course](https://michael.hahsler.net/Introduction_to_Reinforcement_Learning/).
