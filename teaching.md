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
    <nav class="profile-actions" aria-label="Explore teaching">
      <a class="button" href="#current-courses">Current courses</a>
      <a class="button" href="#teaching-resources">Teaching resources</a>
      <a class="button" href="#course-history">Course history</a>
    </nav>
  </div>
</section>

## Current courses — {{ site.data.profile.current_term }} {#current-courses}

<div class="teaching-current-grid">
{% for course in site.data.profile.current_courses %}
  <article class="teaching-course-card">
    <p class="project-focus">{{ course.code }} · Lyle School of Engineering</p>
    <h3><a href="{{ course.url }}">{{ course.title }}</a></h3>
    <p>Course materials, examples, and exercises are available on the course website.</p>
    <p class="teaching-card-link"><a href="{{ course.url }}">Visit course website</a></p>
  </article>
{% endfor %}
</div>

<aside class="teaching-contact">
  <strong>Questions or office hours?</strong>
  <span>Contact information is on my <a href="{{ '/' | relative_url }}">home page</a>. Office hours: {{ site.data.profile.office_hours }}.</span>
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
    <p>A video series covering the foundations of programming and data analysis with R.</p>
  </div>
  <a class="button" href="https://www.youtube.com/playlist?list=PLicKatIwG4NT149atnhVZg5TMW76WFx6p">Watch the playlist</a>
</section>

## Course history {#course-history}

<p class="section-intro">Courses and professional training I have taught throughout my academic career.</p>

