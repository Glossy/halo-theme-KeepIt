<div class="intro">
   <div class="avatar">
        <a href="${context!}/archives/"> <img src="${user.avatar!}"> </a>
    </div>
    <div class="description">
        <#if settings.hitokoto!false>
            <p id="yiyan">获取中...</p>
        <#else >
            <p>${user.description!''}</p>
        </#if>
    </div>
    <#if user.description??>
    <h2 class="description">
       ${user.description!}
    </h2>
    </#if>
    <div class="social-links">
      <#include "social.ftl">
    </div>
</div>

<script type="text/javascript">
    function getSentence() {
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
                  return data.hitokoto+"        -「"+data.from+"」";
              }
          };
          xhr.send();
        </#if>

        return "获取中...";
    }
    document.getElementById("yiyan").innerText = getSentence();
</script>

