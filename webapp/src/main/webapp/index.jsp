<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= RESET ================= */
* { margin:0; padding:0; box-sizing:border-box; }
html, body {
    height:100%;
    background:#05060f;
    color:#e6e8ff;
    font-family:-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
    overflow-x:hidden;
}

/* ================= BACKGROUND ================= */
.bg {
    position:fixed;
    inset:0;
    background:
        radial-gradient(1200px 500px at 50% 100%, #0b0f2a, transparent),
        radial-gradient(800px 400px at 80% 20%, #120f2f, transparent);
    z-index:-2;
}

/* ================= HERO ================= */
.hero {
    min-height:100vh;
    display:grid;
    grid-template-columns: 1.1fr 1fr;
    align-items:center;
    padding:0 8%;
}

@media (max-width: 900px) {
    .hero { grid-template-columns:1fr; text-align:center; }
}

/* TEXT */
.hero h1 {
    font-size:3.6rem;
    line-height:1.1;
    letter-spacing:-1px;
}

.hero h1 span {
    background:linear-gradient(90deg,#7c7cff,#00e5ff);
    -webkit-background-clip:text;
    color:transparent;
}

.hero p {
    margin-top:24px;
    max-width:520px;
    font-size:1.05rem;
    color:#b9c1ff;
    line-height:1.7;
}

.cta {
    margin-top:36px;
    display:flex;
    gap:16px;
    flex-wrap:wrap;
}

.cta a {
    padding:14px 28px;
    border-radius:999px;
    text-decoration:none;
    font-weight:500;
    transition:.2s ease;
}

.primary {
    background:#ffffff;
    color:#000;
}

.primary:hover { opacity:.85; }

.secondary {
    border:1px solid #2a2f6b;
    color:#cfd3ff;
}

.secondary:hover { background:#0e1130; }

/* ================= ORBIT ================= */
.orbit-wrap {
    position:relative;
    width:420px;
    height:420px;
    margin:auto;
}

.core {
    position:absolute;
    inset:160px;
    border-radius:50%;
    background:radial-gradient(circle,#ffffff,#8c8cff);
    box-shadow:0 0 60px rgba(140,140,255,.35);
}

/* ORBIT RINGS */
.ring {
    position:absolute;
    inset:0;
    border-radius:50%;
    border:1px solid rgba(255,255,255,.08);
    animation:spin linear infinite;
}

.r1 { animation-duration:24s; }
.r2 { inset:48px; animation-duration:36s; }
.r3 { inset:96px; animation-duration:52s; }

/* NODES */
.node {
    position:absolute;
    top:50%;
    left:-10px;
    width:20px;
    height:20px;
    border-radius:50%;
    background:#0b0f2a;
    border:1px solid #7c7cff;
}

.node::after {
    content:attr(data-label);
    position:absolute;
    top:26px;
    left:-18px;
    font-size:11px;
    color:#9aa3ff;
    white-space:nowrap;
}

@keyframes spin {
    from { transform:rotate(0deg); }
    to   { transform:rotate(360deg); }
}

/* ================= SECTIONS ================= */
section {
    padding:120px 8%;
}

section h2 {
    font-size:2.2rem;
    margin-bottom:48px;
    letter-spacing:-.5px;
}

/* ================= PIPELINE ================= */
.pipeline {
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
    gap:24px;
}

.stage {
    padding:28px;
    border-radius:18px;
    background:rgba(255,255,255,.02);
    border:1px solid rgba(255,255,255,.06);
    color:#cfd3ff;
}

/* ================= FOOTER ================= */
footer {
    padding:60px 8%;
    color:#7f87d6;
    border-top:1px solid rgba(255,255,255,.06);
}
</style>
</head>

<body>

<div class="bg"></div>

<!-- HERO -->
<div class="hero">
    <div>
        <h1>
            DevOps Engineer<br>
            <span>CI/CD · Cloud · Kubernetes</span>
        </h1>

        <p>
            I design and operate reliable CI/CD platforms, cloud infrastructure,
            and Kubernetes environments with a focus on automation, security,
            and scalability.
        </p>

        <div class="cta">
            <a href="resume.pdf" class="primary" download>Download Resume</a>
            <a href="#pipeline" class="secondary">View Pipeline</a>
        </div>
    </div>

    <!-- ORBIT -->
    <div class="orbit-wrap">
        <div class="core"></div>

        <div class="ring r1">
            <div class="node" data-label="Git"></div>
        </div>

        <div class="ring r2">
            <div class="node" data-label="CI/CD"></div>
        </div>

        <div class="ring r3">
            <div class="node" data-label="Kubernetes"></div>
        </div>
    </div>
</div>

<!-- PIPELINE -->
<section id="pipeline">
    <h2>CI/CD Pipeline</h2>
    <div class="pipeline">
        <div class="stage">Source Control</div>
        <div class="stage">Build & Test</div>
        <div class="stage">Security Scanning</div>
        <div class="stage">Containerization</div>
        <div class="stage">Kubernetes Deployment</div>
    </div>
</section>

<footer>
    © 2025 · DevOps Engineer Portfolio
</footer>

</body>
</html>

