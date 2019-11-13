<#if is_post?? || is_sheet??>
    <link href="//lib.baomitu.com/lightgallery/1.6.12/css/lightgallery.min.css" rel="stylesheet">
    <script src="${static!}/assets/js/vendor_gallery.min.js" async="" ></script>
<#else>
    <script src="${static!}/assets/js/vendor_main.min.js" async=""></script>
</#if>
    <script type="text/javascript" src="${static!}/assets/js/jquery_from_theme_anatole.min.js"></script>
    <script type="text/javascript" src="${static!}/assets/js/tocbot.min.js"></script>
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
        <#if (settings.hitokoto!false) && (is_index!false) >
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