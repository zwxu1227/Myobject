<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Home</title>
    <link href="<c:url value="/static/css/bootstrap.css" />" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="/static/js/jquery.min.js" />"></script>
    <!-- Custom Theme files -->
    <link href="<c:url value="/static/css/style.css" />" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/magnific-popup.css"/>">
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
<script>
    var rootContext="<c:url value="/"/>";
</script>
<script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
}, false);

function hideURLbar() {
    window.scrollTo(0, 1);
} </script>
<!--start-smoth-scrolling-->
<script type="text/javascript" src="<c:url value="/static/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/js/easing.js"/>"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
</head>
<body>
<!-- header -->
<div class="main"  />
<div class="header"/>
<div class="container"/>
<div class="top-nav">
    <span class="menu"> </span>
    <ul>
        <li class="active"><a href="index.html">About us</a></li>
        <li><a href="what.html"> What we do</a></li>
        <li><a href="donate.html"> Donate </a></li>
        <li><a href="blog.html"> Blog</a></li>
        <li><a href="contact.html">Contact us</a></li>
        <div class="clearfix"></div>
    </ul>
</div>
<div style="float:right; margin-top: -20px; width: 80px; margin-right: -40px;">
    <a style="cursor: pointer;" href="<c:url value="/loginOut"/>" ><spring:message code="home.loginOut.loginOut"/></a>
</div>
<div class="search-box">
    <div id="sb-search" class="sb-search">
        <form>
            <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search"
                   id="search">
            <input class="sb-search-submit" type="submit" value="">
            <span class="sb-icon-search"> </span>
        </form>
    </div>
</div>
<script src="<c:url value="/static/js/classie.js"/>"></script>
<script src="<c:url value="/static/js/uisearch.js"/>"></script>
<script>
    new UISearch(document.getElementById('sb-search'));
</script>
<!-- //search-scripts -->
<div class="clearfix"></div>
</div>

<!-- script-for-nav -->
<script>
    $(document).ready(function () {
        $("span.menu").click(function () {
            $(".top-nav ul").slideToggle(300);
        });
    });
</script>
<!-- script-for-nav -->
<!-- /top-nav -->
<div class="clearfix"></div>
</div>
</div>
<!-- /header -->
<div class="banner">
    <div class="slider-caption">
        <h2>HELP HAND SErves Here</h2>
        <p> simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
            dummy text ever since the 1500s simply dummy text of the printing and typesetting industry. </p>
        <div class="learn-button">
            <a class="slide-btn" href="#">DONATE NOW</a>
        </div>
    </div>
</div>
<!-- slider -->
<!--/start-services-->
<div class="Service-section">
    <div class="container">
        <div class="service-grids">
            <div class="col-md-4 service-grid">
                <h3>Our Mission</h3>
                <p>The leap into electronic typesetting, remaining essentiallyunchanged.into electronic typesetting
                    essentiallyunchanged. unchanged. </p>
            </div>
            <div class="col-md-4 service-grid">
                <h3>Work done</h3>
                <p>The leap into electronic typesetting, remaining essentiallyunchanged.into electronic typesetting
                    essentiallyunchanged. unchanged. </p>
            </div>
            <div class="col-md-4 service-grid">
                <h3>How to help</h3>
                <p>The leap into electronic typesetting, remaining essentiallyunchanged.into electronic typesetting,
                    essentiallyunchanged. unchanged. </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--/start-stories-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/">企业网站模板</a></div>
<div class="Stories-section">
    <div class="container">
        <div class="ad728x90" style="text-align:center">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- w3layouts_demo_728x90 -->
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-9153409599391170"
                 data-ad-slot="8639520288"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <h3>TRUE STRORIES A HEAD</h3>
        <div class="story-grids">
            <div class="story-grid one">
                <div class="col-md-9 story-grid-text">
                    <p><img src="<c:url value="/static/images/u-qt.png" />" title=""/>It was popularised in the 1960s
                        with the release of Letraset sheets containing Lorem
                        Ipsum passages, and more recently with desktop publishing software like Aldus PageMakerincluding
                        versions of Lorem Ipsum. <img src="<c:url value="/static/images/d-qt.png"/>" title=""/></p>
                    <a class="story-btn" href="#">Read More</a>
                </div>
                <div class="col-md-3 story-grid-img">
                    <img src="<c:url value="/static/images/c1.png" />" title=""/>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="story-grid two">
                <div class="col-md-9 story-grid-text">
                    <p><img src="<c:url value="/static/images/u-qt.png" />" title=""/>It was popularised in the 1960s
                        with the release of Letraset sheets containing Lorem
                        Ipsum passages, and more recently with desktop publishing software like Aldus PageMakerincluding
                        versions of Lorem Ipsum. <img src="<c:url value="/static/images/d-qt.png" />" title=""/></p>
                    <a class="story-btn" href="#">Read More</a>
                </div>
                <div class="col-md-3 story-grid-img">
                    <img src="<c:url value="/static/images/c2.jpg"/>" title=""/>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="story-grid three">
                <div class="col-md-9 story-grid-text">
                    <p><img src="<c:url value="/static/images/u-qt.png"/>" title=""/> It was popularised in the 1960s
                        with the release of Letraset sheets containing Lorem
                        Ipsum passages, and more recently with desktop publishing software like Aldus PageMakerincluding
                        versions of Lorem Ipsum. <img src="<c:url value="/static/images/d-qt.png" />" title=""/></p>
                    <a class="story-btn" href="#">Read More</a>
                </div>
                <div class="col-md-3 story-grid-img">
                    <img src="<c:url value="/static/images/c3.png"/>" title=""/>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!--start-parts-->
