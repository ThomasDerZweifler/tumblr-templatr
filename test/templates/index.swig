<!DOCTYPE html>
<!--[if IE 8]><html class="lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]><html class="lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!--> <html> <!--<![endif]-->
    {% include "./head.swig" %}

    <body data-urlencoded-name="{URLEncodedName}" class="{select:Layout}{block:IndexPage} index-page{/block:IndexPage}{block:PermalinkPage} permalink{/block:PermalinkPage}{block:SearchPage} search-page{block:NoSearchResults} no-results{/block:NoSearchResults}{/block:SearchPage}{block:HideHeaderImage} no-header-image{/block:HideHeaderImage}{block:NoStretchHeaderImage} contain-header-image{/block:NoStretchHeaderImage}{block:IfRelatedPosts} display-related-posts{/block:IfRelatedPosts}">

        {% include "./app-nag.swig" %}

        <section id="page">
            <div class="logo-wrapper">
                <a class="t-logo" href="https://www.tumblr.com/?referring_blog={URLEncodedName}&amp;referer=optica" target="_blank">
                    <svg class="svg-logo" width="29px" height="39px" viewBox="0 0 29 39" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <path class="large-shadow" d="M21.9956664,26.3 L21.9956664,19.0055544 L27.9954227,19.0055542 L27.9954227,13.0048828 L27.9954227,11.0108643 L23.522766,11.0108643 L23.5540067,11.6669807 L23.7388305,15.5486452 L17.6832886,15.4792482 L17.4,24 C17.5,26.3 18.8,26.5 19.8,26.5 C20.2,26.5 21.4956664,26.4 21.9956664,26.3 Z M18.7154541,4.00225829 L17.4,2.9 L17.4,8 L22.000122,7.34490957 L22.000122,4.00225829 L18.7154541,4.00225829 Z M24.3,29.6 L24.9,31.5 C23.8,32.9 21,34 18.4,34 L18.1,34 C16.3,34 14.8,33.7 13.6,33.2 C15,35.4 17.5999998,38.0021971 21.7999998,38.0021971 C21.7999996,38.6099361 22.0022113,38.0021971 22.0999998,38.0021971 C24.6999998,38.0021971 27.4,36.1 28.6,34.7 L26.7,28.8 C26,29.2 25.1,29.5 24.3,29.6 Z" id="Shape" fill="#000000"></path>
                            <path class="inner" d="M18.5,33.6 L18.3,33.6 C11.1,33.6 9,28.2005493 9,25.0005493 L9,15 C8.58245849,15 4.99298096,15 5,15 L4.99298096,10.0285034 C4.99298096,9.92850342 5.1,9.9 5.2,9.9 C8.9,8.5 11.3,6.7 11.9,2.3 C11.8,2 12,2 12,2 L16.8,2 L17,2 L17,9.00006104 L23.012207,9.00006104 L23.012207,15 L17,15 L17,24.0839844 C17,26.1839844 17.8,27.3 19.8,27.3 C20.6,27.3 21.5,27.1 22.4,26.8 C22.5,26.8 22.6,26.8 22.6,26.9 L24.1,31.3 L24.1,31.7 C23,32.8 20.7,33.6 18.5,33.6 Z"></path>
                            <path class="outer" d="M26.1,32.2 L26.3,31.9 L23.9,25.1 C23.9,25 23.8,25 23.8,25 L19.2,25 C19.1,25 19,25.1 19,25 C18.9,24.8 19,24.4 19,24.1 L19,17 L25,17 L25,7 C25,7 19,7 19,7 L19,0 L8,0 C7.3,0 6.4,0.8 6.3,1.8 C5.8,5.9 4.1,7.5 0.5,8.7 L0.1,8.8 C0,8.9 0,8.9 0,9 L0,17.0000006 C0,17.1000006 0.1,17 0.1,17 L4,17 L4,24.8 C4,31.8 8.46560059,36.0067139 17.3656006,36.0067139 C22.0656006,36.0067139 25,33.7 26.1,32.2 Z M18.5,33.6 L18.3,33.6 C11.1,33.6 9,28.2005493 9,25.0005493 L9,15 C8.58245849,15 4.99298096,15 5,15 L4.99298096,10.0285034 C4.99298096,9.92850342 5.1,9.9 5.2,9.9 C8.9,8.5 11.3,6.7 11.9,2.3 C11.8,2 12,2 12,2 L16.8,2 L17,2 L17,9.00006104 L23.012207,9.00006104 L23.012207,15 L17,15 L17,24.0839844 C17,26.1839844 17.8,27.3 19.8,27.3 C20.6,27.3 21.5,27.1 22.4,26.8 C22.5,26.8 22.6,26.8 22.6,26.9 L24.1,31.3 L24.1,31.7 C23,32.8 20.7,33.6 18.5,33.6 Z"></path>
                            <path class="small-shadow" d="M4,19 L7,19 L7,17.0833333 C7,17 6.9,17 6.9,17 L4,17 L4,19 L4,19 Z" opacity="0.5" fill="#37465D"></path>
                        </g>
                    </svg>
                </a>
                <div class="search-wrapper">
                    <form action="/search" method="get" id="search">
                        <label class="search-field-label">
                            <input type="text" class="search-field" name="q" id="q" placeholder="{lang:Search Blog}" value="{SearchQuery}" autocomplete="off">
                        </label>
                    </form>
                </div>
            </div>
            <div class="header-wrapper
                {block:HideTitle}{block:HideDescription}no-title-desc {/block:HideDescription}{/block:HideTitle}
                {block:HideHeaderImage}no-image {/block:HideHeaderImage}
                {block:HideAvatar}avatar-hidden{/block:HideAvatar}
                {block:ShowAvatar}avatar-style-{AvatarShape}{/block:ShowAvatar}">

                <header id="header">
                    {block:ShowHeaderImage}
                    <div class="header-image-wrapper {block:NoStretchHeaderImage}contain{/block:NoStretchHeaderImage}">
                        <a href="/" class="header-image {block:IfSlidingHeader}parallax{/block:IfSlidingHeader} {block:StretchHeaderImage}cover{/block:StretchHeaderImage} {block:NoStretchHeaderImage}contain{/block:NoStretchHeaderImage}" data-bg-image="{HeaderImage}">
                            {block:NoStretchHeaderImage}
                            <img src="{HeaderImage}" alt="">
                            {/block:NoStretchHeaderImage}
                        </a>
                        <div class="loader-bg"></div>
                    </div>
                    {/block:ShowHeaderImage}

                    <div class="blog-title-wrapper content">
                        <figure class="avatar-wrapper{block:IndexPage} animate{/block:IndexPage}">
                            <a href="/" style="background-image: url({PortraitURL-128})" class="user-avatar"><img src="{PortraitURL-128}" alt="" class="print-only invisible"></a>
                        </figure>

                        <div class="title-group{block:IndexPage} animate{/block:IndexPage}">
                            {block:ShowTitle}
                            <h1 class="blog-title"><a href="/">{Title}</a></h1>
                            {/block:ShowTitle}
                            {block:ShowDescription}
                            <span class="description">
                                {Description}
                            </span>
                            {/block:ShowDescription}

                            {block:IfShowNavigation}
                                <div class="{block:HideTitle}{block:HideDescription}no-title-desc {/block:HideDescription}{/block:HideTitle}nav-wrapper content">
                                    <nav class="nav-menu">
                                        <ul class="inline-nav">
                                            {block:HasPages}
                                                {block:Pages}
                                                <li class="nav-item nav-item--page">
                                                    <a href="{URL}" class="label">{Label}</a>
                                                </li>
                                                {/block:Pages}
                                            {/block:HasPages}
                                            {block:AskEnabled}
                                                <li class="nav-item nav-item--ask">
                                                    <a href="/ask" class="label">{AskLabel}</a>
                                                </li>
                                            {/block:AskEnabled}
                                            {block:SubmissionsEnabled}
                                                <li class="nav-item nav-item--submit">
                                                    <a href="/submit" class="label">{SubmitLabel}</a>
                                                </li>
                                            {/block:SubmissionsEnabled}
                                            <li class="nav-item nav-item--archive">
                                                <a href="/archive" class="label">{lang:Archive}</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            {/block:IfShowNavigation}
                        </div>
                    </div>
                </header>
            </div>

            {block:SearchPage}
                {block:NoSearchResults}
                <div class="search-no-results content">
                    {lang:Sorry no search results found}.
                </div>
                {/block:NoSearchResults}
            {/block:SearchPage}
            
            <section id="posts" class="content clearfix {block:HideTitle}{block:HideDescription}no-title-desc {/block:HideDescription}{/block:HideTitle}{block:HideHeaderImage}no-image {/block:HideHeaderImage} {block:ShowAvatar}avatar-style-{AvatarShape}{/block:ShowAvatar} {block:HideAvatar}avatar-hidden{/block:HideAvatar} {block:IfShowNavigation}show-nav{/block:IfShowNavigation}">

                <div data-page-id="{CurrentPage}">
                    {block:Posts inlineMediaWidth="700" inlineNestedMediaWidth="700"}
                            <article class="{block:Text}text {/block:Text}{block:Photoset}photoset {/block:Photoset}{block:Photo}photo {/block:Photo}{block:RebloggedFrom}reblogged {/block:RebloggedFrom}{block:Quote}quote {/block:Quote}{block:Link}link {/block:Link}{block:Chat}chat {/block:Chat}{block:Audio}audio {/block:Audio}{block:Video}video {/block:Video}{block:Answer}answer {/block:Answer}{block:Date}not-page post-{PostID}{/block:Date} {block:PermalinkPage} active exposed{/block:PermalinkPage}" {block:Date}data-post-id="{PostID}"{/block:Date}>
                                <div class="post-wrapper clearfix">
                                    {block:RebloggedFrom}
                                    <header class="reblog-header">
                                        <a class="reblog-link" href="{ReblogParentURL}"><i class="icon-reblog"></i>{ReblogParentName}</a>
                                    </header>
                                    {/block:RebloggedFrom}
                                    <section class="post">
                                        {block:Text}
                                        <div class="post-content">
                                            {block:Title}<h2 class="title"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
                                            {block:Body}
                                            <div class="body-text">
                                                {Body}
                                            </div>
                                            {/block:Body}
                                        </div>
                                        {/block:Text}

                                        {block:Photo}
                                        <figure class="post-content {block:HighRes}high-res{/block:HighRes}{block:Caption} with-caption{/block:Caption}" data-photo-width="{PhotoWidth-HighRes}">
                                            <div class="photo-wrapper">
                                                <div class="photo-wrapper-inner">
                                                    {LinkOpenTag}<img src="{PhotoURL-HighRes}" alt="{PhotoAlt}" width="{PhotoWidth-HighRes}" height="{PhotoHeight-HighRes}">{LinkCloseTag}
                                                </div>
                                            </div>
                                            {block:Caption}
                                            <figcaption class="caption">
                                                {Caption}
                                            </figcaption>
                                            {/block:Caption}
                                        </figure>
                                        {/block:Photo}

                                        {block:Photoset}
                                        <figure class="post-content photoset {block:Caption}with-caption{/block:Caption}">
                                            {Photoset}
                                            {block:Caption}
                                            <figcaption class="caption">
                                                {Caption}
                                            </figcaption>
                                            {/block:Caption}
                                        </figure>
                                        {/block:Photoset}

                                        {block:Quote}
                                        <div class="post-content">
                                            <blockquote class="{Length}">
                                                {Quote}
                                            </blockquote>
                                            {block:Source}
                                            <div class="source">{Source}</div>
                                            {/block:Source}
                                        </div>
                                        {/block:Quote}


                                        {block:Link}
                                        <div class="post-content{block:Description} with-caption{/block:Description}{block:Thumbnail} with-thumbnail{/block:Thumbnail}">
                                            <div class="link-wrapper">
                                                <a {Target} href="{URL}" class="link">
                                                    {block:Thumbnail}
                                                    <div class="link-thumbnail"><img src="{Thumbnail-HighRes}" alt="" /></div>
                                                    {/block:Thumbnail}
                                                    <div class="link-text-wrapper clearfix">
                                                        <div class="link-text">
                                                            {block:Host}
                                                            <div class="link-host">{Host}</div>
                                                            {/block:Host}
                                                            <h2 class="link-title">{Name}</h2>
                                                            {block:Excerpt}
                                                            <div class="link-excerpt">{Excerpt}</div>
                                                            {/block:Excerpt}
                                                            {block:Author}
                                                            <div class="link-author">{Author}</div>
                                                            {/block:Author}
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            {block:Description}
                                            <div class="caption">
                                                {Description}
                                            </div>
                                            {/block:Description}
                                        </div>
                                        {/block:Link}


                                        {block:Chat}
                                        <div class="post-content">
                                            {block:Title}<h2 class="title"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
                                            <ul class="conversation">
                                            {block:Lines}
                                                <li class="chat-{Alt}">{block:Label}<span class="label">{Label}</span>{/block:Label} {Line}</li>
                                            {/block:Lines}
                                            </ul>
                                        </div>
                                        {/block:Chat}


                                        {block:Audio}
                                        <div class="post-content {block:Caption}with-caption{/block:Caption}">
                                            <div class="audio_container">
                                                {block:AudioEmbed}
                                                    {AudioEmbed color="white"}
                                                {/block:AudioEmbed}
                                            </div>
                                            {block:Caption}
                                            <div class="caption">
                                                {Caption}
                                            </div>
                                            {/block:Caption}
                                        </div>
                                        {/block:Audio}


                                        {block:Video}
                                        <figure class="post-content {block:Caption}with-caption{/block:Caption}">
                                            <div class="video-wrapper">
                                                {Video-700}
                                            </div>
                                            {block:Caption}
                                            <figcaption class="caption">
                                                {Caption}
                                            </figcaption>
                                            {/block:Caption}
                                        </figure>
                                        {/block:Video}

                                        {block:Answer}
                                        <div class="post-content">
                                            <div class="note-item note-item-asker">
                                                <div class="text">
                                                    <p class="asker"><strong>{Asker}</strong> asked:</p>
                                                    <div class="asker-question">
                                                        {Question}
                                                    </div>
                                                </div>
                                                <div class="avatar">
                                                    <img class="asker-avatar" src="{AskerPortraitURL-96}" alt="">
                                                </div>
                                            </div>

                                            {block:Answerer}
                                            <div class="note-item note-item-answerer">
                                                <div class="text">
                                                    <p class="answerer"><strong>{Answerer}</strong> answered:</p>
                                                    <div class="answerer-answer">
                                                        {Answer}
                                                    </div>
                                                </div>
                                                <div class="avatar">
                                                    <img class="answerer-avatar" src="{AnswererPortraitURL-96}" alt="">
                                                </div>
                                            </div>
                                            {/block:Answerer}

                                            <div class="replies">
                                                {Replies}
                                            </div>
                                        </div>
                                        {/block:Answer}

                                        <section class="inline-meta post-extra{block:RebloggedFrom} has-reblog{/block:RebloggedFrom}{block:ContentSource} has-source{/block:ContentSource}{block:HasTags} has-tags{/block:HasTags}">
                                            {block:RebloggedFrom}
                                                <a class="meta-item reblog-link" href="{ReblogParentURL}"><i class="icon-reblog"></i>{ReblogParentName}</a>
                                            {/block:RebloggedFrom}
                                            {block:ContentSource}
                                                <a class="meta-item source-link" href="{SourceURL}">{lang:Source}: {SourceTitle}</a>
                                            {/block:ContentSource}
                                            {block:HasTags}
                                                {block:Tags}
                                                     <a class="meta-item tag-link" href="{TagURL}">{Tag}</a>
                                                {/block:Tags}
                                            {/block:HasTags}
                                        </section>

                                    </section>

                                    {block:Date}
                                    <section class="panel">
                                        <footer class="post-footer">
                                            <section class="inline-meta date-notes">
                                                <div class="date-note-wrapper">
                                                    {block:NoteCount}
                                                        <span class="notes-pop-container">
                                                            <a href="{Permalink}#notes" class="meta-item post-notes">{NoteCountWithLabel}</a>
                                                            {block:PermalinkPage}
                                                                {block:PostNotes}
                                                                    <section id="notes" class="notes-wrapper clearfix">
                                                                        <div class="notes-wrapper-header">
                                                                            <span class="notes-wrapper-header-close">
                                                                                <svg width="15px" height="15px" viewBox="0 0 30 30" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                                                        <path d="M12.510351,14.6860639 L0,27.1964147 L2.175713,29.3721278 L14.686064,16.8617771 L27.196415,29.3721278 L29.372128,27.1964147 L16.861777,14.6860639 L29.372128,2.1757132 L27.196415,0 L14.686064,12.5103507 L2.175713,0 L0,2.1757132 L12.510351,14.6860639 L12.510351,14.6860639 Z" fill="#D3D3D3"></path>
                                                                                    </g>
                                                                                </svg>
                                                                            </span>
                                                                            {NoteCountWithLabel}
                                                                        </div>
                                                                        {PostNotes-64}
                                                                    </section>
                                                                {/block:PostNotes}
                                                            {/block:PermalinkPage}
                                                        </span>
                                                    {/block:NoteCount}
                                                    <a href="{Permalink}" title="{TimeAgo}" class="meta-item post-date">{ShortMonth} {DayOfMonth}{DayOfMonthSuffix}, {Year}</a>
                                                </div>
                                            </section>

                                            <section class="post-controls">
                                                <div class="controls-wrapper">
                                                    <div class="control share-control">
                                                        <nav class="pop">
                                                            <a href="#" class="share selector icon-export"></a>
                                                            <div class="pop-menu share-menu south" id="share_{PostID}">
                                                                <ul>
                                                                    <li class="open-in-app"><a href="#" class="share-item open-in-app" data-post="{PostID}">{lang:Open in app}</a></li>
                                                                    <li><a href="http://facebook.com/sharer.php?u={URLEncodedPermalink}&amp;t={URLEncodedTitle}" class="share-item facebook" target="_blank">{lang:Facebook}</a></li>
                                                                    <li><a href="https://twitter.com/intent/tweet?text={URLEncodedTweetSummary}" class="share-item twitter" target="_blank">{lang:Tweet}</a></li>
                                                                    {block:Photo}
                                                                        <li><a href="//www.pinterest.com/pin/create/button/?url={URLEncodedPermalink}&amp;media={PhotoURL-500}" class="share-item pinterest" target="_blank">{lang:Pinterest}</a></li>
                                                                    {/block:Photo}
                                                                    {block:Video}{block:VideoThumbnail}
                                                                        <li><a href="//www.pinterest.com/pin/create/button/?url={URLEncodedPermalink}&amp;media={VideoThumbnailURL}&amp;is_video=true" class="share-item pinterest" target="_blank">{lang:Pinterest}</a></li>
                                                                    {/block:VideoThumbnail}{/block:Video}
                                                                    <li><a href="https://reddit.com/submit?url={URLEncodedPermalink}" class="share-item reddit" target="_blank">{lang:Reddit}</a></li>
                                                                    <li><a href="mailto:?subject={URLEncodedShareString}&amp;body={URLEncodedMailSummary}" class="share-item mail">{lang:Mail}</a></li>
                                                                    <li><a href="{EmbedUrl}" class="share-item permalink">{lang:Embed}</a></li>
                                                                    <li><a href="{Permalink}" class="share-item permalink">{lang:Permalink} <i class="icon-arrow_carrot_right"></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </nav>
                                                    </div>
                                                    <div class="control reblog-control">{ReblogButton size="21" color="black"}</div>
                                                    <div class="control like-control">{LikeButton size="20" color="black"}</div>
                                                </div>
                                            </section>
                                        </footer>
                                    </section>
                                    {/block:Date}
                                    {block:PermalinkPage}

                                        {block:Date}

                                            {block:IfDisqusShortname}
                                            <section class="comments">
                                                <div id="disqus_thread"></div>
                                                <script type="text/javascript">
                                                  (function() {
                                                   var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                                                   dsq.src = 'http://{text:Disqus Shortname}.disqus.com/embed.js';
                                                   (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                                                  })();
                                                </script>
                                                <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript={text:Disqus Shortname}">comments powered by Disqus.</a></noscript>
                                                <a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
                                            </section>
                                            {/block:IfDisqusShortname}

                                        {/block:Date}

                                    {/block:PermalinkPage}
                                </div>
                            </article>
                    {/block:Posts}
                </div>
            </section>
            {block:IfRelatedPosts}
                {block:RelatedPosts}
                    <section class="related-posts-wrapper">
                        <h2>{lang:More you might like}</h2>
                        <div class="related-posts grid">
                        {block:Posts inlineMediaWidth="700" inlineNestedMediaWidth="700"}
                                <article class="{block:Text}text {/block:Text}{block:Photoset}photoset {/block:Photoset}{block:Photo}photo {/block:Photo}{block:RebloggedFrom}reblogged {/block:RebloggedFrom}{block:Quote}quote {/block:Quote}{block:Link}link {/block:Link}{block:Chat}chat {/block:Chat}{block:Audio}audio {/block:Audio}{block:Video}video {/block:Video}{block:Answer}answer {/block:Answer}{block:Date}not-page post-{PostID}{/block:Date} {block:PermalinkPage} active exposed{/block:PermalinkPage}" {block:Date}data-post-id="{PostID}"{/block:Date}>
                                    <div class="post-wrapper clearfix">
                                        {block:RebloggedFrom}
                                        <header class="reblog-header">
                                            <a class="reblog-link" href="{ReblogParentURL}"><i class="icon-reblog"></i>{ReblogParentName}</a>
                                        </header>
                                        {/block:RebloggedFrom}
                                        <section class="post">
                                            {block:Text}
                                            <div class="post-content">
                                                {block:Title}<h2 class="title"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
                                                {block:Body}
                                                <div class="body-text">
                                                    {Body}
                                                </div>
                                                {/block:Body}
                                            </div>
                                            {/block:Text}

                                            {block:Photo}
                                            <figure class="post-content {block:HighRes}high-res{/block:HighRes}{block:Caption} with-caption{/block:Caption}" data-photo-width="{PhotoWidth-HighRes}">
                                                <div class="photo-wrapper">
                                                    <div class="photo-wrapper-inner">
                                                        <a href="{Permalink}"><img src="{PhotoURL-HighRes}" alt="{PhotoAlt}" width="{PhotoWidth-HighRes}" height="{PhotoHeight-HighRes}"></a>
                                                    </div>
                                                </div>
                                                {block:Caption}
                                                <figcaption class="caption">
                                                    {Caption}
                                                </figcaption>
                                                {/block:Caption}
                                            </figure>
                                            {/block:Photo}

                                            {block:Photoset}
                                            <figure class="post-content photoset {block:Caption}with-caption{/block:Caption}">
                                                {Photoset}
                                                {block:Caption}
                                                <figcaption class="caption">
                                                    {Caption}
                                                </figcaption>
                                                {/block:Caption}
                                            </figure>
                                            {/block:Photoset}

                                            {block:Quote}
                                            <div class="post-content">
                                                <blockquote class="{Length}">
                                                    {Quote}
                                                </blockquote>
                                                {block:Source}
                                                <div class="source">{Source}</div>
                                                {/block:Source}
                                            </div>
                                            {/block:Quote}


                                            {block:Link}
                                            <div class="post-content{block:Description} with-caption{/block:Description}{block:Thumbnail} with-thumbnail{/block:Thumbnail}">
                                                <div class="link-wrapper">
                                                    <a {Target} href="{URL}" class="link">
                                                        {block:Thumbnail}
                                                        <div class="link-thumbnail"><img src="{Thumbnail-HighRes}" alt="" /></div>
                                                        {/block:Thumbnail}
                                                        <div class="link-text-wrapper clearfix">
                                                            <div class="link-text">
                                                                {block:Host}
                                                                <div class="link-host">{Host}</div>
                                                                {/block:Host}
                                                                <h2 class="link-title">{Name}</h2>
                                                                {block:Excerpt}
                                                                <div class="link-excerpt">{Excerpt}</div>
                                                                {/block:Excerpt}
                                                                {block:Author}
                                                                <div class="link-author">{Author}</div>
                                                                {/block:Author}
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                {block:Description}
                                                <div class="caption">
                                                    {Description}
                                                </div>
                                                {/block:Description}
                                            </div>
                                            {/block:Link}

                                            {block:Chat}
                                            <div class="post-content">
                                                {block:Title}<h2 class="title"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
                                                <ul class="conversation">
                                                {block:Lines}
                                                    <li class="chat-{Alt}">{block:Label}<span class="label">{Label}</span>{/block:Label} {Line}</li>
                                                {/block:Lines}
                                                </ul>
                                            </div>
                                            {/block:Chat}

                                            {block:Audio}
                                            <div class="post-content {block:Caption}with-caption{/block:Caption}">
                                                <div class="audio_container">
                                                    {block:AudioEmbed}
                                                        {AudioEmbed color="white"}
                                                    {/block:AudioEmbed}
                                                </div>
                                                {block:Caption}
                                                <div class="caption">
                                                    {Caption}
                                                </div>
                                                {/block:Caption}
                                            </div>
                                            {/block:Audio}

                                            {block:Video}
                                            <figure class="post-content {block:Caption}with-caption{/block:Caption}">
                                                <div class="video-wrapper">
                                                    {Video-700}
                                                </div>
                                                {block:Caption}
                                                <figcaption class="caption">
                                                    {Caption}
                                                </figcaption>
                                                {/block:Caption}
                                            </figure>
                                            {/block:Video}

                                            {block:Answer}
                                            <div class="post-content">
                                                <div class="note-item note-item-asker">
                                                    <div class="text">
                                                        <p class="asker"><strong>{Asker}</strong> asked:</p>
                                                        <div class="asker-question">
                                                            {Question}
                                                        </div>
                                                    </div>
                                                    <div class="avatar">
                                                        <img class="asker-avatar" src="{AskerPortraitURL-96}" alt="">
                                                    </div>
                                                </div>

                                                {block:Answerer}
                                                <div class="note-item note-item-answerer">
                                                    <div class="text">
                                                        <p class="answerer"><strong>{Answerer}</strong> answered:</p>
                                                        <div class="answerer-answer">
                                                            {Answer}
                                                        </div>
                                                    </div>
                                                    <div class="avatar">
                                                        <img class="answerer-avatar" src="{AnswererPortraitURL-96}" alt="">
                                                    </div>
                                                </div>
                                                {/block:Answerer}

                                                <div class="replies">
                                                    {Replies}
                                                </div>
                                            </div>
                                            {/block:Answer}

                                            <section class="inline-meta post-extra{block:RebloggedFrom} has-reblog{/block:RebloggedFrom}{block:ContentSource} has-source{/block:ContentSource}{block:HasTags} has-tags{/block:HasTags}">
                                                {block:RebloggedFrom}
                                                    <a class="meta-item reblog-link" href="{ReblogParentURL}"><i class="icon-reblog"></i>{ReblogParentName}</a>
                                                {/block:RebloggedFrom}
                                                {block:ContentSource}
                                                    <a class="meta-item source-link" href="{SourceURL}">{lang:Source}: {SourceTitle}</a>
                                                {/block:ContentSource}
                                                {block:HasTags}
                                                    {block:Tags}
                                                         <a class="meta-item tag-link" href="{TagURL}">{Tag}</a>
                                                    {/block:Tags}
                                                {/block:HasTags}
                                            </section>

                                        </section>

                                        {block:Date}
                                        <section class="panel">
                                            <footer class="post-footer">
                                                <section class="inline-meta date-notes">
                                                    <div class="date-note-wrapper">
                                                        {block:NoteCount}
                                                            <a href="{Permalink}#notes" class="meta-item post-notes">{NoteCountWithLabel}</a>
                                                        {/block:NoteCount}
                                                    </div>
                                                </section>

                                                <section class="post-controls">
                                                    <div class="controls-wrapper">
                                                        <div class="control share-control">
                                                            <nav class="pop">
                                                                <a href="#" class="share selector icon-export"></a>
                                                                <div class="pop-menu share-menu south" id="share_{PostID}">
                                                                    <ul>
                                                                        <li class="open-in-app"><a href="#" class="share-item open-in-app" data-post="{PostID}">{lang:Open in app}</a></li>
                                                                        <li><a href="http://facebook.com/sharer.php?u={URLEncodedPermalink}&amp;t={URLEncodedTitle}" class="share-item facebook" target="_blank">{lang:Facebook}</a></li>
                                                                        <li><a href="https://twitter.com/intent/tweet?text={URLEncodedTweetSummary}" class="share-item twitter" target="_blank">{lang:Tweet}</a></li>
                                                                        {block:Photo}
                                                                            <li><a href="//www.pinterest.com/pin/create/button/?url={URLEncodedPermalink}&amp;media={PhotoURL-500}" class="share-item pinterest" target="_blank">{lang:Pinterest}</a></li>
                                                                        {/block:Photo}
                                                                        {block:Video}{block:VideoThumbnail}
                                                                            <li><a href="//www.pinterest.com/pin/create/button/?url={URLEncodedPermalink}&amp;media={VideoThumbnailURL}&amp;is_video=true" class="share-item pinterest" target="_blank">{lang:Pinterest}</a></li>
                                                                        {/block:VideoThumbnail}{/block:Video}
                                                                        <li><a href="https://reddit.com/submit?url={URLEncodedPermalink}" class="share-item reddit" target="_blank">{lang:Reddit}</a></li>
                                                                        <li><a href="mailto:?subject={URLEncodedShareString}&amp;body={URLEncodedMailSummary}" class="share-item mail">{lang:Mail}</a></li>
                                                                        <li><a href="{EmbedUrl}" class="share-item permalink">{lang:Embed}</a></li>
                                                                        <li><a href="{Permalink}" class="share-item permalink">{lang:Permalink} <i class="icon-arrow_carrot_right"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                            </nav>
                                                        </div>
                                                        <div class="control reblog-control">{ReblogButton size="21" color="black"}</div>
                                                        <div class="control like-control">{LikeButton size="20" color="black"}</div>
                                                    </div>
                                                </section>
                                            </footer>
                                        </section>
                                        {/block:Date}
                                    </div>
                                </article>
                        {/block:Posts}
                        </div>
                        <div class="related-posts-cta content">
                            <!-- @todo: translate these strings -->
                            <a class="related-post-cta button bordered open-in-app">{lang:See this in the app}</a>
                            <a class="related-post-cta see-more button bordered" href="/">{lang:Show more}</a>
                        </div>
                    </section>
                {/block:RelatedPosts}
            {/block:IfRelatedPosts}

            {% include "./footer.swig" %}

        </section>
        {% include "./scripts.swig" %}
    </body>
</html>