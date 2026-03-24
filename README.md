<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Inter', sans-serif;
  background: #ffffff;
  color: #111;
}

/* HEADER */
header {
  display: flex;
  justify-content: space-between;
  padding: 25px 60px;
  position: sticky;
  top: 0;
  background: white;
  z-index: 10;
}

.logo {
  font-weight: 600;
}

nav a {
  margin-left: 25px;
  text-decoration: none;
  color: black;
  font-size: 14px;
}

/* HERO */
.hero {
  padding: 120px 60px;
}

.hero h1 {
  font-size: 48px;
  font-weight: 400;
}

.hero p {
  margin-top: 10px;
  font-size: 18px;
  color: #555;
}

/* PROJECTS */
.projects {
  padding: 80px 60px;
}

.project {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 120px;
  flex-wrap: wrap;
}

.project-text {
  width: 45%;
  min-width: 300px;
}

.project-text h2 {
  font-size: 28px;
  margin-bottom: 10px;
}

.project-text p {
  color: #555;
}

.project-image {
  width: 45%;
  min-width: 300px;
  height: 250px;
  background: #eaeaea;
  border-radius: 10px;
}

/* ABOUT */
.about {
  padding: 80px 60px;
  max-width: 700px;
}

/* CONTACT */
.contact {
  padding: 80px 60px;
}

/* FOOTER */
footer {
  padding: 40px;
  text-align: center;
  background: #f5f5f5;
  margin-top: 60px;
}

/* HOVER EFFECT */
.project:hover {
  transform: translateY(-5px);
  transition: 0.3s ease;
}

/* MOBILE */
@media (max-width: 768px) {
  header {
    padding: 20px;
  }

  .hero {
    padding: 80px 20px;
  }

  .projects, .about, .contact {
    padding: 60px 20px;
  }

  .project {
    flex-direction: column;
  }

  .project-text, .project-image {
    width: 100%;
  }
}
</style>

</head>
<body>

<header>
  <div class="logo">Your Name</div>
  <nav>
    <a href="#projects">Projects</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<section class="hero">
  <h1>Designer / Researcher</h1>
  <p>Creating thoughtful digital experiences.</p>
</section>

<section id="projects" class="projects">

  <div class="project">
    <div class="project-text">
      <h2>CLO 360°</h2>
      <p>Mixed reality fashion design system exploring gesture-based workflows.</p>
    </div>
    <div class="project-image"></div>
  </div>

  <div class="project">
    <div class="project-text">
      <h2>Smart DP</h2>
      <p>Shortcut-based system to optimize user workflows.</p>
    </div>
    <div class="project-image"></div>
  </div>

  <div class="project">
    <div class="project-text">
      <h2>System Mapping</h2>
      <p>Research-driven exploration of complex user journeys.</p>
    </div>
    <div class="project-image"></div>
  </div>

</section>

<section id="about" class="about">
  <h2>About</h2>
  <p>
    I am a designer focused on UX, systems thinking, and interaction design.
    My work blends research, creativity, and technology to build meaningful experiences.
  </p>
</section>

<section id="contact" class="contact">
  <h2>Contact</h2>
  <p>Email: your@email.com</p>
</section>

<footer>
  <p>© 2026 Your Name</p>
</footer>

<script>
// Smooth scroll
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth'
    });
  });
});
</script>

</body>
</html>
