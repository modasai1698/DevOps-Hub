(function () {
  "use strict";
  var root = document.documentElement;
  var saved = null;
  try { saved = localStorage.getItem("devops-hub-theme"); } catch (e) {}
  var preferred = window.matchMedia && window.matchMedia("(prefers-color-scheme: light)").matches ? "light" : "dark";
  root.setAttribute("data-theme", saved || preferred);
  var toggle = document.getElementById("themeToggle");
  if (toggle) toggle.addEventListener("click", function () {
    var next = root.getAttribute("data-theme") === "dark" ? "light" : "dark";
    root.setAttribute("data-theme", next);
    try { localStorage.setItem("devops-hub-theme", next); } catch (e) {}
  });
  var menu = document.getElementById("menuToggle");
  var sidebar = document.getElementById("sidebar");
  if (menu && sidebar) menu.addEventListener("click", function () { sidebar.classList.toggle("open"); });
  document.addEventListener("click", function (event) {
    if (sidebar && sidebar.classList.contains("open") && !sidebar.contains(event.target) && event.target !== menu) sidebar.classList.remove("open");
  });
}());
