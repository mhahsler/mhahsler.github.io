---
layout: page
title: Software
permalink: /software/
description: Open-source R and Python software developed by Michael Hahsler for data mining, machine learning, optimization, and bioinformatics.
---

<section class="software-hero" aria-labelledby="software-introduction">
  <div>
    <p class="profile-eyebrow">Open source · Research · Education</p>
    <h2 id="software-introduction">Research methods made practical</h2>
    <p class="software-lede">I develop and maintain open-source software that turns research in data mining, machine learning, and optimization into reusable tools. Most projects are R packages, with selected Python interfaces, Bioconductor packages, and teaching resources.</p>
    <p class="profile-links software-platform-links"><strong>Platforms:</strong> <a href="https://mhahsler.r-universe.dev/packages">R-universe</a> · <a href="https://github.com/mhahsler/">GitHub</a> · <a href="https://pypi.org/user/mhahsler/">PyPI</a> · <a href="https://www.bioconductor.org/">Bioconductor</a></p>
  </div>
</section>

## Find software by task

<nav class="software-section-nav" aria-label="Software categories">
  <a href="#pattern-mining">Pattern mining</a>
  <a href="#clustering-streams">Clustering and streams</a>
  <a href="#decisions-optimization">Decisions and optimization</a>
  <a href="#recommender-systems">Recommender systems</a>
  <a href="#bioinformatics">Bioinformatics</a>
  <a href="#education">Education</a>
</nav>

{% include software_catalog.html %}

## Educational software and materials {#education}

<p class="section-intro">Open examples, assignments, and small tools for learning data mining, artificial intelligence, reinforcement learning, and programming.</p>

<div class="software-grid education-grid">
  <article class="software-card">
    <div class="software-card-heading"><h3>Data Mining with R</h3><span class="software-platform">R · Book</span></div>
    <p>Documented R examples accompanying <em>Introduction to Data Mining</em> by Tan, Steinbach, Karpatne, and Kumar.</p>
    <ul class="software-links"><li><a href="https://mhahsler.github.io/Introduction_to_Data_Mining_R_Examples/book/">Read online</a></li><li><a href="https://github.com/mhahsler/Introduction_to_Data_Mining_R_Examples">GitHub</a></li></ul>
  </article>

  <article class="software-card">
    <div class="software-card-heading"><h3>Artificial Intelligence</h3><span class="software-platform">Python · Course</span></div>
    <p>Lecture material, compact code examples, and assignments based on <em>Artificial Intelligence: A Modern Approach</em>.</p>
    <ul class="software-links"><li><a href="https://github.com/mhahsler/CS7320-AI">GitHub</a></li></ul>
  </article>

  <article class="software-card">
    <div class="software-card-heading"><h3>Reinforcement Learning</h3><span class="software-platform">Python · Course</span></div>
    <p>Teaching material following Sutton and Barto's <em>Reinforcement Learning: An Introduction</em>.</p>
    <ul class="software-links"><li><a href="https://github.com/mhahsler/Introduction_to_Reinforcement_Learning">GitHub</a></li></ul>
  </article>

  <article class="software-card">
    <div class="software-card-heading"><h3>gym-classics2</h3><span class="software-platform">Python</span></div>
    <p>Classic discrete finite Markov decision processes for reinforcement-learning experiments and instruction.</p>
    <ul class="software-links"><li><a href="https://github.com/mhahsler/gym-classics2">GitHub</a></li></ul>
  </article>

  <article class="software-card">
    <div class="software-card-heading"><h3>Small teaching tools</h3><span class="software-platform">R · C++</span></div>
    <p>Distribution-fitting examples and Gridhunt2, a small game for teaching object-oriented programming concepts.</p>
    <ul class="software-links"><li><a href="https://github.com/mhahsler/fit_dist">fit_dist</a></li><li><a href="{{ '/SMU/CS1342/gridhunt2/' | relative_url }}">Gridhunt2</a></li></ul>
  </article>
</div>

## Archived projects

<p class="section-intro">These projects remain available for reproducibility and historical use but are no longer the recommended starting point for new work.</p>

<div class="software-archive">
  {%- for project in site.data.software_projects.archived -%}
  <article>
    <h3><a href="{{ project.url }}">{{ project.name }}</a></h3>
    <p>{{ project.description }}</p>
  </article>
  {%- endfor -%}
</div>
