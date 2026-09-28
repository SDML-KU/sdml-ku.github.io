---
title: People
permalink: /people/
redirect_from:
  - /team/
  - /members/anh-tong/
  - /members/vo-huu-anh-tuan/
  - /members/nguyen-van-an/
  - /members/lee-seung-ha/
---

{% assign groups = "pi:Principal Investigator|phd:Ph.D. Students|ms:M.S. Students|intern:Research Interns|alumni:Alumni" | split: "|" %}
{% for g in groups %}
{% assign parts = g | split: ":" %}
{% assign people = site.data.members | where: "role", parts[0] %}
{% if people.size > 0 %}
## {{ parts[1] }}
<div class="members">
{% for m in people %}{% include member.html member=m %}{% endfor %}
</div>
{% endif %}
{% endfor %}

<figure class="lab-photo">
  <img src="{{ '/images/lab-photo.png' | relative_url }}" alt="SDML lab members" loading="lazy">
</figure>
