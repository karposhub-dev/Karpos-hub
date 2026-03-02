<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Karpos Hub - Fresh Fruits Delivered to You</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --color-dark: #1a1a1a;
            --color-dark-gray: #4a4a4a;
            --color-medium-gray: #6b6b6b;
            --color-light-gray: #f5f5f5;
            --color-white: #ffffff;
            --color-accent: #2d2d2d;
            --font-serif: 'Playfair Display', serif;
            --font-sans: 'Inter', sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: var(--font-sans);
            color: var(--color-dark);
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Navigation */
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            z-index: 1000;
            padding: 1.25rem 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 1px 3px rgba(0,0,0,0.05);
        }

        .logo {
            font-family: var(--font-serif);
            font-size: 1.75rem;
            font-weight: 600;
            color: var(--color-dark);
            text-decoration: none;
            letter-spacing: -0.02em;
        }

        .nav-links {
            display: flex;
            gap: 2.5rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--color-dark);
            font-size: 0.95rem;
            font-weight: 500;
            transition: opacity 0.3s;
        }

        .nav-links a:hover {
            opacity: 0.7;
        }

        .btn-primary {
            background: var(--color-dark);
            color: var(--color-white);
            padding: 0.875rem 1.75rem;
            border-radius: 50px;
            text-decoration: none;
            font-size: 0.95rem;
            font-weight: 500;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            display: inline-block;
        }

        .btn-primary:hover {
            background: var(--color-medium-gray);
            transform: translateY(-2px);
        }

        .btn-large {
            padding: 1.125rem 2.5rem;
            font-size: 1.1rem;
        }

        /* Hero Section */
        .hero {
            margin-top: 80px;
            min-height: 90vh;
            display: flex;
            align-items: center;
            background: linear-gradient(135deg, #f8f8f8 0%, #fff 100%);
            position: relative;
            overflow: hidden;
        }

        .hero-bg {
            position: absolute;
            right: -10%;
            top: 50%;
            transform: translateY(-50%);
            width: 60%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=1200&q=80') center/cover;
            opacity: 0.15;
            filter: blur(2px);
        }

        .hero-content {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 5%;
            position: relative;
            z-index: 1;
            width: 100%;
        }

        .hero h1 {
            font-family: var(--font-serif);
            font-size: clamp(2.5rem, 5vw, 4.5rem);
            font-weight: 500;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            max-width: 600px;
            color: var(--color-dark);
        }

        .hero p {
            font-size: 1.25rem;
            color: var(--color-dark-gray);
            max-width: 550px;
            margin-bottom: 2.5rem;
            line-height: 1.6;
        }

        /* Section Styles */
        section {
            padding: 6rem 5%;
        }

        .section-header {
            text-align: center;
            max-width: 800px;
            margin: 0 auto 4rem;
        }

        .section-label {
            font-size: 0.875rem;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: var(--color-medium-gray);
            margin-bottom: 1rem;
            display: block;
        }

        .section-title {
            font-family: var(--font-serif);
            font-size: clamp(2rem, 4vw, 3.5rem);
            font-weight: 500;
            margin-bottom: 1.25rem;
            line-height: 1.2;
        }

        .section-subtitle {
            font-size: 1.125rem;
            color: var(--color-dark-gray);
            line-height: 1.7;
        }

        /* Dark Sections */
        .dark-section {
            background: var(--color-dark-gray);
            color: var(--color-white);
        }

        .dark-section .section-label,
        .dark-section .section-subtitle {
            color: rgba(255, 255, 255, 0.7);
        }

        /* Values Section */
        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .value-card {
            text-align: center;
        }

        .value-card h3 {
            font-family: var(--font-serif);
            font-size: 2rem;
            font-weight: 500;
            margin-bottom: 1.25rem;
        }

        .value-card p {
            color: var(--color-dark-gray);
            line-height: 1.8;
            font-size: 1rem;
        }

        .dark-section .value-card p {
            color: rgba(255, 255, 255, 0.8);
        }

        /* About Statement */
        .statement {
            background: var(--color-dark);
            color: var(--color-white);
            padding: 8rem 5%;
        }

        .statement-content {
            max-width: 1000px;
            margin: 0 auto;
        }

        .statement p {
            font-family: var(--font-serif);
            font-size: clamp(1.5rem, 3vw, 2.5rem);
            line-height: 1.4;
            font-weight: 400;
        }

        /* Deals Section */
        .deals-section {
            background: var(--color-dark-gray);
            color: var(--color-white);
            padding: 6rem 5%;
        }

        .deals-content {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
        }

        .deals-text h2 {
            font-family: var(--font-serif);
            font-size: clamp(2rem, 4vw, 3rem);
            margin-bottom: 1.5rem;
            line-height: 1.2;
        }

        .deals-text p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 1.125rem;
            line-height: 1.7;
        }

        .deals-images {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }

        .deals-images img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .deals-images img:last-child {
            grid-column: span 2;
            height: 250px;
        }

        /* Gallery Section */
        .gallery-section {
            padding: 0;
            overflow: hidden;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            height: 500px;
        }

        .gallery-item {
            position: relative;
            overflow: hidden;
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .gallery-item:hover img {
            transform: scale(1.05);
        }

        /* Services Section */
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .service-card {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            align-items: center;
        }

        .service-card img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 12px;
        }

        .service-content h3 {
            font-family: var(--font-serif);
            font-size: 1.75rem;
            margin-bottom: 1rem;
            font-weight: 500;
        }

        .service-content p {
            color: var(--color-dark-gray);
            line-height: 1.7;
        }

        /* Collections Section */
        .collections-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 3rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .collection-card {
            position: relative;
            overflow: hidden;
            border-radius: 12px;
            aspect-ratio: 4/3;
        }

        .collection-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .collection-card:hover img {
            transform: scale(1.05);
        }

        .collection-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 2rem;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
            color: white;
        }

        .collection-overlay h3 {
            font-family: var(--font-serif);
            font-size: 1.5rem;
            margin-bottom: 0.5rem;
        }

        /* Testimonials */
        .testimonials-section {
            background: var(--color-dark-gray);
            color: var(--color-white);
            padding: 6rem 5%;
            position: relative;
        }

        .testimonial-slider {
            max-width: 900px;
            margin: 0 auto;
            position: relative;
        }

        .testimonial {
            text-align: center;
            display: none;
            animation: fadeIn 0.5s;
        }

        .testimonial.active {
            display: block;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .testimonial-avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 2rem;
            border: 3px solid rgba(255,255,255,0.2);
        }

        .testimonial-text {
            font-family: var(--font-serif);
            font-size: clamp(1.25rem, 2.5vw, 1.75rem);
            line-height: 1.6;
            margin-bottom: 2rem;
            font-weight: 400;
        }

        .testimonial-author {
            font-size: 1rem;
            opacity: 0.8;
        }

        .slider-nav {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: white;
            font-size: 2rem;
            cursor: pointer;
            padding: 1rem;
            opacity: 0.6;
            transition: opacity 0.3s;
        }

        .slider-nav:hover {
            opacity: 1;
        }

        .slider-nav.prev { left: -4rem; }
        .slider-nav.next { right: -4rem; }

        /* FAQ Section */
        .faq-section {
            max-width: 900px;
            margin: 0 auto;
        }

        .faq-item {
            border-bottom: 1px solid #e0e0e0;
            padding: 1.5rem 0;
        }

        .faq-question {
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
            font-family: var(--font-serif);
            font-size: 1.25rem;
            font-weight: 500;
            padding-right: 1rem;
        }

        .faq-question::after {
            content: '⌄';
            font-size: 1.5rem;
            transition: transform 0.3s;
        }

        .faq-item.active .faq-question::after {
            transform: rotate(180deg);
        }

        .faq-answer {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease, padding 0.3s ease;
            color: var(--color-dark-gray);
            line-height: 1.7;
        }

        .faq-item.active .faq-answer {
            max-height: 200px;
            padding-top: 1rem;
        }

        /* Footer */
        footer {
            background: var(--color-dark);
            color: var(--color-white);
            padding: 4rem 5%;
            text-align: center;
        }

        .footer-content {
            max-width: 600px;
            margin: 0 auto;
        }

        .footer-logo {
            font-family: var(--font-serif);
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .footer-text {
            color: rgba(255,255,255,0.7);
            margin-bottom: 2rem;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .social-links a {
            color: white;
            text-decoration: none;
            opacity: 0.7;
            transition: opacity 0.3s;
        }

        .social-links a:hover {
            opacity: 1;
        }

        .copyright {
            color: rgba(255,255,255,0.5);
            font-size: 0.875rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .deals-content,
            .services-grid,
            .collections-grid {
                grid-template-columns: 1fr;
            }

            .service-card {
                grid-template-columns: 1fr;
            }

            .gallery-grid {
                grid-template-columns: 1fr;
                height: auto;
            }

            .gallery-item {
                height: 300px;
            }

            .slider-nav.prev { left: 0; }
            .slider-nav.next { right: 0; }

            section {
                padding: 4rem 5%;
            }
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav>
        <a href="#" class="logo">Karpos hub</a>
        <div class="nav-links">
            <a href="#about">About</a>
            <a href="#services">Services</a>
            <a href="#collections">Collections</a>
            <a href="#faq">FAQ</a>
            <a href="#contact" class="btn-primary">Contact us</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-bg"></div>
        <div class="hero-content">
            <h1>Fresh Fruits Delivered to You</h1>
            <p>Experience the freshest fruits in Nairobi with Karpos hub. Enjoy quick, convenient online shopping and delivery services right to your doorstep.</p>
            <a href="#collections" class="btn-primary btn-large">Shop Now</a>
        </div>
    </section>

    <!-- Values Section -->
    <section id="about">
        <div class="values-grid">
            <div class="value-card">
                <h3>Quality Assurance</h3>
                <p>At Karpos hub, we are committed to providing only the freshest and highest quality fruits. We carefully select our produce to ensure that every delivery meets our stringent standards of excellence.</p>
            </div>
            <div class="value-card">
                <h3>Customer Satisfaction</h3>
                <p>Our customers are at the heart of everything we do. We strive to deliver exceptional service and create a seamless shopping experience, ensuring that our customers are always satisfied with their purchases.</p>
            </div>
            <div class="value-card">
                <h3>Sustainability</h3>
                <p>We believe in promoting sustainable practices that benefit both the environment and the communities we serve. By supporting local farmers and using eco-friendly packaging, we aim to reduce our carbon footprint.</p>
            </div>
        </div>
    </section>

    <!-- Statement Section -->
    <section class="statement">
        <div class="statement-content">
            <p>Karpos Hub delivers the freshest fruits straight from Nairobi's lush farms to your doorstep. Prioritizing quality and convenience, we ensure each fruit meets the highest standards. Experience a seamless online shopping journey and enjoy nature's bounty with our carefully curated selection. Freshness and flavor are just a click away.</p>
        </div>
    </section>

    <!-- Values Continued -->
    <section>
        <div class="values-grid" style="grid-template-columns: repeat(2, 1fr); max-width: 1000px;">
            <div class="value-card">
                <h3>Integrity</h3>
                <p>Honesty and transparency guide our business operations. We are committed to building trust with our customers by being open about our sourcing and pricing, ensuring that our customers always know what they are getting.</p>
            </div>
            <div class="value-card">
                <h3>Innovation</h3>
                <p>We continuously seek innovative solutions to enhance our services and meet the evolving needs of our customers. By embracing technology and new ideas, we aim to set new standards in the online fresh fruits market.</p>
            </div>
        </div>
    </section>

    <!-- Deals Section -->
    <section class="deals-section">
        <div class="deals-content">
            <div class="deals-text">
                <span class="section-label" style="color: rgba(255,255,255,0.6);">Taste Freshness</span>
                <h2>Discover Fresh Fruit Deals</h2>
                <p>Explore exceptional offers on premium, fresh fruits delivered to your doorstep, straight from local farms in Nairobi.</p>
            </div>
            <div class="deals-images">
                <img src="https://images.unsplash.com/photo-1542838132-92c53300491e?w=600&q=80" alt="Fresh produce market">
                <img src="https://images.unsplash.com/photo-1578916171728-46686eac8d58?w=600&q=80" alt="Online grocery shopping">
                <img src="https://images.unsplash.com/photo-1607082349566-187342175e2f?w=800&q=80" alt="Fresh fruit basket on laptop">
            </div>
        </div>
    </section>

    <!-- Gallery Section -->
    <section class="gallery-section">
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1533900298318-6b8da08a523e?w=800&q=80" alt="Fruit shop worker">
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1604719312566-8912e9227c6a?w=800&q=80" alt="Checking inventory">
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1583336130517-666693c0f4ae?w=800&q=80" alt="Customer service">
            </div>
        </div>
    </section>

    <!-- Fresh Bounty Section -->
    <section>
        <div class="section-header">
            <span class="section-label">Discover Freshness</span>
            <h2 class="section-title">Explore Our Fresh Bounty</h2>
            <p class="section-subtitle">Discover the finest selection of fresh, organic fruits sourced locally in Nairobi, delivered to your doorstep with care.</p>
        </div>
        <div class="gallery-grid" style="height: 400px; border-radius: 12px; overflow: hidden; margin-top: 3rem;">
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1619566636858-adf3ef46400b?w=800&q=80" alt="Fresh fruits display">
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1563744766-0f50f7a3c0e6?w=800&q=80" alt="Fruit selection">
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1591206369811-4eeb2f03bc95?w=800&q=80" alt="Market fresh">
            </div>
        </div>
    </section>

    <!-- Online Shopping Visual -->
    <section style="padding: 0; background: #f8f8f8;">
        <div style="max-width: 1400px; margin: 0 auto; padding: 4rem 5%;">
            <img src="https://images.unsplash.com/photo-1604719312566-8912e9227c6a?w=1400&q=80" alt="Online Grocery Store" style="width: 100%; border-radius: 16px; box-shadow: 0 20px 40px rgba(0,0,0,0.1);">
        </div>
    </section>

    <!-- Collections Section -->
    <section id="collections">
        <div class="section-header">
            <span class="section-label">Fruit Precision</span>
            <h2 class="section-title">Curated Fruit Collections for You</h2>
            <p class="section-subtitle">Explore our expertly curated selection of fresh fruits, delivered directly to your doorstep in Nairobi for ultimate convenience.</p>
        </div>
        <div class="collections-grid">
            <div class="collection-card">
                <img src="https://images.unsplash.com/photo-1615485290382-441e4d049cb5?w=800&q=80" alt="Vegetable box delivery">
                <div class="collection-overlay">
                    <h3>Fresh Produce Box</h3>
                    <p>Farm-fresh vegetables and fruits</p>
                </div>
            </div>
            <div class="collection-card">
                <img src="https://images.unsplash.com/photo-1519996529931-28324d5a630e?w=800&q=80" alt="Fruit basket">
                <div class="collection-overlay">
                    <h3>Premium Fruit Basket</h3>
                    <p>Hand-picked seasonal selection</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" style="background: var(--color-light-gray);">
        <div class="services-grid">
            <div class="service-card">
                <img src="https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=600&q=80" alt="Home delivery">
                <div class="service-content">
                    <h3>Fresh Fruit Home Delivery</h3>
                    <p>Enjoy fresh fruits delivered to your doorstep in Nairobi, ensuring maximum convenience and freshness.</p>
                </div>
            </div>
            <div class="service-card">
                <div class="service-content" style="order: 2;">
                    <h3>Customized Fruit Baskets</h3>
                    <p>Create personalized fruit baskets for gifts or events, tailored to suit your preferences and needs.</p>
                </div>
                <img src="https://images.unsplash.com/photo-1519996529931-28324d5a630e?w=600&q=80" alt="Custom baskets" style="order: 1;">
            </div>
            <div class="service-card">
                <img src="https://images.unsplash.com/photo-1606923829579-0cb981a83e2e?w=600&q=80" alt="Weekly subscription">
                <div class="service-content">
                    <h3>Weekly Fruit Subscription</h3>
                    <p>Subscribe for a regular supply of fresh fruits, with the option to customize your selection each week.</p>
                </div>
            </div>
            <div class="service-card">
                <div class="service-content" style="order: 2;">
                    <h3>Corporate Fruit Solutions</h3>
                    <p>Enhance workplace wellness with our corporate fruit delivery service, ideal for offices in Nairobi.</p>
                </div>
                <img src="https://images.unsplash.com/photo-1528825871115-3581a5387919?w=600&q=80" alt="Corporate fruits" style="order: 1;">
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials-section">
        <div class="section-header" style="margin-bottom: 3rem;">
            <span class="section-label" style="color: rgba(255,255,255,0.6);">Testimonials</span>
            <h2 class="section-title">See Why Nairobi Chooses Us for Freshness</h2>
            <p class="section-subtitle">Exceptional quality fruits and timely delivery. Karpos Hub's service exceeded our expectations! Highly recommended for fresh produce lovers.</p>
        </div>
        <div class="testimonial-slider">
            <button class="slider-nav prev" onclick="changeTestimonial(-1)">‹</button>
            
            <div class="testimonial active">
                <img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?w=200&q=80" alt="Sarah Njeri" class="testimonial-avatar">
                <p class="testimonial-text">"Karpos Hub has revolutionized how I buy fruits! The selection is diverse, and each delivery is consistently high-quality and fresh. Their commitment to excellent service makes them my top choice for fruit shopping. Nairobi is lucky to have such a reliable online store!"</p>
                <p class="testimonial-author">- Sarah Njeri</p>
            </div>
            
            <div class="testimonial">
                <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=200&q=80" alt="David Otieno" class="testimonial-avatar">
                <p class="testimonial-text">"Karpos Hub offers the freshest fruits I've ever ordered online. Their service is reliable, and I love how the fruits arrive in perfect condition! It's been a game changer for my family, knowing that we can count on such quality each time."</p>
                <p class="testimonial-author">- David Otieno</p>
            </div>
            
            <div class="testimonial">
                <img src="https://images.unsplash.com/photo-1589156280159-27698a70f29e?w=200&q=80" alt="Grace Mwangi" class="testimonial-avatar">
                <p class="testimonial-text">"Karpos Hub has completely elevated my fruit shopping experience! The quality of their produce is unmatched and delivery is always prompt. I love supporting this local business while enjoying fresh, delicious fruits every week. Highly recommend them to anyone in Nairobi!"</p>
                <p class="testimonial-author">- Grace Mwangi</p>
            </div>
            
            <button class="slider-nav next" onclick="changeTestimonial(1)">›</button>
        </div>
    </section>

    <!-- FAQ Section -->
    <section id="faq" class="faq-section">
        <div class="section-header">
            <span class="section-label">Fruitful Queries</span>
            <h2 class="section-title">Nairobi Fruit Shopping Guide</h2>
            <p class="section-subtitle">Discover a diverse selection of the freshest fruits delivered to your doorstep across Nairobi, ensuring top quality and convenience.</p>
        </div>
        
        <div class="faq-list" style="margin-top: 3rem;">
            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">How do I place an order on Karpos hub?</div>
                <div class="faq-answer">Simply browse our curated collections, add your desired fruits to the cart, and proceed to checkout. We accept various payment methods and offer flexible delivery slots.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">What delivery options are available at Karpos hub?</div>
                <div class="faq-answer">We offer same-day delivery for orders placed before 2 PM, next-day delivery, and scheduled weekly deliveries for our subscription customers. All deliveries are handled with care to ensure freshness.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">Can I schedule a specific delivery time for my order?</div>
                <div class="faq-answer">Yes! During checkout, you can select your preferred delivery time slot. We offer morning (9 AM - 12 PM), afternoon (12 PM - 4 PM), and evening (4 PM - 7 PM) slots to suit your schedule.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">What is the return policy for orders from Karpos hub?</div>
                <div class="faq-answer">We stand by our quality guarantee. If you're not satisfied with any item, contact us within 24 hours of delivery with photos, and we'll arrange a replacement or refund. Your satisfaction is our priority.</div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact">
        <div class="footer-content">
            <div class="footer-logo">Karpos hub</div>
            <p class="footer-text">Fresh fruits delivered with care across Nairobi. Experience the difference of farm-fresh quality.</p>
            <div class="social-links">
                <a href="#">Instagram</a>
                <a href="#">Facebook</a>
                <a href="#">Twitter</a>
                <a href="#">WhatsApp</a>
            </div>
            <p class="copyright">© 2024 Karpos Hub. All rights reserved. Nairobi, Kenya.</p>
        </div>
    </footer>

    <script>
        // Testimonial Slider
        let currentTestimonial = 0;
        const testimonials = document.querySelectorAll('.testimonial');
        
        function changeTestimonial(direction) {
            testimonials[currentTestimonial].classList.remove('active');
            currentTestimonial = (currentTestimonial + direction + testimonials.length) % testimonials.length;
            testimonials[currentTestimonial].classList.add('active');
        }

        // Auto-advance testimonials
        setInterval(() => changeTestimonial(1), 6000);

        // FAQ Accordion
        function toggleFaq(element) {
            const faqItem = element.parentElement;
            const isActive = faqItem.classList.contains('active');
            
            // Close all
            document.querySelectorAll('.faq-item').forEach(item => {
                item.classList.remove('active');
            });
            
            // Open clicked if it wasn't active
            if (!isActive) {
                faqItem.classList.add('active');
            }
        }

        // Smooth scroll for navigation
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // Navbar background on scroll
        window.addEventListener('scroll', () => {
            const nav = document.querySelector('nav');
            if (window.scrollY > 50) {
                nav.style.boxShadow = '0 2px 10px rgba(0,0,0,0.1)';
            } else {
                nav.style.boxShadow = '0 1px 3px rgba(0,0,0,0.05)';
            }
        });
    </script>

</body>
</html>
