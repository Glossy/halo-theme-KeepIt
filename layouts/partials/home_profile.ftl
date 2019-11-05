<div class="intro">
   <div class="avatar">
        <a href="${context!}/archives/"> <img src="${user.avatar!}"> </a>
    </div>
    <div class="description">
        <#if settings.hitokoto!false>
            <p id="yiyan"></p>
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

