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
  <p class="home-lead"><span class="intro-emoji" aria-hidden="true">👋</span> I'm <strong>Yudie Jianyao</strong>, a Ph.D. student at the <a href="https://www.ssafs.tsinghua.edu.cn/index.htm">School of Safety Science</a>, <a href="https://www.tsinghua.edu.cn/">Tsinghua University</a>. My research interests include probabilistic risk analysis, applications of machine learning in safety (<strong>AI4Safety</strong>), and deep learning for rapid reconstruction of gas dispersion.</p>
  <p class="home-bio"><span class="intro-emoji" aria-hidden="true">🎓</span> I am very fortunate to be advised by <a href="https://www.ssafs.tsinghua.edu.cn/en/info/1498/1021.htm"><strong>Prof. Xiaole Zhang</strong></a>. Under his guidance, I explore approaches to safety science, risk management, and real-time emergency response.</p>
  <p class="home-bio"><span class="intro-emoji" aria-hidden="true">🤝</span> I welcome collaboration, discussion, and questions from faculty, peers, and students. Please feel free to <a href="mailto:jyyd23@mails.tsinghua.edu.cn">reach out</a>.</p>
  <div class="home-topics" aria-label="Research interests"><span>AI for Safety</span><span>Atmospheric dispersion</span><span>Risk assessment</span></div>
</section>

{% assign ordered_publications = site.publications | sort: 'publication_sort' %}
<section class="home-section" aria-labelledby="papers-heading">
  <div class="home-section-heading"><h2 id="papers-heading">Publications</h2><a class="home-all-link" href="{{ '/publications/' | relative_url }}">More publications</a></div>
  {% assign home_records = ordered_publications | where: 'featured', true | where: 'category', 'manuscripts' %}
  <div class="research-cards home-publications">
  {% for post in home_records %}{% include research-card.html %}{% endfor %}
  </div>
</section>

<section class="home-section home-projects" aria-labelledby="projects-heading">
  <div class="home-section-heading"><h2 id="projects-heading">Research projects</h2></div>
  <article class="project-note"><h3>Atmospheric transport and quantitative risk of ultrafine particles</h3><p>Stacked machine learning for hourly, kilometre-scale exposure assessment, linking particle concentrations to population risk.</p><a href="https://doi.org/10.1038/s41467-025-56581-8"><em>Nature Communications</em></a> <span class="paper-year">2025</span></article>
  <article class="project-note"><h3>Data Assimilation-Driven Environmental Impact Assessment Technology for Hazardous Chemical Leakage</h3><p class="project-date">09/2023 – present</p><p>Deep learning for rapid dispersion prediction, sensor-informed data assimilation, and a low-cost monitoring platform. The project includes two registered software copyrights and research published in Building and Environment.</p><a href="https://doi.org/10.1016/j.buildenv.2026.114797"><em>Building and Environment</em></a> <span class="paper-year">2026</span></article>
  <article class="project-note"><h3>Food security supervision</h3><p>Statistical analysis, anomaly detection, and machine learning for grain storage safety supervision.</p><a href="https://doi.org/10.1016/j.jnlssr.2022.09.004"><em>Journal of Safety Science and Resilience</em></a> <span class="paper-year">2023</span></article>
</section>

{% include education-honors.html %}
