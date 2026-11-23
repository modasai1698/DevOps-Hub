<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign in · DevOps Hub</title><link rel="stylesheet" href="${contextPath}/resources/css/devops-hub.css"></head>
<body class="auth-page"><div class="auth-layout">
  <section class="auth-aside"><a class="brand brand-light" href="${contextPath}/index"><span class="brand-mark">DH</span><span>DevOps <b>Hub</b><small>ENGINEERING WORKSPACE</small></span></a>
    <div class="auth-message"><span class="pill pill-light"><i></i> YOUR WORKSPACE AWAITS</span><h1>Make room for<br><em>better delivery.</em></h1><p>A modern home for your engineering journey. Sign in and pick up where you left off.</p></div>
    <div class="auth-aside-foot">Build better. Ship confidently.</div>
  </section>
  <main class="auth-main"><button class="icon-button auth-theme" id="themeToggle" aria-label="Toggle theme">◐</button><div class="auth-card">
    <div class="eyebrow">WELCOME BACK</div><h2>Sign in to DevOps Hub</h2><p class="muted">Enter your account details to continue.</p>
    <c:if test="${not empty message}"><div class="notice notice-success"><c:out value="${message}"/></div></c:if>
    <c:if test="${not empty error}"><div class="notice notice-error"><c:out value="${error}"/></div></c:if>
    <form method="POST" action="${contextPath}/login" class="auth-form">
      <label for="username">Username</label><input id="username" name="username" type="text" autocomplete="username" placeholder="Your username" required>
      <label for="password">Password</label><input id="password" name="password" type="password" autocomplete="current-password" placeholder="Your password" required>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      <button class="button button-primary button-full" type="submit">Sign in <span>→</span></button>
    </form><p class="auth-switch">New to DevOps Hub? <a href="${contextPath}/registration">Create an account</a></p>
    <a class="back-link" href="${contextPath}/index">← Back to home</a>
  </div></main>
</div><script src="${contextPath}/resources/js/devops-hub.js"></script></body></html>
