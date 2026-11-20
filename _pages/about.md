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
  <p class="home-eyebrow">SAFETY SCIENCE · TSINGHUA UNIVERSITY</p>
  <h1 id="intro-heading">Machine learning for a<br><span>safer physical world.</span></h1>
  <p class="home-lead">I’m <strong>Yudie Jianyao</strong>. My research connects machine learning, atmospheric dispersion, and quantitative risk assessment to support public safety and emergency response.</p>
  <p class="home-bio">I work with <a href="https://www.ssafs.tsinghua.edu.cn/en/info/1498/1021.htm">Prof. Xiaole Zhang</a> at the School of Safety Science, Tsinghua University. I’m interested in turning complex environmental data into fast, useful predictions of real-world hazards.</p>
  <div class="home-topics" aria-label="Research interests"><span>AI for Safety</span><span>Atmospheric dispersion</span><span>Risk assessment</span></div>
  <nav class="home-contact" aria-label="Research profiles"><a class="home-button" href="mailto:jyyd23@mails.tsinghua.edu.cn">Get in touch</a><a href="https://scholar.google.com.hk/citations?user=FAt6AtMAAAAJ&amp;hl=en">Google Scholar</a><a href="https://www.researchgate.net/profile/Yudie-Jianyao-2">ResearchGate</a><a href="https://github.com/Jyyd">GitHub</a></nav>
</section>

<section class="home-section" aria-labelledby="papers-heading">
  <div class="home-section-heading"><div><p class="home-eyebrow">SELECTED WORK</p><h2 id="papers-heading">Journal articles</h2></div><a class="home-all-link" href="{{ '/publications/' | relative_url }}">All publications</a></div>
  <p class="home-section-note">Selected first-author research.</p>
  <div class="research-cards">
  {% for post in site.publications reversed %}
    {% if post.featured and post.category == 'manuscripts' %}
      {% include research-card.html %}
    {% endif %}
  {% endfor %}
  </div>
</section>

<section class="home-section" aria-labelledby="conferences-heading">
  <div class="home-section-heading"><div><p class="home-eyebrow">PRESENTING RESEARCH</p><h2 id="conferences-heading">Conference papers</h2></div><a class="home-all-link" href="{{ '/talks/' | relative_url }}">Talks &amp; presentations</a></div>
  <div class="research-cards">
  {% for post in site.publications reversed %}
    {% if post.featured and post.category == 'conferences' %}
      {% include research-card.html %}
    {% endif %}
  {% endfor %}
  </div>
</section>

<section class="home-section" aria-labelledby="research-heading">
  <div class="home-section-heading"><div><p class="home-eyebrow">RESEARCH FOCUS</p><h2 id="research-heading">From data to safer decisions</h2></div></div>
  <div class="home-focus-grid">
    <article><span class="focus-symbol" aria-hidden="true">◌</span><h3>Environmental exposure</h3><p>High-resolution models of ultrafine particles and population exposure.</p></article>
    <article><span class="focus-symbol" aria-hidden="true">≈</span><h3>Hazardous releases</h3><p>Fast dispersion prediction and sensor-informed data assimilation.</p></article>
    <article><span class="focus-symbol" aria-hidden="true">◇</span><h3>Risk &amp; supervision</h3><p>Data-driven methods for risk assessment, anomaly detection, and safety management.</p></article>
  </div>
</section>

<section class="home-section home-education" aria-labelledby="education-heading">
  <div class="home-section-heading"><div><p class="home-eyebrow">BACKGROUND</p><h2 id="education-heading">Education</h2></div><a class="home-all-link" href="{{ '/cv/' | relative_url }}">View CV</a></div>
  <div class="education-row"><span class="education-year">2020–2026</span><div><h3>Tsinghua University</h3><p>Ph.D. program in Safety Science and Engineering</p><p class="education-detail">Supervisor: Xiaole Zhang</p></div></div>
  <div class="education-row"><span class="education-year">2016–2020</span><div><h3>China University of Mining and Technology (Beijing)</h3><p>B.Sc. in Safety Engineering</p><p class="education-detail">Supervisor: Wei Zhao</p></div></div>
</section>
