---
layout: academic
title: "Curriculum vitae"
description: "Education, research experience, skills, and academic service."
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

<div class="cv-body" markdown="1">

Contact
======
- [Email](mailto:jyyd23@mails.tsinghua.edu.cn)

Education
======
 - **Ph.D. in Safety Science and Engineering**, School of Safety Science, Tsinghua University, Beijing, China  
  **09/2020 – 06/2026**  
  - **Dissertation:** “Research on the Transport Evolution and Quantitative Risk of Hazardous Substances”.  
  - **Supervisor:** Assistant Professor Xiaole Zhang.  
  *(Direct-entry Ph.D.; transferred from the M.Sc. track — master’s degree not conferred.)*

- **B.Sc. in Safety Engineering**, School of Emergency Management and Safety Engineering, China University of Mining and Technology (Beijing), Beijing, China  
  **09/2016 – 06/2020**  
  - **Dissertation:** “Influence of open and closed windows on the vertical spread characteristics of fire”.  
  - **Supervisor:** Professor Wei Zhao.


Research Experience
======
My research includes: **AI4Safety** (the application of machine learning & deep learning to physical-world public-safety problems such as emergency management and disaster response — *not* cybersecurity), **atmospheric pollutant diffusion prediction**, **data assimilation for hazardous-chemical leakage forecasting**, and **probabilistic risk analysis**. 


* **Atmospheric transport and quantitative risk of ultra-fine particles** *(09/2023 - present)*
  - **ML Model:** Developed a stacked ensemble machine learning framework (Stem-PNC) integrating data-driven and physicochemical models to simulate ultrafine particle (UFP) number concentrations at high spatiotemporal resolution (1 km; 1 hour).
  - **Risk Analysis:** Enabled regional-scale UFP exposure assessment and health risk evaluation, providing new insights into environmental pollutant impacts.
  - Articles have been published in [**Nature Communications**](https://www.nature.com/articles/s41467-025-56581-8).


* **Data Assimilation-Driven Environmental Impact Assessment Technology for Hazardous Chemical Leakage** *(09/2023 - present)*
  - **Rapid Prediction Model:** Developed a deep learning-based model for real-time forecasting of emergency scenarios using meteorological data.
  - **Data Assimilation with Deep Learning:** Use a deep learning surrogate model to update and correct predictions through sensor data assimilation.
  - **Low-Cost Sensor Network & Web Platform:** Established a low-cost sensor network and a web-based system for real-time data collection, prediction, and model calibration.
  - Achieved applied outcomes with two registered *software copyrights*.
  - Research from this project was published in [**Building and Environment**](https://doi.org/10.1016/j.buildenv.2026.114797).

* **Food Security Supervision Model Design** *(09/2021-2023/09)*
  - Built a big-data-driven supervisory system for grain storage safety, combining statistical analysis, predictive modeling, and clustering methods.
  - Use Neo4j graph database for relationship mining, and apply natural language processing (NLP) for sentiment analysis and text summarisation.
  - Articles have been published in [*Journal of Safety Science and Resilience*](https://www.sciencedirect.com/science/article/pii/S2666449622000500?via%3Dihub).

Publications
======
<div class="research-cards cv-research-cards" markdown="0">
{% assign ordered_publications = site.publications | sort: 'publication_sort' %}
{% for post in ordered_publications %}
  {% include research-card.html %}
{% endfor %}
</div>
  
Skills
======
* Models: 
  * Micro-scale dispersion model system GRAMM–GRAL
* Computer skills:
  * Python (Pandas, scikit-learn, Numpy, Geopandas, PyTorch, TensorFlow, Django)
  * MATLAB
  * C++
  * SQL
  * Neo4j
  * ArcGIS
  * 3ds Max
  * Arduino


Presentations
======
  <p><a href="/presentations/">Conference papers and poster presentations</a></p>
  
  
Service and leadership
======
* *2024.09-2025.09*	**Vice President, Graduate Student Union**, School of Safety Science and Engineering, Tsinghua University
  * Led student-union academic initiatives and coordinated cross-departmental events; organized a school-level public lecture attracting 300+ attendees and managed all logistics, publicity, and follow-up materials. (Event planning, stakeholder coordination)
* *2024.09-2025.09*	**Head, Academic Department**, Department of Engineering Physics, Tsinghua University
  * Organized and chaired regular research discussion groups (~10–15 participants each) to foster peer feedback and collaborative projects; coordinated invited talks and reading sessions. (Community building, seminar curation)
* *2024.09-2025.09*	**Class President**, Ph.D. Class 2024 (Year-One Cohort), School of Safety Science and Engineering, Tsinghua University (Awarded “Advanced Graduate Collective of Tsinghua University, 2024”)
* *2023.09-2024.09*	**Class President**, Ph.D. Class 231, Department of Engineering Physics, Tsinghua University


Prizes, awards, fellowships
======
* **Deng Jiaxian Scholarship (邓稼先奖学金)**, Tsinghua University, **2025**.
* **First-Class Comprehensive Scholarship (综合一等奖学金)**, Tsinghua University, **2025**.
  - Participated in the 2025 Tsinghua University Student Awards Ceremony (学生表彰大会).
* Departmental Comprehensive Scholarship, School of Safety Science and Engineering, Tsinghua University, 2024.
* National Scholarship Representative (Top 1%)
Special Prize Scholarship, China University of Mining and Technology (Beijing), 2020.
* Outstanding Graduate (Top 2%), China University of Mining and Technology (Beijing), 2020.
* Excellent Thesis Award, China University of Mining and Technology (Beijing), 2020.
* First Prize (Beijing Division), China Undergraduate Mathematical Contest in Modeling (MCM), 2018.
* Meritorious Winner, Mathematical Contest in Modeling (MCM, USA) (Top 8%), 2018.

</div>