<div class="teaching-history">
  <section aria-labelledby="history-smu">
    <h3 id="history-smu"><a href="https://www.smu.edu/lyle">Lyle School of Engineering, Southern Methodist University</a></h3>
    <ul class="teaching-history-list">
      <li><strong>DS 1300: A Practical Introduction to Data Science</strong><span>Spring 2019, Fall 2019, Spring 2020, Fall 2020, Spring 2021, Fall 2021, Spring 2022, Fall 2022, Spring 2023, Fall 2023</span></li>
      <li><strong>CS 1341: Principles of Computer Science</strong><span>Fall 2009, Fall 2010</span></li>
      <li><strong>CS 1342: Programming Concepts</strong><span>Spring 2010, Spring 2011, Fall 2011</span></li>
      <li><strong>CS 2341: Data Structures</strong><span>Fall 2022, Spring 2023, Fall 2023, Spring 2024</span></li>
      <li><strong>OREM 2360: Engineering Economy</strong><span>Fall 2012, Spring 2013, Fall 2013, Spring 2014, Fall 2014, Spring 2015, Fall 2015, Spring 2016, Spring 2020</span></li>
      <li><strong>OREM 3309: Information Engineering</strong><span>Fall 2016, Spring 2017, Fall 2017, Spring 2018, Fall 2018, Fall 2021, Spring 2023, Fall 2023</span></li>
      <li><strong>OREM 3363: Discrete Event Simulation</strong><span>Spring 2021, Spring 2022</span></li>
      <li><strong>CS 5/7320: Artificial Intelligence</strong><span>Fall 2020, Spring 2021, Fall 2021, Spring 2022, Fall 2022, Fall 2023, Spring 2024, Fall 2024, Spring 2025, Fall 2025, Spring 2026, Fall 2026</span></li>
      <li><strong>CS 5/7329: Reinforcement Learning</strong><span>Spring 2026, Fall 2026</span></li>
      <li><strong>CS 5/7331: Data Mining</strong><span>Spring 2013, Spring 2014, Fall 2014, Fall 2015, Spring 2016, Fall 2016, Fall 2017, Spring 2018, Fall 2018, Summer 2020, Fall 2020, Spring 2021, Fall 2024, Spring 2025, Fall 2025</span></li>
      <li><strong>CS 5/7337: Information Retrieval and Web Search</strong><span>Spring 2012</span></li>
      <li><strong>CS 5/7342: Concepts of Language Theory and Their Applications</strong><span>Spring 2009 — prepared but canceled</span></li>
      <li><strong>CS 7343: Operating Systems and System Software</strong><span>Executive Program, Spring 2009</span></li>
      <li><strong>OREM 5/7361: Computer Simulation Techniques</strong><span>Fall 2019</span></li>
      <li><strong>CS 8331: Advanced Data Mining</strong><span>Spring 2012, Spring 2015, Spring 2017, Spring 2019, Fall 2021</span></li>
      <li><strong>CS 8091: Advanced Scientific Computing with R</strong><span>Fall 2011</span></li>
      <li><strong>CS 8098: Computer Science Seminar</strong><span>Fall 2009, Spring 2010, Fall 2010, Spring 2011, Fall 2011, Spring 2012</span></li>
    </ul>
  </section>

  <section aria-labelledby="history-wu">
    <h3 id="history-wu"><a href="https://www.wu.ac.at">Vienna University of Economics and Business</a></h3>
    <p class="teaching-history-note">Courses taught in German.</p>
    <ul class="teaching-history-list">
      <li><strong>Grundlagen der Informationswirtschaft, PI</strong><span>WS2008, SS2009</span></li>
      <li><strong>IT-Praktikum mit Bakkalaureatsarbeit, PI</strong><span>SS2005, SS2006, SS2007, WS2008, SS2009</span></li>
      <li><strong>Grundzüge der Programmierung mit Java, LVP/PI</strong><span>WS2002, SS2003, WS2003, SS2004, WS2004, SS2005, WS2005, SS2006, WS2006, SS2007</span></li>
      <li><strong>Rechnerpraktikum aus Programmierung (Java), PI</strong><span>WS2003, WS2004, WS2005, WS2006</span></li>
      <li><strong>Informationsmanagement in Organisationen I / Informationswirtschaft 2, PI/VO</strong><span>SS2003, SS2004, SS2005, WS2005, SS2006, WS2006, SS2007</span></li>
      <li><strong>Seminar aus Informationswirtschaft, SE/PI</strong><span>With W. Janko, S. Koch; SS2000, WS2000, WS2001, SS2002, WS2002, SS2004, SS2005, SS2006, SS2007</span></li>
      <li><strong>Prozessorientierte Informationswirtschaft, SE</strong><span>With W. Janko, E. Bernroider, S. Koch, V. Stix; WS2006, SS2007</span></li>
      <li><strong>Current Topics in Information Business, SE</strong><span>SS2003</span></li>
      <li><strong>Einführung in das Objektorientierte Programmieren mit Java, AG</strong><span>SS2002</span></li>
      <li><strong>Anwendungsprojekt: Objektorientierte Programmieren mit C++/Java, PS</strong><span>SS2001, WS2001, WS2002</span></li>
      <li><strong>Einführung in das Objektorientierte Programmieren mit C++, AG</strong><span>With G. Rudorfer; SS1999, WS1999, SS2000, WS2000, SS2001</span></li>
      <li><strong>Elektronische Datenverarbeitung: Markup-Konzept, PS</strong><span>WS1998</span></li>
    </ul>
  </section>

  <section aria-labelledby="history-other">
    <h3 id="history-other">Other universities</h3>
    <ul class="teaching-history-list">
      <li><strong>COAP 2120: Data Handling on the Web</strong><span><a href="http://webster.ac.at/">Webster University, Vienna Campus</a>; Spring II 2002</span></li>
      <li><strong>COAP 3110: Interactive Site Development</strong><span><a href="http://webster.ac.at/">Webster University, Vienna Campus</a>; Fall II 2002</span></li>
      <li><strong>Recommendation Tools</strong><span><a href="https://www.ieseg.fr/en/">IÉSEG School of Management</a>; May 2016</span></li>
    </ul>
  </section>

  <section aria-labelledby="history-training">
    <h3 id="history-training">Professional training</h3>
    <ul class="teaching-history-list">
      <li><strong><a href="{{ '/SMU/DS_Workshop_Intro_R/' | relative_url }}">Data Science Workshop Series: Introduction to R Programming</a></strong><span>OIT, SMU</span></li>
      <li><strong>R Introductory Session</strong><span>Department of Computer Science, SMU; March 2009</span></li>
      <li><strong>Seminar UML-Basics: Einführung in Objekt-Orientierte Modellierung mit der Unified Modeling Language</strong><span>ADV Arbeitsgemeinschaft für Datenverarbeitung, Vienna; 2000 and 2001</span></li>
      <li><strong>Einführung in den Einsatz von Objekt-Orientierung mit C++</strong><span>ADV Arbeitsgemeinschaft für Datenverarbeitung, Vienna; 2000</span></li>
    </ul>
  </section>
</div>
