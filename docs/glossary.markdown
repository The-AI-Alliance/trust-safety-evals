---
sitemap: false
permalink: /glossary/
redirect_to: https://the-ai-alliance.github.io/glossary/glossary/
---
{% comment %}
A "classic" redirect page, used instead of the normal Jekyll convention for redirect
pages because we could not get that approach to work for redirecting to another website,
as opposed to a different page in the same site.
{% endcomment %}
<!DOCTYPE html>
<html>
<head>
	<link rel="canonical" href="{{ page.redirect_url }}"/>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="refresh" content="0;url={{ page.redirect_to }}" />
</head>
<body>
    <h1>Redirecting...</h1>
    <a href="{{ page.redirect_to }}">Click here if you are not redirected.<a>
    <script>location='{{ page.redirect_to }}'</script>
</body>
</html>
