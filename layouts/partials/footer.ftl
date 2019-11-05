<footer class="footer">
    <div class="statics">
        <p>${options.blog_statistics_code!}</p>
    </div>
    <div class="copyright">
        &copy;
        <span itemprop="copyrightYear">${(options.birthday)?number_to_date?string("yyyy")} - ${.now?string('yyyy')}</span>
        <span class="author" itemprop="copyrightHolder"><a href="${context!}">${user.username!}</a> | </span>

        <span>Crafted with by <a href="https://github.com/Fastbyte01/KeepIt" target="_blank" rel="external nofollow noopener noreffer">KeepIt</a> & <a href="https://halo.run" target="_blank" rel="external nofollow noopener noreffer">Halo</a></span>
    </div>
    <div class="Reserved Rights">
        <span>All Rights Reserved By Wu</span>
    </div>
</footer>

<#include "js.ftl">