<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
* { margin:0; padding:0; box-sizing:border-box; }
body { font-family: 'Poppins', sans-serif; height:100vh; background: linear-gradient(135deg, #0f2027, #203a43, #2c5364); color:#fff; overflow:hidden; }

.navbar { display:flex; justify-content:space-between; padding:20px 60px; position:relative; z-index:10; }
.logo { font-size:24px; font-weight:700; letter-spacing:1px; }
.nav-links a { margin-left:30px; text-decoration:none; color:#fff; font-weight:400; transition:0.3s; }
.nav-links a:hover { color:#00eaff; }

.hero { display:flex; flex-direction:row; height:calc(100vh - 80px); align-items:center; justify-content:space-between; padding:0 5%; }
.hero-text { max-width:550px; animation: slideIn 1.2s ease-out; }
.hero-text h1 { font-size:48px; font-weight:700; }
.hero-text h1 span { color:#00eaff; }
.hero-text p { margin-top:20px; font-size:18px; line-height:1.6; opacity:0.9; }
.hero-text .btn-resume { margin-top:30px; padding:14px 32px; border:none; background:#00eaff; color:#000; font-size:16px; font-weight:600; border-radius:30px; cursor:pointer; transition:0.3s; text-decoration:none; display:inline-block; }
.hero-text .btn-resume:hover { transform: scale(1.1); }

#animation-canvas { width: 500px; max-width: 90vw; height: 500px; cursor: grab; }

@keyframes slideIn { from { opacity:0; transform:translateX(-80px); } to { opacity:1; transform:translateX(0); } }

.footer { position:absolute; bottom:20px; width:100%; text-align:center; font-size:14px; opacity:0.7; }
</style>
</head>

<body>
<div class="navbar">
    <div class="logo">DevOpsHub</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Projects</a>
        <a href="#">CI/CD</a>
        <a href="#">Contact</a>
    </div>
</div>

<div class="hero">
    <div class="hero-text">
	    <h1> Plan.  Build. Deploy. <i>Automate.</i></h1>
        <p>Modern DevOps platform integrating CI/CD pipelines, cloud automation, container orchestration, and monitoring — all in one place.</p>
        <a href="resume.pdf" download class="btn-resume">Download Resume</a>
    </div>
    <div id="animation-canvas"></div>
</div>

<div class="footer">© 2025 DevOpsHub | Powered by JSP & Tomcat</div>

<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/build/three.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/controls/OrbitControls.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/loaders/FontLoader.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/geometries/TextGeometry.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/loaders/TextureLoader.js"></script>

<script>
// ================== SETUP ==================
const container = document.getElementById('animation-canvas');
const scene = new THREE.Scene();

// CAMERA
const camera = new THREE.PerspectiveCamera(45, container.clientWidth/container.clientHeight, 0.1, 1000);
camera.position.set(0, 5, 25);

// RENDERER
const renderer = new THREE.WebGLRenderer({ antialias:true, alpha:true });
renderer.setSize(container.clientWidth, container.clientHeight);
renderer.setPixelRatio(window.devicePixelRatio);
container.appendChild(renderer.domElement);

// CONTROLS
const controls = new THREE.OrbitControls(camera, renderer.domElement);
controls.enableDamping = true;
controls.dampingFactor = 0.05;

// LIGHTS
const ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
scene.add(ambientLight);
const pointLight = new THREE.PointLight(0xffffff, 1);
pointLight.position.set(10, 20, 20);
scene.add(pointLight);

// ================== EARTH WITH TEXTURE + GLOW ==================
const textureLoader = new THREE.TextureLoader();
const earthTexture = textureLoader.load('https://threejs.org/examples/textures/earth_atmos_2048.jpg'); // realistic Earth
const earthBump = textureLoader.load('https://threejs.org/examples/textures/earthbump1k.jpg');

const earthGeo = new THREE.SphereGeometry(5,64,64);
const earthMat = new THREE.MeshPhongMaterial({
    map: earthTexture,
    bumpMap: earthBump,
    bumpScale: 0.05,
    shininess: 15,
    emissive: 0x112244,
    emissiveIntensity: 0.2
});
const earth = new THREE.Mesh(earthGeo, earthMat);
scene.add(earth);

// Glow effect (soft emissive sphere)
const glowGeo = new THREE.SphereGeometry(5.1, 64, 64);
const glowMat = new THREE.MeshBasicMaterial({
    color: 0x00aaff,
    transparent: true,
    opacity: 0.1
});
const glow = new THREE.Mesh(glowGeo, glowMat);
scene.add(glow);

// ================== STARS ==================
const starGeo = new THREE.BufferGeometry();
const starVertices = [];
for(let i=0;i<3000;i++){
    starVertices.push((Math.random()-0.5)*2000);
    starVertices.push((Math.random()-0.5)*2000);
    starVertices.push((Math.random()-0.5)*2000);
}
starGeo.setAttribute('position', new THREE.Float32BufferAttribute(starVertices,3));
const stars = new THREE.Points(starGeo,new THREE.PointsMaterial({color:0xffffff, size:1}));
scene.add(stars);

// ================== ORBITING TOOLS ==================
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
        const textMat = new THREE.MeshStandardMaterial({ color: Math.random()*0xffffff });
        const mesh = new THREE.Mesh(textGeo, textMat);
        const distance = 8 + index*2;
        const angle = Math.random()*Math.PI*2;
        orbitTexts.push({mesh,distance,angle,speed:0.002+Math.random()*0.003});
        scene.add(mesh);
    });
});

// ================== RAYCASTER FOR HOVER ==================
const raycaster = new THREE.Raycaster();
const mouse = new THREE.Vector2();
let INTERSECTED = null;

function onMouseMove(event){
    const rect = renderer.domElement.getBoundingClientRect();
    mouse.x = ((event.clientX - rect.left) / rect.width)*2 -1;
    mouse.y = -((event.clientY - rect.top)/rect.height)*2 +1;
}
window.addEventListener('mousemove', onMouseMove, false);

// ================== ANIMATION ==================
function animate(){
    requestAnimationFrame(animate);

    // Rotate Earth
    earth.rotation.y += 0.002;
    glow.rotation.y += 0.001;

    // Move stars slowly
    starGeo.attributes.position.array.forEach((v,i)=>{ 
        starGeo.attributes.position.array[i] += 0.0005*(Math.random()-0.5);
    });
    starGeo.attributes.position.needsUpdate = true;

    // Orbit texts
    orbitTexts.forEach(obj=>{
        obj.angle += obj.speed;
        obj.mesh.position.set(
            Math.cos(obj.angle)*obj.distance,
            Math.sin(obj.angle*0.5)*2,
            Math.sin(obj.angle)*obj.distance
        );
    });

    // Hover effect
    raycaster.setFromCamera(mouse,camera);
    const intersects = raycaster.intersectObjects(orbitTexts.map(o=>o.mesh));
    if(intersects.length>0){
        if(INTERSECTED != intersects[0].object){
            if(INTERSECTED) INTERSECTED.material.color.set(INTERSECTED.userData.originalColor);
            INTERSECTED = intersects[0].object;
            INTERSECTED.userData = INTERSECTED.userData || {};
            INTERSECTED.userData.originalColor = INTERSECTED.material.color.getHex();
            INTERSECTED.material.color.set(0xff00ff);
        }
    } else {
        if(INTERSECTED) INTERSECTED.material.color.set(INTERSECTED.userData.originalColor);
        INTERSECTED = null;
    }

    controls.update();
    renderer.render(scene,camera);
}
animate();

// ================== RESIZE ==================
window.addEventListener('resize', ()=>{
    camera.aspect = container.clientWidth/container.clientHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(container.clientWidth, container.clientHeight);
});
</script>

</body>
</html>

