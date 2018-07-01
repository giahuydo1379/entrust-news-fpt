
<!DOCTYPE html>
<html>
    <head>
    @include('frontend.layout.head')

    </head>
    <body>
    <header>
    @include('frontend.layout.header')
    </header>


     @yield('content')
    </body>
</html>

 
<script>
    var wow = new WOW({
        boxClass: 'wow', // animated element css class (default is wow)
        animateClass: 'animated', // animation css class (default is animated)
        offset: 0, // distance to the element when triggering the animation (default is 0)
        mobile: true, // trigger animations on mobile devices (default is true)
        live: true        // act on asynchronously loaded content (default is true)
    });
    wow.init();
    smoothScroll.init();
    $(function () {
        $('#back_to_top').hide();
        $(window).scroll(function () {
            if ($(this).scrollTop() > 0) {
                $('#back_to_top').removeClass().addClass('animated fadeInRight').show();
            } else {
                $('#back_to_top').removeClass().addClass('animated fadeOutRight').show();
            }
        });

        // scroll body to 0px on click

        $('#back_to_top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
    });
/*
    var Browser = navigator.userAgent;
    if (Browser.indexOf('MSIE') < 0) {
        $('.top_after').css("right", '0');
    }
	*/
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-66188625-1', 'auto');
  ga('send', 'pageview');

</script>
