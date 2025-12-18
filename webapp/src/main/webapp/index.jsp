<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>DevOps Engineer | Portfolio</title>

<style>
/* ================= GLOBAL ================= */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Segoe UI", Arial, sans-serif;
}

body {
  background: radial-gradient(circle at top, #0a0f1f, #02040a);
  color: #fff;
  overflow-x: hidden;
}

/* ================= BACKGROUND PIPELINE ================= */
.pipeline {
  position: fixed;
  inset: 0;
  background:
    linear-gradient(90deg, rgba(0,229,255,0.08) 1px, transparent 1px),
    linear-gradient(rgba(0,229,255,0.08) 1px, transparent 1px);
  background-size: 80px 80px;
  animation: moveGrid 30s linear infinite;
  z-index: -2;
}

@keyframes moveGrid {
  from { background-position: 0 0; }
  to { background-position: 800px 800px; }
}

/* ================= HEADER ================= */
header {
  padding: 40px;
  text-align: center;
}

header h1 {
  font-size: 48px;
  background: linear-gradient(90deg, #00e5ff, #6cff95);
  -webkit-background-clip: text;
  color: transparent;
}

header p {
  margin-top: 10px;
  font-size: 18px;
  opacity: 0.8;
}

/* ================= ORBIT ================= */
.orbit-container {
  position: relative;
  width: 420px;
  height: 420px;
  margin: 80px auto;
}

.orbit {
  position: absolute;
  inset: 0;
  border-radius: 50%;
  animation: rotate 25s linear infinite;
}

.orbit:nth-child(2) { animation-duration: 35s; }
.orbit:nth-child(3) { animation-duration: 45s; }

@keyframes rotate {
  from { transform: rotate(0deg); }
  to { transform: rotate(360deg); }
}

.tech {
  position: absolute;
  width: 42px;
  height: 42px;
  filter: drop-shadow(0 0 12px #00e5ff);
}

.tech svg {
  width: 100%;
  height: 100%;
}

/* ================= ICON POSITIONS ================= */
.tech:nth-child(1){top:-10px;left:50%}
.tech:nth-child(2){top:25%;right:-10px}
.tech:nth-child(3){bottom:-10px;left:50%}
.tech:nth-child(4){top:25%;left:-10px}
.tech:nth-child(5){top:50%;right:-10px}
.tech:nth-child(6){bottom:25%;right:-10px}
.tech:nth-child(7){bottom:25%;left:-10px}
.tech:nth-child(8){top:50%;left:-10px}
.tech:nth-child(9){top:-10px;right:25%}

/* ================= CENTER ================= */
.center {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}

.center div {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  background: radial-gradient(circle, #00e5ff, #005c7a);
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: bold;
  text-align: center;
  box-shadow: 0 0 40px #00e5ff;
}

/* ================= SECTIONS ================= */
section {
  max-width: 1000px;
  margin: 80px auto;
  padding: 20px;
  text-align: center;
}

section h2 {
  font-size: 32px;
  margin-bottom: 20px;
  color: #00e5ff;
}

section p {
  font-size: 18px;
  line-height: 1.7;
  opacity: 0.85;
}

/* ================= BUTTON ================= */
.btn {
  display: inline-block;
  margin-top: 30px;
  padding: 15px 40px;
  border-radius: 40px;
  background: linear-gradient(90deg, #00e5ff, #6cff95);
  color: #000;
  font-weight: bold;
  text-decoration: none;
  box-shadow: 0 0 30px #00e5ff;
  transition: transform .3s;
}

.btn:hover {
  transform: scale(1.1);
}

/* ================= FOOTER ================= */
footer {
  padding: 40px;
  text-align: center;
  opacity: 0.6;
}
</style>
</head>

<body>

<div class="pipeline"></div>

<header>
  <h1>DevOps Engineer</h1>
  <p>CI/CD • Cloud • Automation • Kubernetes • Infrastructure as Code</p>
</header>

<div class="orbit-container">

  <div class="orbit">
    <div class="tech"><svg fill="#FCC624" viewBox="0 0 256 256"><circle cx="128" cy="128" r="120"/></svg></div>
    <div class="tech"><svg fill="#fff" viewBox="0 0 24 24"><path d="M12 .5C5.7.5.5 5.7.5 12c0 5.1 3.3 9.4 7.9 10.9"/></svg></div>
    <div class="tech"><svg fill="#2496ED" viewBox="0 0 256 256"><rect x="32" y="112" width="192" height="80"/></svg></div>
    <div class="tech"><svg fill="#D24939" viewBox="0 0 256 256"><circle cx="128" cy="64" r="32"/></svg></div>
    <div class="tech"><svg fill="#EE0000" viewBox="0 0 256 256"><circle cx="128" cy="128" r="120"/></svg></div>
    <div class="tech"><svg fill="#7B42BC" viewBox="0 0 256 256"><rect x="40" y="40" width="80" height="80"/></svg></div>
    <div class="tech"><svg fill="#326CE5" viewBox="0 0 256 256"><circle cx="128" cy="128" r="120"/></svg></div>
    <div class="tech"><svg fill="#FF9900" viewBox="0 0 256 256"><path d="M64 144h128"/></svg></div>
    <div class="tech"><svg fill="#0078D4" viewBox="0 0 256 256"><polygon points="64,224 128,32 192,224"/></svg></div>
  </div>

  <div class="center">
    <div>CI / CD<br/>PIPELINE</div>
  </div>
</div>

<section>
  <h2>About Me</h2>
  <p>
    DevOps Engineer specializing in automated CI/CD pipelines, cloud-native
    infrastructure, Kubernetes orchestration, and DevSecOps practices.
  </p>
  <a class="btn" href="resume.pdf" download>Download Resume</a>
</section>

<footer>
  © 2025 DevOps Engineer Portfolio
</footer>

</body>
</html>

