<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | CI/CD Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= RESET ================= */
*{margin:0;padding:0;box-sizing:border-box}
html,body{
    width:100%;
    height:100%;
    background:radial-gradient(circle at bottom,#0b1022,#02030a);
    color:#eaeaff;
    font-family:'Segoe UI',system-ui,sans-serif;
    scroll-behavior:smooth;
}

/* ================= CANVAS ================= */
canvas{
    position:fixed;
    inset:0;
    z-index:-2;
}

/* ================= HERO ================= */
.hero{
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:8%;
    flex-wrap:wrap;
}

.hero-text{
    max-width:520px;
}

.hero-text h1{
    font-size:3.6rem;
    background:linear-gradient(90deg,#7c7cff,#00ffd5);
    -webkit-background-clip:text;
    color:transparent;
}

.hero-text p{
    margin-top:20px;
    color:#b8c1ff;
    line-height:1.6;
}

.buttons{
    margin-top:30px;
    display:flex;
    gap:15px;
    flex-wrap:wrap;
}

.btn{
    padding:14px 30px;
    border-radius:30px;
    border:none;
    cursor:pointer;
    font-weight:600;
    background:linear-gradient(90deg,#7c7cff,#00ffd5);
    color:#000;
    text-decoration:none;
}

.btn-outline{
    background:transparent;
    border:1px solid #7c7cff;
    color:#7c7cff;
}

/* ================= ORBIT ================= */
.orbit-container{
    width:420px;
    height:420px;
    position:relative;
}

.core{
    position:absolute;
    inset:160px;
    background:radial-gradient(circle,#9b9bff,#4b4bff);
    border-radius:50%;
    box-shadow:0 0 80px #6f7cff;
}

.orbit{
    position:absolute;
    inset:0;
    border-radius:50%;
    animation:spin linear infinite;
}

.orbit.one{animation-duration:18s}
.orbit.two{inset:50px;animation-duration:26s}
.orbit.three{inset:100px;animation-duration:34s}

.node{
    position:absolute;
    top:50%;
    left:-14px;
    width:28px;
    height:28px;
    border-radius:50%;
    background:#0b1022;
    border:2px solid #7c7cff;
    box-shadow:0 0 18px #7c7cff;
}

.node span{
    position:absolute;
    top:34px;
    left:-24px;
    font-size:12px;
    color:#9bb1ff;
    white-space:nowrap;
}

@keyframes spin{
    from{transform:rotate(0)}
    to{transform:rotate(360deg)}
}

/* ================= SECTIONS ================= */
section{
    padding:120px 8%;
}

h2{
    font-size:2.4rem;
    margin-bottom:40px;
    background:linear-gradient(90deg,#7c7cff,#00ffd5);
    -webkit-background-clip:text;
    color:transparent;
}

/* ================= PIPELINE ================= */
.pipeline{
    display:flex;
    gap:20px;
    flex-wrap:wrap;
}

.stage{
    flex:1;
    min-width:160px;
    background:rgba(255,255,255,.04);
    padding:30px;
    border-radius:18px;
    border:1px solid rgba(124,124,255,.3);
    text-align:center;
    position:relative;
}

.stage::after{
    content:'';
    position:absolute;
    bottom:-6px;
    left:20%;
    width:60%;
    height:3px;
    background:#00ffd5;
    animation:flow 2s infinite;
}

@keyframes flow{
    0%{opacity:.2}
    50%{opacity:1}
    100%{opacity:.2}
}

/* ================= JENKINS POPUP ================= */
.popup{
    position:fixed;
    bottom:30px;
    right:30px;
    background:#0f1529;
    padding:20px 26px;
    border-radius:14px;
    border-left:4px solid #00ffd5;
    box-shadow:0 0 30px rgba(0,255,213,.4);
    animation:slideIn 1s ease;
}

@keyframes slideIn{
    from{transform:translateX(200px);opacity:0}
    to{transform:translateX(0);opacity:1}
}

/* ================= K8S ================= */
.k8s{
    display:flex;
    gap:20px;
    flex-wrap:wrap;
}

.pod{
    width:120px;
    height:120px;
    border-radius:50%;
    border:2px solid #7c7cff;
    display:flex;
    align-items:center;
    justify-content:center;
    box-shadow:0 0 20px #7c7cff;
    animation:pulse 3s infinite;
}

@keyframes pulse{
    0%,100%{transform:scale(.95)}
    50%{transform:scale(1.05)}
}

/* ================= GITHUB ================= */
.github{
    font-size:1.2rem;
    color:#9bb1ff;
}

/* ================= FOOTER ================= */
footer{
    padding:60px;
    text-align:center;
    color:#7f8cff;
}

/* ================= MOBILE ================= */
@media(max-width:900px){
    .hero{justify-content:center;text-align:center}
    .orbit-container{margin-top:60px}
}
</style>
</head>

<body>

<canvas id="stars"></canvas>

<!-- HERO -->
<div class="hero">
    <div class="hero-text">
        <h1>DevOps Engineer</h1>
        <p>
            Building scalable CI/CD pipelines, cloud infrastructure,
            Kubernetes platforms, and DevSecOps automation.
        </p>

        <div class="buttons">
            <a href="resume.pdf" class="btn" download>Download Resume</a>
            <a href="#pipeline" class="btn btn-outline">View Pipeline</a>
        </div>
    </div>

    <div class="orbit-container">
        <div class="core"></div>
        <div class="orbit one"><div class="node"><span>Git</span></div></div>
        <div class="orbit two"><div class="node"><span>Jenkins</span></div></div>
        <div class="orbit three"><div class="node"><span>Kubernetes</span></div></div>
    </div>
</div>

<!-- PIPELINE -->
<section id="pipeline">
    <h2>CI/CD Pipeline</h2>
    <div class="pipeline">
        <div class="stage">Commit</div>
        <div class="stage">Build</div>
        <div class="stage">Security Scan</div>
        <div class="stage">Docker</div>
        <div class="stage">Kubernetes</div>
    </div>
</section>

<!-- K8S -->
<section>
    <h2>Kubernetes Pods</h2>
    <div class="k8s">
        <div class="pod">Pod-1</div>
        <div class="pod">Pod-2</div>
        <div class="pod">Pod-3</div>
    </div>
</section>

<!-- GITHUB -->
<section>
    <h2>GitHub Stats</h2>
    <div class="github" id="githubStats">Loading GitHub stats…</div>
</section>

<footer>
    © 2025 DevOps Engineer · CI/CD · Cloud · Automation
</footer>

<!-- JENKINS POPUP -->
<div class="popup">
    ✅ Jenkins Build #128 SUCCESS
</div>

<script>
/* STAR FIELD */
const c=document.getElementById("stars"),x=c.getContext("2d");
c.width=innerWidth;c.height=innerHeight;
let s=[...Array(120)].map(()=>({x:Math.random()*c.width,y:Math.random()*c.height,r:Math.random()*1.5}));
(function a(){x.clearRect(0,0,c.width,c.height);x.fillStyle="#7c7cff";s.forEach(p=>{x.beginPath();x.arc(p.x,p.y,p.r,0,Math.PI*2);x.fill()});requestAnimationFrame(a)})();

/* GITHUB API */
fetch("https://api.github.com/users/sandydan-dev")
.then(r=>r.json())
.then(d=>{
 document.getElementById("githubStats").innerHTML=
 `⭐ Repos: ${d.public_repos} | 👥 Followers: ${d.followers}`;
});
</script>

</body>
</html>

