---
layout: page
title: Teaching
permalink: /teaching/
description: Current and previous courses taught by Michael Hahsler in artificial intelligence, reinforcement learning, data mining, and computer science.
---

<section class="teaching-hero" aria-labelledby="teaching-introduction">
  <div>
    <p class="profile-eyebrow">Artificial intelligence · Data science · Computer science</p>
    <h1 id="teaching-introduction">Learning through concepts, code, and experimentation</h1>
    <p class="teaching-lede">I teach courses in artificial intelligence, reinforcement learning, data mining, and computer science, with an emphasis on connecting foundational ideas to practical implementations and reproducible experiments.</p>
  </div>
</section>

## Current courses — {{ site.data.profile.current_term }} {#current-courses}

<div class="teaching-current-grid">
{% for course in site.data.profile.current_courses %}
  <article class="teaching-course-card">
    <p class="project-focus">{{ course.code }} · Lyle School of Engineering</p>
    <h3>{{ course.title }}</h3>
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
{% for resource in site.data.teaching_resources %}
  <article class="teaching-resource-card">
    <p class="project-focus">{{ resource.focus | escape }}</p>
    <h3>{{ resource.name | escape }}</h3>
    {{ resource.description | markdownify }}
    <p class="teaching-card-link">{% for link in resource.links %}{% assign first_char = link.url | slice: 0, 1 %}<a href="{% if first_char == '/' %}{{ link.url | relative_url }}{% else %}{{ link.url | escape }}{% endif %}">{{ link.label | escape }}</a>{% unless forloop.last %} · {% endunless %}{% endfor %}</p>
  </article>
{% endfor %}
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
