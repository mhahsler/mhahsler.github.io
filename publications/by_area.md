---
layout: page
title: Publications By Area
permalink: /publications/by_area/
description: Michael Hahsler's scholarly publications organized by research area, including data mining, machine learning, optimization, and bioinformatics.
---

<section class="publications-hero" aria-labelledby="publications-introduction">
  <div>
    <p class="profile-eyebrow">Artificial intelligence · Data mining · Optimization</p>
    <h2 id="publications-introduction">Research contributions from methods to applications</h2>
    <p class="publications-lede">My publications span artificial intelligence, machine learning, data mining, optimization, and applied data science, with an emphasis on reproducible methods and open-source software.</p>
    <nav class="profile-actions" aria-label="Explore publications">
      <a class="button" href="{{ '/publications/' | relative_url }}">Browse by publication date</a>
      <a class="button button-primary" href="{{ '/publications/by_area/' | relative_url }}" aria-current="page">Browse by research area</a>
      <a class="button" href="https://scholar.google.com/citations?user=uUg1IykAAAAJ">Google Scholar</a>
      <a class="button" href="{{ '/talks/' | relative_url }}">Talks</a>
    </nav>
  </div>
</section>

<div class="publications-by-area" markdown="1">
{% include publications/publications_by_field.md %}
</div>
