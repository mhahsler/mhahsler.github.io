---
layout: page
title: Software
permalink: /software/
description: Open-source R and Python software developed by Michael Hahsler for data mining, machine learning, optimization, and bioinformatics.
---

<section class="software-hero" aria-labelledby="software-introduction">
  <div>
    <p class="profile-eyebrow">Open source · Research · Education</p>
    <h1 id="software-introduction">Research methods made practical</h1>
    <p class="software-lede">I develop and maintain open-source software that turns research in data mining, machine learning, and optimization into reusable tools. Most projects are R packages, with selected Python interfaces, Bioconductor packages, and teaching resources.</p>
    <p class="profile-links software-platform-links"><strong>Platforms:</strong> <a href="https://mhahsler.r-universe.dev/packages">R-universe</a> · <a href="https://github.com/mhahsler/">GitHub</a> · <a href="https://pypi.org/user/mhahsler/">PyPI</a> · <a href="https://www.bioconductor.org/">Bioconductor</a></p>
    <nav class="profile-actions" aria-label="Find software by task">
      <a class="button" href="#pattern-mining">Pattern mining</a>
      <a class="button" href="#clustering-streams">Clustering and streams</a>
      <a class="button" href="#decisions-optimization">Decisions and optimization</a>
      <a class="button" href="#recommender-systems">Recommender systems</a>
      <a class="button" href="#bioinformatics">Bioinformatics</a>
      <a class="button" href="#education">Education</a>
    </nav>
  </div>
</section>

{% include software_catalog.html %}

## Educational software and materials {#education}

<p class="section-intro">Open examples, assignments, and small tools for learning data mining, artificial intelligence, reinforcement learning, and programming.</p>

{% include teaching_resources.html %}

## Archived projects

<p class="section-intro">These projects remain available for reproducibility and historical use but are no longer the recommended starting point for new work.</p>

<div class="software-grid">
  {%- for project in site.data.software_projects.archived -%}
  <article class="software-card">
    <div class="software-card-heading">
      <h3>{{ project.name }}</h3>
      <span class="software-platform">{{ project.platform }}</span>
    </div>
    <p>{{ project.description }}</p>
    <ul class="software-links" aria-label="{{ project.name }} links">
      {%- for link in project.links -%}
      <li><a href="{{ link.url }}">{{ link.label }}</a></li>
      {%- endfor -%}
    </ul>
  </article>
  {%- endfor -%}
</div>
