<!DOCTYPE html>
<html>
<head>
  <title>{{title}}: {{post.meta['title']}}</title>
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <link href="/static/styles/foundation/css/normalize.css" rel="stylesheet">
  <link href="/static/styles/foundation/css/foundation.css" rel="stylesheet">
  <link href="/static/styles/theballoonist.css" rel="stylesheet" type="text/css" />
  <script type='text/javascript' src='/static/js/gdataanalytics.js'></script>
</head>
<body>

<div class="row">
    <div class='large-11 large-centered columns'>
      <div id="blog-title"><a href="/blog">{{title}}</a></div>
    </div>
</div>

<div class="post" style="margin-top: 60px;">
  <div class="row">
    <div class='large-11 large-centered columns'>
      <div class="post-title">{{post.meta['title']}}</div>
      <div class="post-date">{{post.date.strftime('%B %d, %Y')}}</div>
      <div class="post-author">{{post.meta['author']}}</div>
      <div class="post-body">{{!post.contents}}</div>
    </div>
  </div>
</div>

% if disqus_shortname:
<div class="row"><div class='large-11 large-centered columns'><div id="disqus_thread"></div></div></div>
<script type="text/javascript">
    var disqus_shortname = '{{disqus_shortname}}';
    var disqus_developer = 1;
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
% end

<div id="powered-by">
<small>Powered by <a href="http://www.thelittlesthobo.com/">hobo.</a> Modify by <a href="http://misalabs.com">misalabs</a>.</small>
</div>

</body>
</html>
