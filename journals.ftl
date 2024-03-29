<#include "layouts/_default/baseof.ftl">
<@baseof title="游记 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/journals">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;游记&nbsp;-</h2>

        <@postTag method="listByCategoryId" categoryId="Travelling">
            <#list posts as post>
                <article class="archive-item">
                    <a href="${context!}/jounrnals/${post.url!}" class="archive-item-link">${post.title!}</a>
                    <span class="archive-item-date">
                        ${post.createTime?string('yyyy年MM月dd日')}
                    </span>
                </article>
            </#list>
            <#if posts.totalPages gt 1>
            <ul class="pagination">
                <#if posts.hasPrevious()>
                    <#if posts.number == 1>
                        <li class="page-item">
						<span class="page-link">
							<a href="${context!}/archives">首页</a>
						</span>
                        </li>
                    <#else>
                        <li class="page-item">
						<span class="page-link">
							<a href="${context!}/archives/page/${posts.number}">上一页</a>
						</span>
                        </li>
                    </#if>
                </#if>
                <li class="page-item">
                    <span class="page-link">
                        ${posts.number+1}
                    </span>
                </li>
                <#if posts.hasNext()>
                    <li class="page-item">
                    <span class="page-link">
                        <a href="${context!}/archives/page/${posts.number+2}/">下一页</a>
                    </span>
                    </li>
                </#if>
            </ul>
            </#if>
        </@postTag>
    </div>
</@baseof>