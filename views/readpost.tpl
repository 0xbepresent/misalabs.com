<!DOCTYPE html>
<html>
<head>
  <title>{{title}}: {{post.meta['title']}}</title>
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <link href="/static/styles/foundation/css/normalize.css" rel="stylesheet">
  <link href="/static/styles/foundation/css/foundation.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="/static/styles/home.css"></style>
  <link href="/static/styles/theballoonist.css?1=2" rel="stylesheet" type="text/css" />
  <script type='text/javascript' src='/static/js/gdataanalytics.js'></script>
</head>
<body>

<div id="head_blog">
  <div class="row">
  <div class='large-centered columns'>
    <div id="blog-title"><a href="/blog">0xbepresent</a></div>
    </div>
  </div>
</div>

<div class="post" style="margin-top: 60px;">
  <div class="row">
    <div class='large-11 large-centered columns'>
      <div class="post-title-read">{{post.meta['title']}}</div>
      <div class="post-date">{{post.date.strftime('%B %d, %Y')}}</div>
      <div class="post-author">{{post.meta['author']}}</div>
      <div class="post-body">{{!post.contents}}</div>
    </div>
  </div>
</div>

<div id="powered-by">
<small>Powered by <a href="http://www.thelittlesthobo.com/">hobo.</a> Modify by <a href="/">misalabs</a>.</small>
</div>

</body>
</html>
