<#include "layouts/_default/baseof.ftl">
<@baseof title="图库 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/photos">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;Gallery&nbsp;-</h2>

        <@photoTag method="list">
            <#list photos as photo>
                <img href="${photo.url}" />
            </#list>
        </@photoTag>
        <#--展示形式和我想的还有出入，我想做的是游记形式的-->
        <#--不过也可以做成图库形式 https://halo.run/develop/theme/custom-tag.html#phototag%EF%BC%88%E5%9B%BE%E5%BA%93%EF%BC%89-->
        <#--<#list posts.content as post>-->
            <#--<#if (post.summary!"null") == "photos">-->
                <#--<article class="archive-item">-->
                    <#--<a href="${context!}/archives/${post.url!}" class="archive-item-link">${post.title!}</a>-->
                    <#--<span class="archive-item-date">-->
                        <#--${post.createTime?string('yyyy年MM月dd日')}-->
                    <#--</span>-->
                <#--</article>-->
            <#--</#if>-->
        <#--</#list>-->
        <#--<#if posts.totalPages gt 1>t-->
            <#--<ul class="pagination">-->
                <#--<#if posts.hasPrevious()>-->
                    <#--<#if posts.number == 1>-->
                        <#--<li class="page-item">-->
						<#--<span class="page-link">-->
							<#--<a href="${context!}/archives">首页</a>-->
						<#--</span>-->
                        <#--</li>-->
                    <#--<#else>-->
                        <#--<li class="page-item">-->
						<#--<span class="page-link">-->
							<#--<a href="${context!}/archives/page/${posts.number}">上一页</a>-->
						<#--</span>-->
                        <#--</li>-->
                    <#--</#if>-->
                <#--</#if>-->
                <#--<li class="page-item">-->
                    <#--<span class="page-link">-->
                        <#--${posts.number+1}-->
                    <#--</span>-->
                <#--</li>-->
                <#--<#if posts.hasNext()>-->
                    <#--<li class="page-item">-->
                    <#--<span class="page-link">-->
                        <#--<a href="${context!}/archives/page/${posts.number+2}/">下一页</a>-->
                    <#--</span>-->
                    <#--</li>-->
                <#--</#if>-->
            <#--</ul>-->
        <#--</#if>-->
    </div>
</@baseof>