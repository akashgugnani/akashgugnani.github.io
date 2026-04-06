<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Akash Gugnani — Physicist</title>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=DM+Mono:wght@400;500&family=Syne:wght@400;600;700;800&display=swap" rel="stylesheet" />
<style>
  *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

  :root {
    --bg: #0a0a0a;
    --bg2: #111111;
    --bg3: #181818;
    --border: #222222;
    --text: #ede8df;
    --muted: #8a8480;
    --faint: #3a3530;
    --accent: #7eb8c9;
    --accent2: #c8b87a;
    --font-serif: 'DM Serif Display', Georgia, serif;
    --font-sans: 'Syne', sans-serif;
    --font-mono: 'DM Mono', monospace;
  }

  html { scroll-behavior: smooth; }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: var(--font-sans);
    line-height: 1.6;
    overflow-x: hidden;
  }

  a { color: inherit; text-decoration: none; }

  /* ── NAV ── */
  nav {
    position: fixed; top: 0; left: 0; right: 0; z-index: 100;
    display: flex; align-items: center; justify-content: space-between;
    padding: 18px 52px;
    background: rgba(10,10,10,0.92);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--border);
  }
  .nav-logo {
    font-family: var(--font-serif);
    font-size: 18px; color: var(--text);
  }
  .nav-links {
    display: flex; gap: 36px; list-style: none;
  }
  .nav-links a {
    font-family: var(--font-mono);
    font-size: 11px; letter-spacing: 0.1em; text-transform: uppercase;
    color: var(--muted);
    transition: color 0.2s;
  }
  .nav-links a:hover { color: var(--text); }

  /* ── HERO ── */
  .hero {
    min-height: 100vh;
    display: grid;
    grid-template-columns: 1fr 1fr;
    align-items: center;
    padding: 120px 52px 80px;
    gap: 60px;
    position: relative;
    overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute;
    top: -200px; right: -200px;
    width: 600px; height: 600px;
    background: radial-gradient(circle, rgba(126,184,201,0.06) 0%, transparent 70%);
    pointer-events: none;
  }
  .hero-eyebrow {
    font-family: var(--font-mono);
    font-size: 11px; letter-spacing: 0.14em; text-transform: uppercase;
    color: var(--accent);
    display: flex; align-items: center; gap: 10px;
    margin-bottom: 24px;
  }
  .hero-eyebrow::before {
    content: ''; display: block;
    width: 28px; height: 1px; background: var(--accent);
  }
  .hero-name {
    font-family: var(--font-serif);
    font-size: clamp(52px, 6vw, 86px);
    line-height: 1.0;
    letter-spacing: -0.01em;
    color: var(--text);
    margin-bottom: 28px;
  }
  .hero-name em { font-style: italic; color: var(--accent2); }
  .hero-bio {
    font-size: 16px; color: var(--muted); line-height: 1.8;
    max-width: 460px; margin-bottom: 40px;
  }
  .hero-cta {
    display: flex; gap: 16px; flex-wrap: wrap;
  }
  .btn {
    display: inline-flex; align-items: center; gap: 8px;
    padding: 12px 24px;
    font-family: var(--font-mono);
    font-size: 11px; letter-spacing: 0.1em; text-transform: uppercase;
    border: 1px solid var(--border);
    border-radius: 100px;
    color: var(--muted);
    transition: border-color 0.2s, color 0.2s, background 0.2s;
    cursor: pointer;
  }
  .btn:hover { border-color: var(--accent); color: var(--accent); }
  .btn-primary {
    background: var(--accent); color: #0a0a0a;
    border-color: var(--accent);
  }
  .btn-primary:hover {
    background: transparent; color: var(--accent);
  }

  /* hero right: atom diagram SVG */
  .hero-visual {
    display: flex; align-items: center; justify-content: center;
  }
  .hero-visual svg { width: 100%; max-width: 400px; opacity: 0.75; }

  /* ── MARQUEE ── */
  .marquee-wrap {
    overflow: hidden;
    border-top: 1px solid var(--border);
    border-bottom: 1px solid var(--border);
    padding: 13px 0;
    background: var(--bg2);
  }
  .marquee-track {
    display: flex; gap: 56px;
    animation: marquee 28s linear infinite;
    white-space: nowrap;
  }
  .marquee-track span {
    font-family: var(--font-mono);
    font-size: 10px; letter-spacing: 0.12em; text-transform: uppercase;
    color: var(--faint); flex-shrink: 0;
  }
  .marquee-track .dot { color: var(--accent); }
  @keyframes marquee {
    0% { transform: translateX(0); }
    100% { transform: translateX(-50%); }
  }

  /* ── SECTIONS ── */
  section { padding: 96px 52px; }
  .section-label {
    font-family: var(--font-mono);
    font-size: 10px; letter-spacing: 0.16em; text-transform: uppercase;
    color: var(--faint); margin-bottom: 16px;
    display: flex; align-items: center; gap: 12px;
  }
  .section-label::after {
    content: ''; flex: 1; max-width: 48px;
    height: 1px; background: var(--faint);
  }
  .section-title {
    font-family: var(--font-serif);
    font-size: clamp(32px, 4vw, 52px);
    line-height: 1.1; color: var(--text);
    margin-bottom: 56px;
  }
  .section-title em { font-style: italic; color: var(--accent2); }

  /* ── ABOUT ── */
  .about-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 60px; align-items: start;
  }
  .about-text p {
    font-size: 15px; color: var(--muted); line-height: 1.85;
    margin-bottom: 20px;
  }
  .about-text p strong { color: var(--text); font-weight: 600; }
  .skills-grid {
    display: flex; flex-direction: column; gap: 16px;
  }
  .skill-row {
    display: flex; align-items: center; justify-content: space-between;
    padding-bottom: 16px;
    border-bottom: 1px solid var(--border);
  }
  .skill-name {
    font-family: var(--font-mono);
    font-size: 11px; letter-spacing: 0.08em; text-transform: uppercase;
    color: var(--muted);
  }
  .skill-bar-wrap {
    width: 160px; height: 2px; background: var(--border);
    border-radius: 2px; overflow: hidden;
  }
  .skill-bar {
    height: 100%; background: var(--accent);
    border-radius: 2px;
  }

  /* ── PUBLICATIONS ── */
  .pubs-section { border-top: 1px solid var(--border); }
  .pub-card {
    display: grid;
    grid-template-columns: 80px 1fr auto;
    gap: 28px; align-items: start;
    padding: 36px 0;
    border-bottom: 1px solid var(--border);
    transition: background 0.2s;
  }
  .pub-card:hover { background: var(--bg2); margin: 0 -52px; padding: 36px 52px; }
  .pub-year {
    font-family: var(--font-mono);
    font-size: 12px; color: var(--faint);
    padding-top: 4px;
  }
  .pub-journal {
    display: inline-block;
    font-family: var(--font-mono);
    font-size: 9px; letter-spacing: 0.1em; text-transform: uppercase;
    color: var(--accent);
    border: 1px solid rgba(126,184,201,0.3);
    border-radius: 100px; padding: 3px 10px;
    margin-bottom: 10px;
  }
  .pub-title {
    font-family: var(--font-serif);
    font-size: 20px; line-height: 1.3;
    color: var(--text); margin-bottom: 10px;
  }
  .pub-authors {
    font-size: 13px; color: var(--muted); line-height: 1.6;
  }
  .pub-authors strong { color: var(--accent2); }
  .pub-abstract {
    font-size: 13px; color: var(--faint);
    line-height: 1.7; margin-top: 10px;
    max-width: 680px;
  }
  .pub-link {
    display: flex; align-items: center; gap: 6px;
    font-family: var(--font-mono);
    font-size: 10px; letter-spacing: 0.08em; text-transform: uppercase;
    color: var(--muted);
    border: 1px solid var(--border);
    border-radius: 100px; padding: 8px 16px;
    white-space: nowrap;
    transition: border-color 0.2s, color 0.2s;
    align-self: start; margin-top: 4px;
  }
  .pub-link:hover { border-color: var(--accent); color: var(--accent); }

  /* ── RESEARCH THEMES ── */
  .themes-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 2px;
  }
  .theme-card {
    background: var(--bg2);
    border: 1px solid var(--border);
    padding: 32px 28px;
    transition: border-color 0.25s, background 0.25s;
    cursor: default;
  }
  .theme-card:hover { border-color: #333; background: var(--bg3); }
  .theme-icon {
    font-size: 28px; margin-bottom: 20px;
    line-height: 1;
  }
  .theme-title {
    font-family: var(--font-serif);
    font-size: 20px; color: var(--text);
    margin-bottom: 10px;
  }
  .theme-desc {
    font-size: 13px; color: var(--muted); line-height: 1.7;
  }

  /* ── CONTACT ── */
  .contact-section {
    border-top: 1px solid var(--border);
    display: flex; align-items: center; justify-content: space-between;
    flex-wrap: wrap; gap: 40px;
  }
  .contact-email {
    font-family: var(--font-serif);
    font-size: clamp(24px, 4vw, 52px);
    color: var(--text);
    transition: color 0.2s;
  }
  .contact-email:hover { color: var(--accent2); }
  .contact-links {
    display: flex; flex-direction: column; gap: 12px; align-items: flex-end;
  }
  .contact-link {
    font-family: var(--font-mono);
    font-size: 11px; letter-spacing: 0.08em; text-transform: uppercase;
    color: var(--muted);
    display: flex; align-items: center; gap: 8px;
    transition: color 0.2s;
  }
  .contact-link:hover { color: var(--accent); }
  .contact-link::after { content: '↗'; font-size: 12px; }

  /* ── FOOTER ── */
  footer {
    padding: 28px 52px;
    border-top: 1px solid var(--border);
    display: flex; justify-content: space-between; align-items: center;
  }
  footer p {
    font-family: var(--font-mono);
    font-size: 10px; letter-spacing: 0.1em; text-transform: uppercase;
    color: var(--faint);
  }

  /* ── RESPONSIVE ── */
  @media (max-width: 860px) {
    nav { padding: 16px 24px; }
    .nav-links { display: none; }
    .hero { grid-template-columns: 1fr; padding: 100px 24px 60px; }
    .hero-visual { display: none; }
    .about-grid { grid-template-columns: 1fr; }
    .pub-card { grid-template-columns: 1fr; gap: 12px; }
    .pub-card:hover { margin: 0; padding: 36px 0; }
    section { padding: 72px 24px; }
    .contact-section { padding: 72px 24px; flex-direction: column; align-items: flex-start; }
    .contact-links { align-items: flex-start; }
    footer { padding: 24px; flex-direction: column; gap: 8px; }
  }
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <div class="nav-logo">Akash Gugnani</div>
  <ul class="nav-links">
    <li><a href="#about">About</a></li>
    <li><a href="#publications">Publications</a></li>
    <li><a href="#research">Research</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<!-- HERO -->
<section class="hero" id="home">
  <div class="hero-content">
    <div class="hero-eyebrow">Physicist · IISc Bangalore</div>
    <h1 class="hero-name">Akash<br><em>Gugnani</em></h1>
    <p class="hero-bio">
      I study the quantum world of atomically thin materials — graphene, TMDCs and their heterostructures — probing how electrons flow, scatter, and interact with light at the nanoscale.
    </p>
    <div class="hero-cta">
      <a href="#publications" class="btn btn-primary">View Publications</a>
      <a href="#contact" class="btn">Get in Touch</a>
    </div>
  </div>
  <div class="hero-visual">
    <!-- Atomic lattice SVG illustration -->
    <svg viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg" fill="none">
      <defs>
        <radialGradient id="glow" cx="50%" cy="50%" r="50%">
          <stop offset="0%" stop-color="#7eb8c9" stop-opacity="0.2"/>
          <stop offset="100%" stop-color="#7eb8c9" stop-opacity="0"/>
        </radialGradient>
      </defs>
      <!-- glow background -->
      <circle cx="200" cy="200" r="180" fill="url(#glow)"/>

      <!-- hexagonal graphene lattice pattern -->
      <!-- row 0 -->
      <line x1="200" y1="60" x2="200" y2="90" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="90" x2="226" y2="105" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="90" x2="174" y2="105" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="226" y1="105" x2="226" y2="135" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="105" x2="174" y2="135" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="226" y1="135" x2="252" y2="150" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="226" y1="135" x2="200" y2="150" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="135" x2="148" y2="150" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="135" x2="200" y2="150" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="200" y1="150" x2="200" y2="180" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="252" y1="150" x2="252" y2="180" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="148" y1="150" x2="148" y2="180" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="252" y1="180" x2="278" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="252" y1="180" x2="226" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="180" x2="226" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="180" x2="174" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="148" y1="180" x2="174" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="148" y1="180" x2="122" y2="195" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="278" y1="195" x2="278" y2="225" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="226" y1="195" x2="226" y2="225" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="195" x2="174" y2="225" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="122" y1="195" x2="122" y2="225" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="278" y1="225" x2="252" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="226" y1="225" x2="252" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="226" y1="225" x2="200" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="225" x2="200" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="225" x2="148" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="122" y1="225" x2="148" y2="240" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="252" y1="240" x2="252" y2="270" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="240" x2="200" y2="270" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="148" y1="240" x2="148" y2="270" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="252" y1="270" x2="226" y2="285" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="270" x2="226" y2="285" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="270" x2="174" y2="285" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="148" y1="270" x2="174" y2="285" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <line x1="226" y1="285" x2="226" y2="315" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="285" x2="174" y2="315" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="226" y1="315" x2="200" y2="330" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="174" y1="315" x2="200" y2="330" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>
      <line x1="200" y1="330" x2="200" y2="345" stroke="#7eb8c9" stroke-width="1.2" opacity="0.5"/>

      <!-- Carbon atoms -->
      <circle cx="200" cy="60" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="200" cy="90" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="226" cy="105" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="174" cy="105" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="226" cy="135" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="174" cy="135" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="252" cy="150" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="200" cy="150" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="148" cy="150" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="252" cy="180" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="200" cy="180" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="148" cy="180" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="278" cy="195" r="5" fill="#c8b87a" opacity="0.9"/>
      <circle cx="226" cy="195" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="174" cy="195" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="122" cy="195" r="5" fill="#c8b87a" opacity="0.9"/>
      <circle cx="278" cy="225" r="4" fill="#c8b87a" opacity="0.6"/>
      <circle cx="226" cy="225" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="174" cy="225" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="122" cy="225" r="4" fill="#c8b87a" opacity="0.6"/>
      <circle cx="252" cy="240" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="200" cy="240" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="148" cy="240" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="252" cy="270" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="200" cy="270" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="148" cy="270" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="226" cy="285" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="174" cy="285" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="226" cy="315" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="174" cy="315" r="4" fill="#7eb8c9" opacity="0.6"/>
      <circle cx="200" cy="330" r="5" fill="#7eb8c9" opacity="0.9"/>
      <circle cx="200" cy="345" r="4" fill="#7eb8c9" opacity="0.6"/>

      <!-- highlight ring on central atom -->
      <circle cx="200" cy="195" r="10" fill="none" stroke="#c8b87a" stroke-width="1.5" opacity="0.7"/>
      <circle cx="200" cy="195" r="5" fill="#c8b87a" opacity="1"/>
    </svg>
  </div>
</section>

<!-- MARQUEE -->
<div class="marquee-wrap">
  <div class="marquee-track">
    <span>Graphene</span><span class="dot">◆</span>
    <span>TMDC</span><span class="dot">◆</span>
    <span>2D Materials</span><span class="dot">◆</span>
    <span>Optoelectronics</span><span class="dot">◆</span>
    <span>Electronic Transport</span><span class="dot">◆</span>
    <span>Hydrodynamic Flow</span><span class="dot">◆</span>
    <span>Wiedemann–Franz Law</span><span class="dot">◆</span>
    <span>van der Waals Heterostructures</span><span class="dot">◆</span>
    <span>hBN Encapsulation</span><span class="dot">◆</span>
    <span>Quantum Transport</span><span class="dot">◆</span>
    <!-- duplicate for loop -->
    <span>Graphene</span><span class="dot">◆</span>
    <span>TMDC</span><span class="dot">◆</span>
    <span>2D Materials</span><span class="dot">◆</span>
    <span>Optoelectronics</span><span class="dot">◆</span>
    <span>Electronic Transport</span><span class="dot">◆</span>
    <span>Hydrodynamic Flow</span><span class="dot">◆</span>
    <span>Wiedemann–Franz Law</span><span class="dot">◆</span>
    <span>van der Waals Heterostructures</span><span class="dot">◆</span>
    <span>hBN Encapsulation</span><span class="dot">◆</span>
    <span>Quantum Transport</span><span class="dot">◆</span>
  </div>
</div>

<!-- ABOUT -->
<section id="about">
  <div class="section-label">About</div>
  <h2 class="section-title">The physicist<br><em>behind the work</em></h2>
  <div class="about-grid">
    <div class="about-text">
      <p>
        I am a physicist at the <strong>Indian Institute of Science, Bangalore</strong>, working in the group of Prof. Arindam Ghosh. My research focuses on understanding the fundamental physics of <strong>2D materials</strong> — atomically thin crystals like graphene and transition metal dichalcogenides (TMDCs).
      </p>
      <p>
        My work explores how electrons behave collectively in ultra-clean graphene devices, particularly in the regime where electron–electron interactions dominate — the so-called <strong>hydrodynamic transport</strong> regime. I use a combination of UV illumination and gate-electric-field tuning to dynamically modulate disorder and probe thermal and electrical transport.
      </p>
      <p>
        I am a recipient of the <strong>Prime Minister's Research Fellowship (PMRF)</strong>, Ministry of Education, Government of India.
      </p>
    </div>
    <div class="skills-grid">
      <div class="skill-row">
        <span class="skill-name">Electronic Transport</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:92%"></div></div>
      </div>
      <div class="skill-row">
        <span class="skill-name">Device Fabrication</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:88%"></div></div>
      </div>
      <div class="skill-row">
        <span class="skill-name">Optoelectronics</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:84%"></div></div>
      </div>
      <div class="skill-row">
        <span class="skill-name">2D Materials / hBN</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:90%"></div></div>
      </div>
      <div class="skill-row">
        <span class="skill-name">Thermal Transport</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:80%"></div></div>
      </div>
      <div class="skill-row">
        <span class="skill-name">Data Analysis (Python)</span>
        <div class="skill-bar-wrap"><div class="skill-bar" style="width:76%"></div></div>
      </div>
    </div>
  </div>
</section>

<!-- PUBLICATIONS -->
<section id="publications" class="pubs-section">
  <div class="section-label">Publications</div>
  <h2 class="section-title">Selected<br><em>Research Papers</em></h2>

  <!-- PRL Paper -->
  <div class="pub-card">
    <div class="pub-year">2025</div>
    <div>
      <span class="pub-journal">Phys. Rev. Lett. 135, 256501</span>
      <h3 class="pub-title">Dynamically Tunable Hydrodynamic Transport in Boron-Nitride-Encapsulated Graphene</h3>
      <p class="pub-authors">
        <strong>Akash Gugnani*</strong>, Aniket Majumdar*, Kenji Watanabe, Takashi Taniguchi, Arindam Ghosh
      </p>
      <p class="pub-abstract">
        Using UV radiation combined with gate electric field, we demonstrate dynamic modulation of charge hydrodynamics in monolayer graphene — quantified via departure from the Wiedemann–Franz law — by continuously and reversibly tuning the disorder level through transient trap states in encapsulating hBN.
      </p>
    </div>
    <a href="https://journals.aps.org/prl/abstract/10.1103/z38z-dz5l" target="_blank" class="pub-link">
      PRL ↗
    </a>
  </div>

  <!-- Nature Physics Paper -->
  <div class="pub-card">
    <div class="pub-year">2025</div>
    <div>
      <span class="pub-journal">Nature Physics</span>
      <h3 class="pub-title">Universality in Quantum Critical Flow of Charge and Heat in Ultraclean Graphene</h3>
      <p class="pub-authors">
        Aniket Majumdar, Nisarg Chadha, Pritam Pal, <strong>Akash Gugnani</strong>, Bhaskar Ghawri, Subroto Mukerjee, Arindam Ghosh
      </p>
      <p class="pub-abstract">
        Universality associated with the quantum critical point at the graphene Dirac point is observed in both electronic and thermal transport, revealing the deep connection between charge and heat flow in strongly interacting 2D Dirac fermions.
      </p>
    </div>
    <a href="https://www.nature.com/articles/s41567-025-02972-z" target="_blank" class="pub-link">
      Nature ↗
    </a>
  </div>

  <!-- Placeholder for future papers -->
  <div class="pub-card" style="opacity:0.4; pointer-events:none;">
    <div class="pub-year">—</div>
    <div>
      <span class="pub-journal">Upcoming</span>
      <h3 class="pub-title">More publications coming soon</h3>
      <p class="pub-abstract">Check back for new work on 2D material optoelectronics and quantum transport.</p>
    </div>
    <div></div>
  </div>
</section>

<!-- RESEARCH THEMES -->
<section id="research">
  <div class="section-label">Research</div>
  <h2 class="section-title">Themes &amp;<br><em>Interests</em></h2>
  <div class="themes-grid">
    <div class="theme-card">
      <div class="theme-icon">⬡</div>
      <h3 class="theme-title">2D Materials</h3>
      <p class="theme-desc">Graphene, MoS₂, WS₂, MoSe₂, WSe₂ and their van der Waals heterostructures — atomically thin crystals with extraordinary electronic and optical properties.</p>
    </div>
    <div class="theme-card">
      <div class="theme-icon">〰</div>
      <h3 class="theme-title">Hydrodynamic Transport</h3>
      <p class="theme-desc">When electron–electron scattering dominates, electrons flow like a viscous fluid. We probe this regime using the Wiedemann–Franz law as a thermometer for correlations.</p>
    </div>
    <div class="theme-card">
      <div class="theme-icon">◎</div>
      <h3 class="theme-title">Optoelectronics</h3>
      <p class="theme-desc">Light–matter interaction in 2D semiconductors. Using UV illumination to tune disorder, photoconductivity, and trap-state dynamics in hBN-encapsulated devices.</p>
    </div>
    <div class="theme-card">
      <div class="theme-icon">△</div>
      <h3 class="theme-title">Quantum Transport</h3>
      <p class="theme-desc">Low-temperature quantum phenomena — weak localisation, universal conductance fluctuations, and quantum critical behaviour at the Dirac point.</p>
    </div>
    <div class="theme-card">
      <div class="theme-icon">⬡</div>
      <h3 class="theme-title">Device Fabrication</h3>
      <p class="theme-desc">Dry-transfer stacking of 2D crystals, hBN encapsulation, nanofabrication via e-beam lithography, and ultra-clean van der Waals assembly.</p>
    </div>
    <div class="theme-card">
      <div class="theme-icon">∿</div>
      <h3 class="theme-title">Thermal Transport</h3>
      <p class="theme-desc">Simultaneous measurement of electrical and thermal conductance to study Wiedemann–Franz violations and heat flow in correlated electron systems.</p>
    </div>
  </div>
</section>

<!-- CONTACT -->
<section id="contact" class="contact-section">
  <div>
    <div class="section-label">Contact</div>
    <a href="mailto:akash_gugnani@iisc.ac.in" class="contact-email">akash_gugnani@iisc.ac.in</a>
  </div>
  <div class="contact-links">
    <a href="https://github.com/akash_gugnani" target="_blank" class="contact-link">GitHub</a>
    <a href="https://arxiv.org/abs/2508.10846" target="_blank" class="contact-link">arXiv</a>
    <a href="https://physics.iisc.ac.in/" target="_blank" class="contact-link">IISc Physics</a>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <p>© 2026 Akash Gugnani</p>
  <p>Department of Physics · Indian Institute of Science · Bangalore</p>
</footer>

</body>
</html>
