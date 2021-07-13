<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Agenda</title>
    <link rel="shorcut icon" href="<?php echo base_url() . 'theme/images/icon.png' ?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/bootstrap.min.css' ?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/font-awesome.min.css' ?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/simple-line-icons.css' ?>">
    <!-- Calendar Css -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/fullcalendar.min.css' ?>" />
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick.css' ?>">
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick-theme.css' ?>">
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/owl.carousel.min.css' ?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url() . 'theme/css/style.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'theme/css/dataTables.bootstrap4.min.css' ?>" rel="stylesheet">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/magnific-popup.css' ?>">
    <!-- Image Hover CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'theme/css/normalize.css' ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'theme/css/set2.css' ?>" />
    <!-- Masonry Gallery -->
    <link href="<?php echo base_url() . 'theme/css/animated-masonry-gallery.css' ?>" rel="stylesheet" type="text/css" />
    <!--Social Share-->
    <link href="<?php echo base_url() . 'theme/css/jssocials.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'theme/css/jssocials-theme-flat.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'theme/css/bootstrap-responsive.css' ?>" rel="stylesheet">

    <style>
        .sharePopup {
            font-size: 11px;
        }

        .sharePopup a {
            font-size: 11px;
            color: #fff;
            text-decoration: none;
        }
    </style>
    <?php
    function limit_words($string, $word_limit)
    {
        $words = explode(" ", $string);
        return implode(" ", array_splice($words, 0, $word_limit));
    }
    ?>


    <style>
        /* === section services === */

        section#services h2 {}

        section#services .service-box h2 {}
    </style>


</head>




<!-- jQuery, Bootstrap JS. -->
<script src="<?php echo base_url() . 'theme/js/jquery.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/tether.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/bootstrap.min.js' ?>"></script>
<!-- Plugins -->
<script src="<?php echo base_url() . 'theme/js/slick.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/waypoints.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/counterup.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/owl.carousel.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/validate.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/tweetie.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/moment.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/fullcalendar.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/owl.carousel.min.js' ?>"></script>
<!-- Subscribe -->
<script src="<?php echo base_url() . 'theme/js/subscribe.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/contact.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/jquery-ui-1.10.4.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/jquery.isotope.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/animated-masonry-gallery.js' ?>"></script>
<!-- Script JS -->
<script src="<?php echo base_url() . 'theme/js/script.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/jssocials.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/jquery.dataTables.min.js' ?>"></script>
<script src="<?php echo base_url() . 'theme/js/dataTables.bootstrap4.min.js' ?>"></script>
<!-- Magnific popup JS -->
<script src="<?php echo base_url() . 'theme/js/jquery.magnific-popup.js' ?>"></script>
<script>
    $(document).ready(function() {
        $(".sharePopup").jsSocials({
            showCount: true,
            showLabel: true,
            shareIn: "popup",
            shares: [{
                    share: "twitter",
                    label: "Twitter"
                },
                {
                    share: "facebook",
                    label: "Facebook"
                },
                {
                    share: "googleplus",
                    label: "Google+"
                },
                {
                    share: "linkedin",
                    label: "Linked In"
                },
                {
                    share: "pinterest",
                    label: "Pinterest"
                }
            ]
        });
    });
</script>
<script>
    $(document).ready(function() {
        $('#display').DataTable();
    });
</script>