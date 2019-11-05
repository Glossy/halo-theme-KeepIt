<#macro baseof title,keywords,description,canonical>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noodp"/>
    <@global.head />
    <link rel="canonical" href="${canonical}" />
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <title>${title!}</title>
    <meta name="title" content="${title!}">
    <#include "../partials/css.ftl">
    <link rel="alternate" href="${context!}/atom.xml" type="application/rss+xml" title="${options.blog_title!}">
    <link rel="feed" href="${context!}/rss.xml" type="application/rss+xml" title="${options.blog_title!}">
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="${title!}"/>
    <meta name="twitter:description" content="${description!}"/>
</head>
  <body class="">
    <div class="wrapper">
        <#include "../partials/header.ftl">
    	 <main class="main">
          <div class="container">
      		<#nested />
          </div>
		   </main>
      <#include "../partials/footer.ftl">
     </div>

    <script type="text/javascript" src="${static!}/assets/js/jquery_from_theme_anatole.min.js"></script>
    <script type="text/javascript">
        var url = location.href;
        var urlstatus = false;
        $(".nav li a").each(function () {
            if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
                $(this).addClass('current');
                urlstatus = true;
            } else {
                $(this).removeClass('current');
            }
        });
        if (!urlstatus) {
            $(".nav li a").eq(0).addClass('current');
        }
        <#if settings.hitokoto!false>
          var xhr = new XMLHttpRequest();
          xhr.open('get', 'https://v1.hitokoto.cn');
          xhr.onreadystatechange = function () {
              if (xhr.readyState === 4) {
                  var data = JSON.parse(xhr.responseText);
                  var yiyan = document.getElementById('yiyan');
                  yiyan.innerText = data.hitokoto+"        -「"+data.from+"」";
              }
          };
          xhr.send();
        </#if>
    </script>
  </body>
</html>
</#macro>