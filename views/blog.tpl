<!DOCTYPE html>
<html>
<head>
  <title>{{title}}</title>
  <link href="/static/styles/foundation/css/normalize.css" rel="stylesheet">
  <link href="/static/styles/foundation/css/foundation.css" rel="stylesheet">
  <link href="/static/styles/theballoonist.css" media="screen" rel="stylesheet" type="text/css" />
  <script type='text/javascript' src='/static/js/gdataanalytics.js'></script>
</head>
<body>
  <div class="row">
    <div class='large-11 large-centered columns'>
      <div id="blog-title"><a href="/blog">{{title}}</a></div>
    </div>
  </div>
<div id="body_posts">
  <div class="row">
    <div class='large-11 large-centered columns'>
      % for post in posts:
        <div class="post">
          <div class="post-title">
            <a href="{{post.locator}}">{{post.meta['title']}}</a>
          </div>
          <div class="post-date">{{post.date.strftime('%B %d, %Y')}}</div>
          <div class="post-author">{{post.meta['author']}}</div>
          <div class="post-summary">
            {{!post.summary}}
            <div class="post-more-link">
              <a href="{{post.locator}}">...more</a>
            </div>
          </div>
        </div>
      % end

      <div id="page-navigation">
      {{!'<a href="/blog/'+(str(page-1))+'">Previous</a>' if has_prev else 'Previous'}} | 
      {{!'<a href="/blog/'+(str(page+1))+'">Next</a>' if has_next else 'Next'}}
      </div>

    </div>
  </div>
   <footer>
    <div id="powered-by">
      <div class='row'>
        <small>Powered by <a href="http://www.thelittlesthobo.com/">hobo.</a> Modify by <a href="http://misalabs.com">misalabs</a>.</small>
        </div>
    </div>
   </footer>
</div>
</body>
</html>