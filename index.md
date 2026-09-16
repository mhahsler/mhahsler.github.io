---
layout: home
list_title: News
description: Academic homepage of Michael Hahsler, covering AI and data mining research, open-source software, teaching, students, and news.
---

{% include notice.md %}


<section class="profile-hero" aria-labelledby="profile-name">
  <div class="profile-photo-wrap">
    <img class="profile-photo"
         src="{{ '/images/hahsler_2020_small.jpg' | relative_url }}"
         alt="Portrait of Michael Hahsler" />
  </div>

  <div class="profile-copy">
    <p class="profile-eyebrow">Artificial intelligence · Optimization · Data science</p>
    <h1 id="profile-name">Michael Hahsler</h1>
    <p class="profile-title">{{ site.data.profile.position }} at {{ site.data.profile.institution }}</p>

    <p>
I develop machine-learning, statistical, and optimization methods for artificial intelligence and data science. My work emphasizes reproducible research through open-source software, including more than 15 widely used R packages. I also serve as an associate editor of the <a href="https://www.jstatsoft.org/">Journal of Statistical Software</a>.</p>

<p class="profile-links"><strong>Profiles:</strong> <a href="https://scholar.google.com/citations?user=uUg1IykAAAAJ">Google Scholar</a> · <a href="{{ site.data.profile.orcid }}">ORCID</a> · <a href="https://github.com/mhahsler/">GitHub</a> · <a href="https://www.linkedin.com/in/mhahsler">LinkedIn</a> · <a href="https://mhahsler.r-universe.dev/packages">R-universe</a> · <a href="https://www.researchgate.net/profile/Michael_Hahsler/">ResearchGate</a> · <a href="https://stackoverflow.com/users/3820837/michael-hahsler">StackOverflow</a></p>


    <div class="profile-actions" aria-label="Explore this site">
      <a class="button" href="{{ '/research/' | relative_url }}">Research</a>
      <a class="button" href="{{ '/publications/' | relative_url }}">Publications</a>
      <a class="button" href="{{ '/software/' | relative_url }}">Software</a>
      <a class="button" href="{{ '/teaching/' | relative_url }}">Teaching</a>
      <a class="button" href="{{ '/students/' | relative_url }}">Students</a>
      <a class="button" href="{{ '/docs/hahsler_short_bio.pdf' | relative_url }}">Short bio</a>
      <a class="button" href="{{ '/docs/hahsler_cv_full.pdf' | relative_url }}">CV</a>
    </div>
</div>
</section>

<section class="profile-highlights" aria-label="Professional highlights">
  <article class="highlight-card">
    <h2>Open-source software</h2>
    <p>I am lead developer and maintainer of several 
widely used open-source R and Python tools that turn research in data mining, machine learning, and artificial intelligence into practical software.</p>
  </article>
  <article class="highlight-card">
    <h2>Research and students</h2>
    <p>My research spans machine learning, combinatorial optimization, healthcare analytics, and bioinformatics. 
        Read more about my
        <a href="{{ '/research/' | relative_url }}">research</a>, 
        <a href="{{ '/publications/' | relative_url }}">published work</a>, and
        <a href="{{ '/students/' | relative_url }}">students</a>.</p>
  </article>
  <article class="highlight-card">
    <h2>Contact</h2>
    <p><a href="{{ site.data.profile.department_url }}">{{ site.data.profile.department }}</a><br />{{ site.data.profile.school }}<br /><a href="{{ site.data.profile.office_map }}">{{ site.data.profile.office }}</a><br /> Office hours: {{ site.data.profile.office_hours }}<br />{{ site.data.profile.email_display }}</p>
  </article>
</section>


{% include flagship_projects.html show_all=true %}

<!-- News come next  -->
