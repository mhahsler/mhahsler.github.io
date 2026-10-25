---
layout: post
title:  "gym-classics2 PyPI Release"
categories: research
summary: gym-classics2 is a Python package developed for teaching reinforcement learning using the popular Gymnasium environment.
thumbnail: /assets/img/gym-classics2-release.webp
thumbnail_alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
image:
  path: /assets/img/gym-classics2-release.webp
  width: 1200
  height: 630
  alt: An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal
---

![An illustrated reinforcement-learning agent navigating a gridworld toward a glowing goal]({{ '/assets/img/gym-classics2-release.webp' | relative_url }}){: loading="eager" decoding="async" }

I released [`gym-classics2` version 1.0.3 on PIPy](https://pypi.org/project/gym-classics2/).
[`gym-classics2`](https://michael.hahsler.net/gym-classics2/) is a Python package designed to make classic reinforcement learning easy to learn, experiment, and teach with. Inspired by Brett Daley's [`gym-classics`](https://github.com/brett-daley/gym-classics), it uses the popular [Gymnasium](https://gymnasium.farama.org/) API, and adds
model access and learning algorithms. 

The package includes:

* finite Markov decision processes such as random walks, gridworlds, mazes, cliff walking, four rooms, and windy gridworld;
* direct access to transition and reward models for planning algorithms;
* readable implementations of dynamic programming, Monte Carlo, temporal-difference, function-approximation, eligibility-trace, and policy-gradient methods; and
* plotting and animation helpers for exploring learned values, policies, and agent behavior.

The implementations follow the presentation in Sutton and Barto's *Reinforcement Learning: An Introduction*. They emphasize clear code and inspectable intermediate results, making the package especially useful for coursework, demonstrations, and small experiments.

Install the package from PiPy:

```bash
python -m pip install gym-classics2
```

See the [documentation](https://michael.hahsler.net/gym-classics2/) for the supported environments, tutorials, and API reference. Companion slides, examples, and exercises are available in my [Introduction to Reinforcement Learning course](https://michael.hahsler.net/Introduction_to_Reinforcement_Learning/).
