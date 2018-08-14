---
title: "PUBLICATION"
bg: white
color: dark
fa-icon: book
years: [2018, 2017, 2016, 2015, 2014, 2013, 2012, 2008]
---

<!-- <p>
<a href="https://scholar.google.com/citations?user=ZF7iS6UAAAAJ&hl=en">
  <i  class="ai ai-google-scholar fa-1x"></i>
   Google Scholar
</a>
</p> -->
## -submitted/preprint-

{% bibliography -q @unpublished %}

{% for y in page.years %}
  <h3 class="year"><font size="+3">-{{y}}-</font></h3>
  {% bibliography  -q !@unpublished[year={{y}}] %}
{% endfor %}
