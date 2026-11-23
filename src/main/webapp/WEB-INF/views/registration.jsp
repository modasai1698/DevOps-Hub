<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html><html lang="en"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create account · DevOps Hub</title><link rel="stylesheet" href="${contextPath}/resources/css/devops-hub.css"></head>
<body class="auth-page"><div class="auth-layout">
  <section class="auth-aside"><a class="brand brand-light" href="${contextPath}/index"><span class="brand-mark">DH</span><span>DevOps <b>Hub</b><small>ENGINEERING WORKSPACE</small></span></a>
    <div class="auth-message"><span class="pill pill-light"><i></i> START BUILDING</span><h1>Your next step<br>starts <em>here.</em></h1><p>Create your account and get access to your engineering workspace.</p></div>
    <div class="auth-aside-foot">One workspace. More possibilities.</div>
  </section>
  <main class="auth-main"><button class="icon-button auth-theme" id="themeToggle" aria-label="Toggle theme">◐</button><div class="auth-card">
    <div class="eyebrow">JOIN THE WORKSPACE</div><h2>Create your account</h2><p class="muted">A few details and you're ready to go.</p>
    <form:form method="POST" modelAttribute="userForm" class="auth-form">
      <spring:bind path="username"><div class="field-group ${status.error ? 'field-error' : ''}"><label for="username">Username</label><form:input path="username" id="username" type="text" placeholder="Choose a username" autocomplete="username" required="required"/><form:errors path="username" cssClass="field-message"/></div></spring:bind>
      <spring:bind path="userEmail"><div class="field-group ${status.error ? 'field-error' : ''}"><label for="userEmail">Email address</label><form:input path="userEmail" id="userEmail" type="email" placeholder="you@example.com" autocomplete="email" required="required"/><form:errors path="userEmail" cssClass="field-message"/></div></spring:bind>
      <spring:bind path="password"><div class="field-group ${status.error ? 'field-error' : ''}"><label for="password">Password</label><form:password path="password" id="password" placeholder="Create a password" autocomplete="new-password" required="required"/><form:errors path="password" cssClass="field-message"/></div></spring:bind>
      <spring:bind path="passwordConfirm"><div class="field-group ${status.error ? 'field-error' : ''}"><label for="passwordConfirm">Confirm password</label><form:password path="passwordConfirm" id="passwordConfirm" placeholder="Repeat your password" autocomplete="new-password" required="required"/><form:errors path="passwordConfirm" cssClass="field-message"/></div></spring:bind>
      <button class="button button-primary button-full" type="submit">Create account <span>→</span></button>
    </form:form><p class="auth-switch">Already registered? <a href="${contextPath}/login">Sign in</a></p><a class="back-link" href="${contextPath}/index">← Back to home</a>
  </div></main>
</div><script src="${contextPath}/resources/js/devops-hub.js"></script></body></html>
