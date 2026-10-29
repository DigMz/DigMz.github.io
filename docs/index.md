---
layout: default
---

<h1 class="repo-grid-heading">Current Projects and Best Work</h1>
<div class="repo-grid">
  {% for repo in site.data.repos %}
  <a class="repo-card" href="{{ repo.url }}">
    <h3 class="repo-card__title">{{ repo.name }}</h3>
    <p class="repo-card__description">{{ repo.description }}</p>
  </a>
  {% endfor %}
</div>

<h2 class="post-list-heading" style="margin-top: 45px; margin-bottom: 30px;">Blog</h2>
<ul class="post-list">
  {% for post in site.posts %}
  <li>
    <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
    <h3>
      <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
    </h3>
  </li>
  {% endfor %}
</ul>
