<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DevOps Hub · Workspace</title>
  <link rel="stylesheet" href="${contextPath}/resources/css/devops-hub.css">
</head>
<body>
<div class="app-shell">
  <aside class="sidebar" id="sidebar">
    <a class="brand" href="${contextPath}/welcome"><span class="brand-mark">DH</span><span>DevOps <b>Hub</b><small>ENGINEERING WORKSPACE</small></span></a>
    <div class="nav-label">WORKSPACE</div>
    <a class="nav-link active" href="${contextPath}/welcome"><span>▦</span> Overview</a>
    <a class="nav-link" href="${contextPath}/index"><span>⌂</span> Explore</a>
    <a class="nav-link" href="${contextPath}/users"><span>♙</span> Team directory</a>
    <div class="nav-label">PLATFORM TOOLS</div>
    <a class="nav-link" href="${contextPath}/user/rabbit"><span>⇄</span> Message queue demo</a>
    <a class="nav-link" href="${contextPath}/user/elasticsearch"><span>⌕</span> Search demo</a>
    <div class="sidebar-bottom"><div class="status-dot"></div><span>All systems operational</span></div>
  </aside>
  <main class="main-area">
    <header class="topbar">
      <button class="icon-button mobile-menu" id="menuToggle" aria-label="Toggle navigation">☰</button>
      <div class="breadcrumbs">Workspace <span>/</span> Overview</div>
      <div class="top-actions">
        <button class="icon-button" id="themeToggle" aria-label="Toggle color theme" title="Toggle theme">◐</button>
        <div class="user-chip"><span class="avatar"><c:out value="${pageContext.request.userPrincipal.name}"/></span><span><b><c:out value="${pageContext.request.userPrincipal.name}"/></b><small>Developer account</small></span></div>
        <a class="text-link" href="#" onclick="document.getElementById('logoutForm').submit();return false;">Sign out</a>
      </div>
      <form id="logoutForm" action="${contextPath}/logout" method="post"><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"></form>
    </header>
    <section class="page-content">
      <div class="welcome-row"><div><div class="eyebrow">YOUR ENGINEERING SPACE</div><h1>Good to see you, <c:out value="${pageContext.request.userPrincipal.name}"/>.</h1><p class="muted">A focused place to explore tools, collaborate and keep your delivery workflow moving.</p></div><a class="button button-primary" href="${contextPath}/user/${pageContext.request.userPrincipal.name}">Edit profile <span>↗</span></a></div>
      <div class="hero-panel"><div class="hero-copy"><span class="pill"><i></i> DEVOPS HUB</span><h2>Build better.<br><em>Ship confidently.</em></h2><p>Your engineering workspace for collaboration, platform tools and continuous improvement.</p><a class="hero-link" href="${contextPath}/index">Explore the platform <span>→</span></a></div><div class="hero-art" aria-hidden="true"><div class="orbit orbit-one"></div><div class="orbit orbit-two"></div><div class="core">DH</div><span class="float-card card-a">CI/CD <b>↗</b></span><span class="float-card card-b">☸ Kubernetes</span><span class="float-card card-c">∞ Automation</span></div></div>
      <div class="section-heading"><div><div class="eyebrow">AT A GLANCE</div><h2>Your workspace</h2></div><span class="muted tiny">Quick access</span></div>
      <div class="stat-grid">
        <article class="stat-card"><span class="stat-icon violet">⌘</span><span class="stat-label">Platform</span><strong>DevOps Hub</strong><small>Engineering workspace</small></article>
        <article class="stat-card"><span class="stat-icon cyan">♙</span><span class="stat-label">Signed in as</span><strong><c:out value="${pageContext.request.userPrincipal.name}"/></strong><small>Your active account</small></article>
        <article class="stat-card"><span class="stat-icon green">↗</span><span class="stat-label">Toolbox</span><strong>Explore tools</strong><small>Messaging and search demos</small></article>
      </div>
      <div class="section-heading"><div><div class="eyebrow">GET STARTED</div><h2>Explore your tools</h2></div></div>
      <div class="tool-grid">
        <a class="tool-card" href="${contextPath}/user/rabbit"><span class="tool-icon orange">⇄</span><div><h3>Message queue</h3><p>Try the RabbitMQ integration demo and publish sample messages.</p><span class="card-cta">Open tool →</span></div></a>
        <a class="tool-card" href="${contextPath}/user/elasticsearch"><span class="tool-icon blue">⌕</span><div><h3>Search service</h3><p>Explore the Elasticsearch integration available in this project.</p><span class="card-cta">Open tool →</span></div></a>
        <a class="tool-card" href="${contextPath}/users"><span class="tool-icon pink">♙</span><div><h3>Team directory</h3><p>Browse registered accounts and manage the user directory.</p><span class="card-cta">View directory →</span></div></a>
      </div>
      <footer class="footer"><span>© DevOps Hub</span><span>Made for learning, building and shipping.</span></footer>
    </section>
  </main>
</div>
<script src="${contextPath}/resources/js/devops-hub.js"></script>
</body></html>
