<head>
    {MobileAppHeaders}
    <meta charset="utf-8">
    <title>@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@{Title}{block:SearchPage} ({lang:Search results for SearchQuery}){/block:SearchPage}{block:PermalinkPage}{block:PostSummary} — {PostSummary}{/block:PostSummary}{/block:PermalinkPage}</title>
    {block:Description}
    <meta name="description" content="{MetaDescription}">
    {/block:Description}

    {block:Hidden}
    <meta name="if:Sliding header" content="1">
    <meta name="if:Show navigation" content="1">
    <meta name="if:Endless scrolling" content="1">
    <meta name="if:Syntax highlighting" content="0">
    <meta name="select:Layout" content="regular" title="Regular">
    <meta name="select:Layout" content="narrow" title="Narrow">
    <meta name="select:Layout" content="grid" title="Grid">
    <meta name="if:Related Posts" content="1">
    <meta name="text:Disqus shortname" content="">
    <meta name="text:Google analytics ID" content="">
    {/block:Hidden}

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="{Favicon}">
    <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}">
    <link rel="alternate" type="application/rss+xml" href="{RSS}">

    <link rel="stylesheet" href="http://static.tumblr.com/05o0pke/yeTnx9gi9/main-min.css">
    {block:IfSyntaxHighlighting}
    <link rel="stylesheet" href="http://static.tumblr.com/ehm1tdz/2VWnye81h/tumblr-highlightjs.css">
    {/block:IfSyntaxHighlighting}

    <!-- HTML5 Shiv -->
    <!--[if lt IE 9]>
        <script src="http://static.tumblr.com/hriofhd/Qj0m8pn7q/html5shiv.js"></script>
    <![endif]-->

    <style>
        /* Colors */
        body {
            background: {BackgroundColor};
        }

        .blog-title {
            font-family: {TitleFont}, "Helvetica Neue", HelveticaNeue, Arial, sans-serif;
            font-weight: {TitleFontWeight};
        }

        .blog-title a,
        .description,
        .search-no-results {
            color: {TitleColor};
        }

        a {
            color: {AccentColor};
        }

        #pagination a,
        .nav-wrapper .nav-item .label {
            color: {AccentColor};
        }

        #pagination a.next:after {
            border-left-color: {AccentColor};
        }

        #pagination a.previous:after {
            border-right-color: {AccentColor};
        }

        .loader .loader-bar {
            background-color: {TitleColor};
        }

        .header-image.cover {
            background-image: url({HeaderImage});
        }

        .user-avatar {
            background-color: {BackgroundColor};
            border-color: {BackgroundColor};
        }

        .avatar-style-square .user-avatar {
            -webkit-box-shadow: 0 0 0 4px {BackgroundColor};
            box-shadow: 0 0 0 4px {BackgroundColor};
        }

        .no-header-image .logo-wrapper,
        .contain-header-image .logo-wrapper {
            color: {AccentColor};
        }

        /* Adjust logo for light accents on light backgrounds */
        .light-on-light.no-header-image .logo-wrapper,
        .light-on-light.contain-header-image .logo-wrapper {
            color: #444;
        }

        /* Adjust logo for dark accents on dark backgrounds */
        .dark-on-dark.no-header-image .logo-wrapper,
        .dark-on-dark.contain-header-image .logo-wrapper {
            color: #fff;
        }

        .related-posts-wrapper > h2 {
            color: {TitleColor};
        }

        @media screen and (max-device-width: 568px) {
            .header-image.cover {
                background-image: url({HeaderImage-640});
                -webkit-background-size: cover;
                background-size: cover;
            }

            .avatar-style-square .user-avatar {
                -webkit-box-shadow: 0 0 0 3px {BackgroundColor};
                -moz-box-shadow: 0 0 0 3px {BackgroundColor};
                box-shadow: 0 0 0 3px {BackgroundColor};
            }

        }

        /* Custom CSS */
        {CustomCSS}
    </style>
</head>