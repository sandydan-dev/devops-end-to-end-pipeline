<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= BASE ================= */
:root{
  --bg:#020617;
  --card:#0b1220;
  --text:#e5e7eb;
  --muted:#94a3b8;
  --accent:#38bdf8;
  --green:#22c55e;
}
*{margin:0;padding:0;box-sizing:border-box}
body{
  background:var(--bg);
  color:var(--text);
  font-family:system-ui,sans-serif;
  overflow-x:hidden;
}

/* ================= HEADER / MENU ================= */
header{
  position:fixed;
  top:0;
  width:100%;
  z-index:10;
  background:rgba(2,6,23,.8);
  backdrop-filter:blur(8px);
}
.nav{
  max-width:1100px;
  margin:auto;
  padding:16px 20px;
  display:flex;
  justify-content:space-between;
  align-items:center;
}
.nav strong{
  font-size:18px;
  letter-spacing:1px;
}
.nav a{
  color:var(--muted);
  margin-left:20px;
  text-decoration:none;
  font-size:14px;
}
.nav a:hover{color:var(--accent)}

/* ================= SECTIONS ================= */
section{
  max-width:1100px;
  margin:auto;
  padding:120px 20px;
}

/* ================= HERO ================= */
.hero{
  text-align:center;
  padding-top:160px;
}
.hero h1{
  font-size:42px;
}
.hero span{color:var(--accent)}
.hero p{
  margin-top:14px;
  color:var(--muted);
}

/* ================= SLIDER ================= */
.slider{
  margin-top:60px;
  overflow:hidden;
  position:relative;
}
.slides{
  display:flex;
  width:600%;
  animation:slide 24s infinite;
}
.slide{
  width:100%;
  flex-shrink:0;
  display:flex;
  justify-content:center;
  align-items:center;
}
.card{
  background:var(--card);
  border:1px solid #1f2937;
  border-radius:20px;
  width:320px;
  height:200px;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  box-shadow:0 0 40px rgba(56,189,248,.15);
}
.card h3{
  margin-bottom:10px;
  color:var(--accent);
}
.card p{
  font-size:14px;
  color:var(--muted);
  text-align:center;
  max-width:260px;
}

/* ================= SLIDE ANIMATION ================= */
@keyframes slide{
  0%{transform:translateX(0%)}
  16%{transform:translateX(0%)}

  20%{transform:translateX(-100%)}
  36%{transform:translateX(-100%)}

  40%{transform:translateX(-200%)}
  56%{transform:translateX(-200%)}

  60%{transform:translateX(-300%)}
  76%{transform:translateX(-300%)}

  80%{transform:translateX(-400%)}
  96%{transform:translateX(-400%)}

  100%{transform:translateX(0%)}
}

/* ================= PIPELINE FLOW ================= */
.flow{
  margin-top:40px;
  display:flex;
  justify-content:space-between;
  align-items:center;
}
.stage{
  background:var(--card);
  border-radius:12px;
  padding:14px 20px;
  position:relative;
  font-size:13px;
}
.stage:after{
  content:"";
  position:absolute;
  right:-40px;
  top:50%;
  width:40px;
  height:2px;
  background:linear-gradient(90deg,transparent,var(--accent),transparent);
  animation:flow 1.5s infinite;
}
.stage:last-child:after{display:none}
@keyframes flow{
  from{opacity:.2}
  to{opacity:1}
}

/* ================= RESPONSIVE ================= */
@media(max-width:768px){
  .flow{flex-direction:column;gap:20px}
  .stage:after{display:none}
}
</style>
</head>

<body>

<!-- ================= MENU BAR ================= -->
<header>
  <div class="nav">
    <strong>DevOps</strong>
    <div>
      <a href="#home">Home</a>
      <a href="#pipeline">Pipeline</a>
      <a href="#contact">Contact</a>
    </div>
  </div>
</header>

<!-- ================= HERO ================= -->
<section id="home" class="hero">
  <h1>DevOps <span>Engineer</span></h1>
  <p>CI/CD • Docker • Kubernetes • Cloud Automation</p>

  <!-- ================= SLIDER ================= -->
  <div class="slider">
    <div class="slides">
      <div class="slide">
        <div class="card">
          <h3>Source Code</h3>
          <p>GitHub repository triggers the CI pipeline automatically</p>
        </div>
      </div>

      <div class="slide">
        <div class="card">
          <h3>CI Build</h3>
          <p>Jenkins builds, tests and validates application code</p>
        </div>
      </div>

      <div class="slide">
        <div class="card">
          <h3>Docker Image</h3>
          <p>Application packaged as a versioned Docker image</p>
        </div>
      </div>

      <div class="slide">
        <div class="card">
          <h3>Container Registry</h3>
          <p>Images pushed to Docker Hub / ECR securely</p>
        </div>
      </div>

      <div class="slide">
        <div class="card">
          <h3>Kubernetes Deploy</h3>
          <p>Rolling deployment to Kubernetes cluster</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ================= PIPELINE FLOW ================= -->
<section id="pipeline">
  <h2>DevOps Pipeline Flow</h2>
  <div class="flow">
    <div class="stage">Git</div>
    <div class="stage">Jenkins</div>
    <div class="stage">Docker</div>
    <div class="stage">Registry</div>
    <div class="stage">Kubernetes</div>
  </div>
</section>

<!-- ================= CONTACT ================= -->
<section id="contact">
  <h2>Contact</h2>
  <p style="color:var(--muted)">Email: devops@example.com</p>
  <p style="color:var(--muted)">Mobile: +91 XXXXXXXX</p>
</section>

</body>
</html>

