<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | CI/CD Graph</title>

<style>
html, body {
    margin: 0;
    padding: 0;
    background: #0b0f19;
    color: #eaeaf0;
    height: 100%;
    overflow: hidden;
    font-family: 'Segoe UI', sans-serif;
}

/* Canvas background */
#networkCanvas {
    position: fixed;
    inset: 0;
    z-index: -1;
}

/* CONTENT */
.content {
    position: relative;
    z-index: 10;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.hero h1 {
    font-size: 3.5rem;
    background: linear-gradient(90deg, #00ffd5, #1f80ff);
    -webkit-background-clip: text;
    color: transparent;
    animation: glow 3s infinite;
}

.hero h2 {
    margin-top: 15px;
    color: #9bb1ff;
    font-weight: 400;
}

.hero p {
    max-width: 600px;
    margin: 20px auto;
    color: #cfd3ff;
}

@keyframes glow {
    0%,100% { text-shadow: 0 0 15px rgba(0,255,213,.6); }
    50% { text-shadow: 0 0 35px rgba(31,128,255,.9); }
}
</style>
</head>

<body>

<canvas id="networkCanvas"></canvas>

<div class="content">
    <div class="hero">
        <h1>DevOps Engineer</h1>
        <h2>CI/CD • Cloud • Kubernetes • Automation</h2>
        <p>
            Building secure, scalable CI/CD pipelines with cloud-native
            architecture and DevSecOps best practices.
        </p>
    </div>
</div>

<script>
const canvas = document.getElementById("networkCanvas");
const ctx = canvas.getContext("2d");

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

window.addEventListener("resize", () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
});

/* NODE CONFIG */
const nodes = [];
const nodeCount = 45;
const maxDistance = 140;

class Node {
    constructor() {
        this.x = Math.random() * canvas.width;
        this.y = Math.random() * canvas.height;
        this.vx = (Math.random() - 0.5) * 0.6;
        this.vy = (Math.random() - 0.5) * 0.6;
        this.radius = Math.random() * 2 + 2;
        this.color = ["#00ffd5", "#1f80ff", "#ff4d4d", "#facc15"][Math.floor(Math.random()*4)];
    }

    move() {
        this.x += this.vx;
        this.y += this.vy;

        if (this.x < 0 || this.x > canvas.width) this.vx *= -1;
        if (this.y < 0 || this.y > canvas.height) this.vy *= -1;
    }

    draw() {
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.shadowBlur = 10;
        ctx.shadowColor = this.color;
        ctx.fill();
        ctx.shadowBlur = 0;
    }
}

for (let i = 0; i < nodeCount; i++) {
    nodes.push(new Node());
}

/* DRAW CONNECTIONS */
function drawLines() {
    for (let i = 0; i < nodes.length; i++) {
        for (let j = i + 1; j < nodes.length; j++) {
            const dx = nodes[i].x - nodes[j].x;
            const dy = nodes[i].y - nodes[j].y;
            const dist = Math.sqrt(dx * dx + dy * dy);

            if (dist < maxDistance) {
                ctx.beginPath();
                ctx.moveTo(nodes[i].x, nodes[i].y);
                ctx.lineTo(nodes[j].x, nodes[j].y);
                ctx.strokeStyle = "rgba(255,255,255," + (1 - dist / maxDistance) * 0.3 + ")";
                ctx.lineWidth = 1;
                ctx.stroke();
            }
        }
    }
}

/* ANIMATION LOOP */
function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    drawLines();
    nodes.forEach(node => {
        node.move();
        node.draw();
    });

    requestAnimationFrame(animate);
}

animate();
</script>

</body>
</html>

