<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gugnani | Experimental Physics & Science Comm</title>
    <style>
        /* CSS Styling - Defines the look and feel */
        :root {
            --bg-color: #fdfdfd;
            --text-color: #1a1a1a;
            --card-bg: #ffffff;
            --border-color: #e5e5e5;
            --tag-bg: #f0f0f0;
        }

        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--bg-color);
            color: var(--text-color);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 5rem 2rem;
        }

        /* Header Section */
        header {
            margin-bottom: 5rem;
            max-width: 900px;
        }

        h1 {
            font-size: 4.5rem;
            line-height: 1.05;
            margin: 0 0 1.5rem 0;
            letter-spacing: -0.03em;
        }

        .highlight {
            color: #555;
        }

        .intro {
            font-size: 1.75rem;
            line-height: 1.4;
            color: #444;
            font-weight: 400;
        }

        /* Project Grid Section */
        .projects-header {
            font-size: 2.5rem;
            margin-bottom: 2rem;
            border-bottom: 2px solid var(--text-color);
            padding-bottom: 0.5rem;
            display: inline-block;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 2.5rem;
        }

        /* Individual Cards */
        .card {
            background-color: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 16px;
            padding: 1.5rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 24px rgba(0,0,0,0.08);
        }

        /* Image Placeholder */
        .card-image {
            width: 100%;
            height: 220px;
            background-color: #e9ecef;
            border-radius: 12px;
            margin-bottom: 1.5rem;
            object-fit: cover;
            /* To add real images later, you will use an <img> tag inside this div */
        }

        .card h3 {
            font-size: 1.5rem;
            margin: 0 0 1rem 0;
            letter-spacing: -0.01em;
        }

        .card p {
            font-size: 1rem;
            line-height: 1.6;
            color: #555;
            margin: 0 0 2rem 0;
            flex-grow: 1; /* Pushes tags to the bottom */
        }

        /* Tags at the bottom of cards */
        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
        }

        .tag {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            padding: 0.4rem 0.8rem;
            background-color: var(--tag-bg);
            border-radius: 30px;
            font-weight: 600;
        }

        /* Responsive adjustments for mobile */
        @media (max-width: 768px) {
            h1 { font-size: 3rem; }
            .intro { font-size: 1.25rem; }
            .container { padding: 3rem 1.5rem; }
        }
    </style>
</head>
<body>

    <div class="container">
        <header>
            <h1>Hi, I am Gugnani, a <br><span class="highlight">Physicist & Technical Writer.</span></h1>
            <p class="intro">
                I am a PhD researcher in experimental condensed matter physics based in India. 
                Welcome to my digital space where I explore the physics of 2D materials and 
                focus on making complex scientific concepts accessible through clear communication.
            </p>
        </header>

        <h2 class="projects-header">Selected Work & Research</h2>
        
        <div class="grid">
            
            <article class="card">
                <div class="card-image" style="background-color: #dbeafe;"></div>
                <h3>Physical Review Letters</h3>
                <p>Lead author on the paper "Dynamically tunable hydrodynamic transport in boron-nitride-encapsulated graphene," detailing novel experimental findings in fluidic electron flow.</p>
                <div class="tags">
                    <span class="tag">Graphene</span>
                    <span class="tag">2D Materials</span>
                    <span class="tag">Publication</span>
                </div>
            </article>

            <article class="card">
                <div class="card-image" style="background-color: #dcfce7;"></div>
                <h3>Bambootronics</h3>
                <p>Developing interdisciplinary research and presenting a dedicated paper for the upcoming Bamboo Beyond Borders 2026 symposium.</p>
                <div class="tags">
                    <span class="tag">Symposium</span>
                    <span class="tag">Experimental Physics</span>
                </div>
            </article>

            <article class="card">
                <div class="card-image" style="background-color: #fef3c7;"></div>
                <h3>Science Communication</h3>
                <p>Translating dense academic research, including the physics of gas flow and Knudsen experiments, into digestible, engaging content for broader audiences.</p>
                <div class="tags">
                    <span class="tag">Technical Writing</span>
                    <span class="tag">Content Strategy</span>
                </div>
            </article>

             <article class="card">
                <div class="card-image" style="background-color: #fee2e2;"></div>
                <h3>RPGR2025 Toyama</h3>
                <p>Participated in the RPGR2025 conference in Japan, engaging with the global condensed matter community on the latest advancements in graphene research.</p>
                <div class="tags">
                    <span class="tag">Conference</span>
                    <span class="tag">Networking</span>
                </div>
            </article>

        </div>
    </div>

</body>
</html>