<div class="parts-section">
    <div class="container">
        <div class="ad728x90" style="text-align:center">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- w3layouts_demo_728x90 -->
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-9153409599391170"
                 data-ad-slot="8639520288"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <div class="part-grids">
            <div class="col-md-4 part-grid">
                <i class="icon1"> </i>
                <h3>VOLUPTATEM</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="col-md-4 part-grid">
                <i class="icon2"> </i>
                <h3>DOLOREMQUE</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="col-md-4 part-grid">
                <i class="icon3"> </i>
                <h3>LAUDANTIUM</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="part-grids">
            <div class="col-md-4 part-grid">
                <i class="icon4"> </i>
                <h3>VOLUPTATEM</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="col-md-4 part-grid">
                <i class="icon5"> </i>
                <h3>DOLOREMQUE</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="col-md-4 part-grid">
                <i class="icon6"> </i>
                <h3>LAUDANTIUM</h3>
                <p>It is a long established fact that a reader will be distracted by the readable </p>
                <a class="view-btn" href="#">view</a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div id="gallery" class="Gallery">
    <div class="container">
        <div class="ad728x90" style="text-align:center">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- w3layouts_demo_728x90 -->
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-9153409599391170"
                 data-ad-slot="8639520288"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <div class="gallery-head">
            <h3>We Care For</h3>
        </div>
        <div class="section group">
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop1.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g1.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop2.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g2.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop3.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g3.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="section group">
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop4.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g4.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop5.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g5.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="col-md-4 gallery-box">
                <div id="nivo-lightbox-demo"><p><a href="<c:url value="/static/images/pop6.png" />"
                                                   data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span
                        class="rollover1"> </span></a></p></div>
                <img src="<c:url value="/static/images/g6.png" />" alt="">
                <div class="para_s">
                    <h4>Richard july</h4>
                    <p>Lorem Ipsy Dolor Site Dummy</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <script type="text/javascript" src="<c:url value="/static/js/nivo-lightbox.min.js"/> "></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#nivo-lightbox-demo a').nivoLightbox({effect: 'fade'});
            });
        </script>
    </div>
</div>
<!--//End-Gallery-->
<!--strat-image-cursuals-->
<div class="scroll-slider">
    <div class="container">
        <div class="nbs-flexisel-container">
            <div class="nbs-flexisel-inner">
                <ul class="flexiselDemo3 nbs-flexisel-ul" style="left: -253.6px; display: block;">
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;"><img
                            src="<c:url value="/static/images/s1.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;"><img
                            src="<c:url value="/static/images/s4.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s2.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s3.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s4.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s1.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s2.png" />"></li>
                    <li onclick="location.href='#';" class="nbs-flexisel-item" style="width: 253.6px;">
                        <img src="<c:url value="/static/images/s2.png" />"></li>
                </ul>
                <div class="nbs-flexisel-nav-left" style="top: 21.5px;"></div>
                <div class="nbs-flexisel-nav-right" style="top: 21.5px;"></div>
            </div>
        </div>
        <div class="clear"></div>
        <!--strat-image-cursuals-->
        <script type="text/javascript" src="<c:url value="/static/js/jquery.flexisel.js"/>"></script>
        <!--End-image-cursuals-->
        <script type="text/javascript">
            $(window).load(function () {
                $(".flexiselDemo3").flexisel({
                    visibleItems: 5,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });
            });
        </script>
    </div>
</div>

<!--/start-footer-->
<div class="footer">
    <div class="container">

        <div class="footer-grids">
            <div class="col-md-4 footer-grid-icons">
                <h3>Follow Us:</h3>
                <ul>
                    <li><a class="twitter" href="#"><span> </span></a></li>
                    <li><a class="fb" href="#"><span> </span></a></li>
                    <li><a class="you" href="#"><span> </span></a></li>
                    <li><a class="in" href="#"><span> </span></a></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="col-md-4 footer-grid-text">
                <h3>Join our news letter</h3>
                <p>Lorem Ipsum is simply dummy text of theprinting and typesetting industry.</p>
                form method="post" action="contact-post.html">
                <a class="sign-btn" href="signup.html">Sign up</a>
            </div>
            <div class="col-md-4 copy-right">
                <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a
                        href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a
                        href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//End-footer-->
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
        containerID: 'toTop', // fading element id
        containerHoverID: 'toTopHover', // fading element hover id
        scrollSpeed: 1200,
        easingType: 'linear'
        };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<a href="#" id="toTop" style="display: block;">
    <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>