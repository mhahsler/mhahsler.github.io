---
layout: page
title: Teaching
permalink: /teaching/
description: Current and previous courses taught by Michael Hahsler in artificial intelligence, reinforcement learning, data mining, and computer science.
---

<section class="teaching-hero" aria-labelledby="teaching-introduction">
  <div>
    <p class="profile-eyebrow">Artificial intelligence · Data science · Computer science</p>
    <h2 id="teaching-introduction">Learning through concepts, code, and experimentation</h2>
    <p class="teaching-lede">I teach courses in artificial intelligence, reinforcement learning, data mining, and computer science, with an emphasis on connecting foundational ideas to practical implementations and reproducible experiments.</p>
  </div>
</section>

## Current courses — {{ site.data.profile.current_term }} {#current-courses}

<div class="teaching-current-grid">
{% for course in site.data.profile.current_courses %}
  <article class="teaching-course-card">
    <p class="project-focus">{{ course.code }} · Lyle School of Engineering</p>
    <h3><a href="{{ course.url }}">{{ course.title }}</a></h3>
    <p>Course materials, examples, and exercises are available on the course website.</p>
    <p class="teaching-card-link"><a href="{{ course.url }}">See course material</a> · <a href="https://canvas.smu.edu">Canvas course page</a></p>
  </article>
{% endfor %}
</div>

<aside class="teaching-contact">
  <strong>Office hours:</strong>
  <span>{{ site.data.profile.office_hours }} at {{ site.data.profile.office }}.</span>
</aside>

## Teaching resources {#teaching-resources}

<p class="section-intro">Open lecture materials, code examples, exercises, and small teaching tools used in my classes.</p>

<div class="teaching-resource-grid">
  <article class="teaching-resource-card">
    <p class="project-focus">Python · Course materials</p>
    <h3>Artificial Intelligence</h3>
    <p>Slides, compact code examples, and exercises for an introduction to AI using Russell and Norvig's <em>Artificial Intelligence: A Modern Approach</em>.</p>
    <p class="teaching-card-link"><a href="https://mhahsler.github.io/Introduction_to_Artificial_Intelligence/">Explore AI materials</a></p>
  </article>

  <article class="teaching-resource-card">
    <p class="project-focus">Python · Course materials</p>
    <h3>Reinforcement Learning</h3>
    <p>Slides, code examples, and exercises for an introductory course in reinforcement learning.</p>
    <p class="teaching-card-link"><a href="https://mhahsler.github.io/Introduction_to_Reinforcement_Learning/">Explore RL materials</a></p>
  </article>

  <article class="teaching-resource-card">
    <p class="project-focus">R · Book companion</p>
    <h3>Data Mining</h3>
    <p>R examples accompanying <em>Introduction to Data Mining</em> by Tan, Steinbach, Karpatne, and Kumar.</p>
    <p class="teaching-card-link"><a href="https://mhahsler.github.io/Introduction_to_Data_Mining_R_Examples/">Explore data-mining materials</a></p>
  </article>

  <article class="teaching-resource-card">
    <p class="project-focus">C++ · Code examples</p>
    <h3>Data Structures</h3>
    <p>Code for an introductory data-structures course using Mark Allen Weiss's <em>Data Structures and Algorithm Analysis in C++</em>.</p>
    <p class="teaching-card-link"><a href="https://github.com/mhahsler/CS2341">View on GitHub</a></p>
  </article>

  <article class="teaching-resource-card">
    <p class="project-focus">Python · Reinforcement learning</p>
    <h3>gym-classics2</h3>
    <p>Classic discrete finite Markov decision processes and algorithms for teaching reinforcement learning.</p>
    <p class="teaching-card-link"><a href="https://github.com/mhahsler/gym-classics2">View on GitHub</a></p>
  </article>

  <article class="teaching-resource-card">
    <p class="project-focus">R · C++ · Small tools</p>
    <h3>Additional examples</h3>
    <p>Tools for fitting distributions and Gridhunt2, a game for teaching encapsulation, composition, inheritance, and polymorphism.</p>
    <p class="teaching-card-link"><a href="https://github.com/mhahsler/fit_dist">fit_dist</a> · <a href="{{ '/SMU/CS1342/gridhunt2/' | relative_url }}">Gridhunt2</a></p>
  </article>
</div>

<section class="teaching-video" aria-labelledby="video-lectures">
  <div>
    <p class="project-focus">Video lectures</p>
    <h3 id="video-lectures">Introduction to R Programming</h3>
    <p>A video series covering the foundations of programming and data analysis with R.<br/>
    Here is the  <a href="{{ '/SMU/DS_Workshop_Intro_R/' | relative_url }}">lecture material, code examples, and data.</a></p>
  </div>
  <a class="button" href="https://www.youtube.com/playlist?list=PLicKatIwG4NT149atnhVZg5TMW76WFx6p">Watch the playlist</a>
</section>

