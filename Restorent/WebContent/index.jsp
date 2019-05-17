<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="desktop landscape"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    
    <title>Hi Bhubaneswar</title>
    <!-- mobile setup -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-title" content="Hi&#39;Bhubaneswar">
    <!-- stylesheet -->
    <link rel="stylesheet" href="./Login_files/style-default.css">
    <!-- Page description -->
    <meta name="description" content="">
    <!-- Facebook -->
    <meta property="og:title" content="Restaurant">
    <meta property="og:type" content="article">
    <meta property="og:url" content="index.html">
    <meta property="og:description" content="Here the excerp for this page">
    <!-- Twitter -->
    <meta name="twitter:title" content="Restaurant">
    <meta name="twitter:description" content="Here the excerp for this page">
    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="72x72" href="http://nucigent.in/clients/hibbsr/assets/img/favicons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="120x120" href="http://nucigent.in/clients/hibbsr/assets/img/favicons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="http://nucigent.in/clients/hibbsr/assets/img/favicons/apple-touch-icon-152x152.png">
    <link rel="icon" type="image/png" href="http://nucigent.in/clients/hibbsr/assets/img/favicons/favicon.png" sizes="96x96">
</head>
<body>
    <!-- Top shadow -->
    <div class="shadow"></div>
    <!-- end top shadow -->
    <!-- The splash screen -->
    <div id="splash" class="slide-from-top-in">
        <div class="loader">
            <img class="splash-logo visible" src="./Login_files/hi-bbsr-logo1.png">
            <div class="line"></div>
        </div>
    </div>
    <!-- End of splash screen -->
    <div id="wrapper">
        <!-- main content -->
        <main class="">
            <header>
                <a href="http://nucigent.in/clients/hibbsr/#" class="logo">
                    <h1>Restaurant</h1>
                    <img src="./Login_files/hi-bbsr-logo1.png" alt="Restaurant">
                </a>
            </header>
		<div class="login-wrapper">	
			<div class="login">
				<h2>Login</h2>
				<form class="" action="login" method="get">
					<select class="select-member" name="type">
						<option>Choose Login</option>
						<option value="Waiter">Captain</option>
						<option value="Chef">Kitchen/Chef</option>
						<option value="Admin">Admin</option>
						<option value="Billing">Billing</option>
					</select>
					<input class="" placeholder="Username" type="text" name="uname">
					<input class="" type="password" name="pwd" placeholder="pass">
					<input type="submit" value="Submit" class="submit-btn">
				</form> 
			</div>
		</div>
        </main>
        <!-- end of main content -->
    </div>
    <!-- The slideshow -->
    <ul id="slideshow" data-speed="6000">
        <li class="" style="background-image: url(&quot;assets/img/slideshow/restaurant/1.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/1.jpg" alt="slideshow image">
        </li>
        <li class="visible" style="background-image: url(&quot;assets/img/slideshow/restaurant/2.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/2.jpg" alt="slideshow image">
        </li>
        <li class="visible" style="background-image: url(&quot;assets/img/slideshow/restaurant/3.jpg&quot;); display: block; z-index: 1;">
            <img src="./Login_files/3.jpg" alt="slideshow image">
        </li>
        <li class="" style="background-image: url(&quot;assets/img/slideshow/restaurant/4.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/4.jpg" alt="slideshow image">
        </li>
        <li class="" style="background-image: url(&quot;assets/img/slideshow/restaurant/5.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/5.jpg" alt="slideshow image">
        </li>
        <li class="" style="background-image: url(&quot;assets/img/slideshow/restaurant/6.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/6.jpg" alt="slideshow image">
        </li>
        <li class="" style="background-image: url(&quot;assets/img/slideshow/restaurant/7.jpg&quot;); display: block; z-index: 0;">
            <img src="./Login_files/7.jpg" alt="slideshow image">
        </li>
    </ul>
    <!-- end of slideshow -->

    <!-- Root element of PhotoSwipe. Must have class pswp. -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

        <!-- Background of PhotoSwipe.
         It's a separate element as animating opacity is faster than rgba(). -->
        <div class="pswp__bg"></div>

        <!-- Slides wrapper with overflow:hidden. -->
        <div class="pswp__scroll-wrap">

            <!-- Container that holds slides.
            PhotoSwipe keeps only 3 of them in the DOM to save memory.
            Don't modify these 3 pswp__item elements, data is added later on. -->
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
            <div class="pswp__ui pswp__ui--hidden">

                <div class="pswp__top-bar">

                    <!--  Controls are self-explanatory. Order can be changed. -->

                    <div class="pswp__counter"></div>

                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                    <button class="pswp__button pswp__button--share" title="Share"></button>

                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                    <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                    <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                    <!-- element will get class pswp__preloader--active when preloader is running -->
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div>

                <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>

                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>

                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>

            </div>

        </div>

    </div>
    <!-- scripts -->
    <script async="" src="./Login_files/analytics.js.download"></script><script type="text/javascript" src="./Login_files/pack.js.download"></script>
    <!-- end of scripts -->

    <script type="application/javascript">
        $(document).ready(function() {
            var currentUrl = window.location.href;

            $('body').on('pageActivated', function() {
                $('.back', '#wrapper').attr('href', currentUrl);
            });
        });
    </script>

    <script>
        (function(i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function() {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-72227788-1', 'auto');
        ga('send', 'pageview');
    </script>


</body></html>