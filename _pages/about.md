---
layout: homepage
permalink: /
title: "Yudie Jianyao"
author_profile: true
redirect_from:
  - /about/
  - /about.html
---
<section class="home-intro" aria-labelledby="intro-heading">
  <h1 id="intro-heading">About me</h1>
  <p class="home-lead">I'm <strong>Yudie Jianyao</strong>, a Ph.D. student at the <a href="https://www.ssafs.tsinghua.edu.cn/index.htm">School of Safety Science</a>, <a href="https://www.tsinghua.edu.cn/">Tsinghua University</a>. My research interests include probabilistic risk analysis, applications of machine learning in safety (<strong>AI4Safety</strong>), and generative models for rapid reconstruction of gas dispersion.</p>
  <p class="home-bio">I am very fortunate to be advised by <a href="https://www.ssafs.tsinghua.edu.cn/en/info/1498/1021.htm"><strong>Prof. Xiaole Zhang</strong></a>. Under his guidance, I explore approaches to safety science, risk management, and real-time emergency response.</p>
  <p class="home-bio">I welcome collaboration, discussion, and questions from faculty, peers, and students. Please feel free to <a href="mailto:jyyd23@mails.tsinghua.edu.cn">reach out</a>.</p>
  <div class="home-topics" aria-label="Research interests"><span>AI for Safety</span><span>Atmospheric dispersion</span><span>Risk assessment</span></div>
</section>

{% assign ordered_publications = site.publications | sort: 'publication_sort' %}
<section class="home-section" aria-labelledby="papers-heading">
  <div class="home-section-heading"><h2 id="papers-heading">Selected publications</h2><a class="home-all-link" href="{{ '/publications/' | relative_url }}">All publications</a></div>
  <div class="research-cards">
  {% for post in ordered_publications %}
    {% if post.featured and post.category == 'manuscripts' %}{% include research-card.html %}{% endif %}
  {% endfor %}
  </div>
</section>

<section class="home-section" aria-labelledby="conferences-heading">
  <div class="home-section-heading"><h2 id="conferences-heading">Presentations</h2><a class="home-all-link" href="{{ '/presentations/' | relative_url }}">All presentations</a></div>
  <div class="research-cards">
  {% for post in ordered_publications %}
    {% if post.featured and post.category == 'conferences' %}{% include research-card.html %}{% endif %}
  {% endfor %}
  </div>
</section>

<section class="home-section home-projects" aria-labelledby="projects-heading">
  <div class="home-section-heading"><h2 id="projects-heading">Selected projects</h2></div>
  <article class="project-note"><h3>Atmospheric transport and quantitative risk of ultrafine particles</h3><p>Stacked machine learning for hourly, kilometre-scale exposure assessment, linking particle concentrations to population risk.</p><a href="https://doi.org/10.1038/s41467-025-56581-8">Nature Communications · 2025</a></article>
  <article class="project-note"><h3>Data Assimilation-Driven Environmental Impact Assessment Technology for Hazardous Chemical Leakage</h3><p class="project-date">09/2023 – present</p><p>Deep learning for rapid dispersion prediction, sensor-informed data assimilation, and a low-cost monitoring platform. The project includes two registered software copyrights and research published in Building and Environment.</p><a href="https://doi.org/10.1016/j.buildenv.2026.114797">Building and Environment · 2026</a></article>
  <article class="project-note"><h3>Food security supervision</h3><p>Statistical analysis, anomaly detection, and machine learning for grain storage safety supervision.</p><a href="https://doi.org/10.1016/j.jnlssr.2022.09.004">Journal of Safety Science and Resilience</a></article>
</section>

<section class="home-section home-education" aria-labelledby="education-heading">
  <div class="home-section-heading"><h2 id="education-heading">Education</h2><a class="home-all-link" href="{{ '/cv/' | relative_url }}">View CV</a></div>
  <div class="education-row"><span class="education-year">2020–2026</span><div><h3>Tsinghua University</h3><p>Ph.D. program in Safety Science and Engineering</p><p class="education-detail">Supervisor: Xiaole Zhang</p></div></div>
  <div class="education-row"><span class="education-year">2016–2020</span><div><h3>China University of Mining and Technology (Beijing)</h3><p>B.Sc. in Safety Engineering</p><p class="education-detail">Supervisor: Wei Zhao</p></div></div>
</section>

{% include language-card.html %}

<section class="home-section" aria-labelledby="honors-heading">
  <div class="home-section-heading"><h2 id="honors-heading">Honors</h2><a class="home-all-link" href="{{ '/cv/' | relative_url }}">All honors</a></div>
  <div class="honor-row"><span>2025</span><div><h3>Deng Jiaxian Scholarship · 邓稼先奖学金</h3><p>Tsinghua University</p></div></div>
  <div class="honor-row"><span>2025</span><div><h3>First-Class Comprehensive Scholarship · 综合一等奖学金</h3><p>Tsinghua University</p></div></div>
</section>
