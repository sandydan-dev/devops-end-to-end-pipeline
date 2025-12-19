<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= ROOT ================= */
:root {
  --bg: #020617;
  --card: #0b1220;
  --text: #e5e7eb;
  --muted: #94a3b8;
  --accent: #38bdf8;
  --green: #22c55e;
}

* { margin: 0; padding: 0; box-sizing: border-box; }
body {
  background: radial-gradient(circle at top, #020617, #000);
  color: var(--text);
  font-family: system-ui, sans-serif;
  overflow-x: hidden;
}

/* ================= STARS ================= */
.space {
  position: fixed;
  inset: 0;
  z-index: -1;
  background:
    radial-gradient(1px 1px at 20% 30%, white, transparent),
    radial-gradient(1px 1px at 80% 40%, white, transparent),
    radial-gradient(1px 1px at 50% 80%, white, transparent),
    radial-gradient(2px 2px at 60% 20%, white, transparent);
  animation: stars 30s linear infinite;
}
@keyframes stars {
  from { transform: translateY(0); }
  to { transform: translateY(-500px); }
}

/* ================= HEADER ================= */
header {
  position: fixed;
  width: 100%;
  padding: 16px 24px;
  background: rgba(2,6,23,.7);
  backdrop-filter: blur(8px);
  z-index: 10;
}
nav {
  max-width: 1100px;
  margin: auto;
  display: flex;
  justify-content: space-between;
}
nav a {
  color: var(--muted);
  margin-left: 18px;
  text-decoration: none;
  font-size: 14px;
}
nav a:hover { color: var(--accent); }

/* ================= SECTION ================= */
section {
  max-width: 1100px;
  margin: auto;
  padding: 120px 20px;
}

/* ================= HERO ================= */
.hero {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 40px;
  align-items: center;
}
.hero h1 {
  font-size: 44px;
}
.hero span { color: var(--accent); }
.hero p {
  margin-top: 16px;
  color: var(--muted);
}
.btn {
  display: inline-block;
  margin-top: 22px;
  padding: 12px 22px;
  border-radius: 8px;
  background: linear-gradient(135deg, var(--accent), var(--green));
  color: #000;
  text-decoration: none;
  font-weight: 600;
}

/* ================= 3D EARTH ================= */
.earth-wrapper {
  perspective: 800px;
}
.earth {
  width: 260px;
  height: 260px;
  margin: auto;
  border-radius: 50%;
  background:
    radial-gradient(circle at 30% 30%, #60a5fa, #1e3a8a 60%, #020617);
  box-shadow: 0 0 40px #38bdf8;
  position: relative;
  transform-style: preserve-3d;
  animation: spin 18s linear infinite;
}
.earth::before {
  content: "";
  position: absolute;
  inset: 0;
  border-radius: 50%;
  background:
    repeating-linear-gradient(
      to right,
      rgba(255,255,255,.15) 0px,
      rgba(255,255,255,.15) 2px,
      transparent 4px,
      transparent 10px
    );
  mix-blend-mode: overlay;
}
@keyframes spin {
  from { transform: rotateY(0deg); }
  to { transform: rotateY(360deg); }
}

/* ================= CI/CD PIPELINE ================= */
.pipeline {
  margin-top: 80px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.stage {
  width: 110px;
  height: 70px;
  background: var(--card);
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 13px;
  position: relative;
}
.stage::after {
  content: "";
  position: absolute;
  right: -40px;
  width: 40s
  height: 2px;
  background: var(--accent);
  animation: flow 2s infinite;
}
.stage:last-child::after { display: none; }

@keyframes flow {
  from { opacity: .2; }
  to { opacity: 1; }
}

/* ================= AWS ARCH ================= */
.aws {
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(220px,1fr));
  gap: 20px;
  margin-top: 40px;
}
.aws-box {
  background: var(--card);
  padding: 20px;
  border-radius: 16px;
  border: 1px solid #1f2937;
  position: relative;
  overflow: hidden;
}
.aws-box::before {
  content: "";
  position: absolute;
  inset: -100%;
  background: linear-gradient(120deg, transparent, rgba(56,189,248,.4), transparent);
  animation: cloud 4s infinite;
}
@keyframes cloud {
  from { transform: translateX(-50%); }
  to { transform: translateX(50%); }
}

/* ================= FOOTER ================= */
footer {
  padding: 40px;
  text-align: center;
  color: var(--muted);
  border-top: 1px solid #1f2937;
}

/* ================= RESPONSIVE ================= */
@media(max-width: 900px) {
  .hero { grid-template-columns: 1fr; text-align: center; }
}
</style>
</head>

<body>

<div class="space"></div>

<header>
  <nav>
    <strong>DevOps</strong>
    <div>
      <a href="#pipeline">Pipeline</a>
      <a href="#aws">AWS</a>
      <a href="#resume">Resume</a>
    </div>
  </nav>
</header>

<section class="hero">
  <div>
    <h1>DevOps <span>Engineer</span></h1>
    <p>Automating infrastructure, pipelines and cloud platforms using DevOps best practices.</p>
    <a class="btn" href="#pipeline">Explore Work</a>
  </div>

  <div class="earth-wrapper">
    <div class="earth"></div>
  </div>
</section>

<section id="pipeline">
  <h2>CI/CD Pipeline</h2>
  <div class="pipeline">
    <div class="stage">Git</div>
    <div class="stage">Build</div>
    <div class="stage">Docker</div>
    <div class="stage">Deploy</div>
  </div>
</section>

<section id="aws">
  <h2>AWS Architecture</h2>
  <div class="aws">
    <div class="aws-box">VPC</div>
    <div class="aws-box">EC2 / EKS</div>
    <div class="aws-box">Load Balancer</div>
    <div class="aws-box">Auto Scaling</div>
  </div>
</section>

<section id="resume">
  <h2>Resume</h2>
  <a class="btn" href="resume.pdf" download>Download Resume</a>
</section>

<footer>
  © 2025 DevOps Engineer Portfolio
</footer>

</body>
</html>

