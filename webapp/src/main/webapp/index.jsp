<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Portfolio</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
/* ================== GLOBAL ================== */
* { margin: 0; padding: 0; box-sizing: border-box; }
body {
    font-family: 'Poppins', sans-serif;
    height: 100vh;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: #fff;
    overflow: hidden;
}

/* ================== NAVBAR ================== */
.navbar {
    display: flex;
    justify-content: space-between;
    padding: 20px 60px;
    position: relative;
    z-index: 10;
}
.logo { font-size: 24px; font-weight: 700; letter-spacing: 1px; }
.nav-links a {
    margin-left: 30px;
    text-decoration: none;
    color: #fff;
    font-weight: 400;
    transition: 0.3s;
}
.nav-links a:hover { color: #00eaff; }

/* ================== HERO ================== */
.hero {
    display: flex;
    flex-direction: row;
    height: calc(100vh - 80px);
    align-items: center;
    justify-content: space-between;
    padding: 0 80px;
}

.hero-text {
    max-width: 550px;
    animation: slideIn 1.2s ease-out;
}

.hero-text h1 { font-size: 52px; font-weight: 700; }
.hero-text h1 span { color: #00eaff; }
.hero-text p {
    margin-top: 20px;
    font-size: 18px;
    line-height: 1.6;
    opacity: 0.9;
}
.hero-text .btn-resume {
    margin-top: 30px;
    padding: 14px 32px;
    border: none;
    background: #00eaff;
    color: #000;
    font-size: 16px;
    font-weight: 600;
    border-radius: 30px;
    cursor: pointer;
    transition: 0.3s;
    text-decoration: none;
    display: inline-block;
}
.hero-text .btn-resume:hover { transform: scale(1.1); }

/* ================== CANVAS AREA ================== */
#animation-canvas {
    width: 500px;
    height: 500px;
    position: relative;
}

/* ================== KEYFRAMES ================== */
@keyframes slideIn {
    from { opacity: 0; transform: translateX(-80px); }
    to { opacity: 1; transform: translateX(0); }
}

/* ================== FOOTER ================== */
.footer {
    position: absolute;
    bottom: 20px;
    width: 100%;
    text-align: center;
    font-size: 14px;
    opacity: 0.7;
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">DevOpsHub</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Projects</a>
        <a href="#">CI/CD</a>
        <a href="#">Contact</a>
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero">
    <div class="hero-text">
        <h1>Build. Deploy. <span>Automate.</span></h1>
        <p>
            Modern DevOps platform integrating CI/CD pipelines, cloud automation,
            container orchestration, and monitoring — all in one place.
        </p>
        <a href="resume.pdf" download class="btn-resume">Download Resume</a>
    </div>

    <!-- ANIMATION CANVAS -->
    <div id="animation-canvas"></div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2025 DevOpsHub | Powered by JSP & Tomcat
</div>

<!-- Three.js -->
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/build/three.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/controls/OrbitControls.js"></script>

<script>
// ================== THREE.JS SETUP ==================
const container = document.getElementById('animation-canvas');
const scene = new THREE.Scene();
scene.background = new THREE.Color(0x000000);

const camera = new THREE.PerspectiveCamera(45, 1, 0.1, 1000);
camera.position.set(0, 5, 25);

const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
renderer.setSize(container.clientWidth, container.clientHeight);
container.appendChild(renderer.domElement);

// Lights
const ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
scene.add(ambientLight);
const pointLight = new THREE.PointLight(0xffffff, 1);
pointLight.position.set(10, 20, 20);
scene.add(pointLight);

// Glowing Earth
const earthGeo = new THREE.SphereGeometry(5, 64, 64);
const earthMat = new THREE.MeshPhongMaterial({
    color: 0x2266ff,
    shininess: 30,
    emissive: 0x112244,
    emissiveIntensity: 0.5
});
const earth = new THREE.Mesh(earthGeo, earthMat);
scene.add(earth);

// Stars background
const starGeo = new THREE.BufferGeometry();
const starVertices = [];
for(let i=0;i<2000;i++){
    starVertices.push((Math.random()-0.5)*2000);
    starVertices.push((Math.random()-0.5)*2000);
    starVertices.push((Math.random()-0.5)*2000);
}
starGeo.setAttribute('position', new THREE.Float32BufferAttribute(starVertices,3));
const stars = new THREE.Points(starGeo,new THREE.PointsMaterial({color:0xffffff}));
scene.add(stars);

// Orbiting DevOps tool names
const loader = new THREE.FontLoader();
const orbitTexts = [];
const tools = ['Docker','Kubernetes','Jenkins','Terraform','GitHub'];

loader.load('https://threejs.org/examples/fonts/helvetiker_regular.typeface.json', function(font){
    tools.forEach((tool,index)=>{
        const textGeo = new THREE.TextGeometry(tool,{
            font: font,
            size: 0.7,
            height: 0.1
        });
        const textMat = new THREE.MeshBasicMaterial({ color: Math.random()*0xffffff });
        const mesh = new THREE.Mesh(textGeo,textMat);
        const distance = 8 + index*2;
        const angle = Math.random()*Math.PI*2;
        orbitTexts.push({mesh,distance,angle,speed:0.002+Math.random()*0.003});
        scene.add(mesh);
    });
});

// Controls
const controls = new THREE.OrbitControls(camera, renderer.domElement);
controls.enableDamping = true;
controls.dampingFactor = 0.05;

// Animation loop
function animate(){
    requestAnimationFrame(animate);
    earth.rotation.y += 0.002;

    orbitTexts.forEach(obj=>{
        obj.angle += obj.speed;
        obj.mesh.position.set(
            Math.cos(obj.angle)*obj.distance,
            Math.sin(obj.angle*0.5)*2,
            Math.sin(obj.angle)*obj.distance
        );
    });

    controls.update();
    renderer.render(scene,camera);
}
animate();

// Resize
window.addEventListener('resize', ()=>{
    camera.aspect = container.clientWidth/container.clientHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(container.clientWidth, container.clientHeight);
});
</script>

</body>
</html>

