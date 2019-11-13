<#include "layouts/_default/baseof.ftl">
<@baseof title="计时 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/timer">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;Timer&nbsp;-</h2>
        <script type="text/javascript">
            var intDiff = parseInt(60);//倒计时总秒数量
            function timer(intDiff){
                window.setInterval(function(){
                    var day=108,
                            hour=0,
                            minute=0,
                            second=0;//时间默认值
                    if(intDiff > 0){
                        day = Math.floor(intDiff / (60 * 60 * 24));
                        hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
                        minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
                        second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
                    }
                    if (minute <= 9) minute = '0' + minute;
                    if (second <= 9) second = '0' + second;
                    $('#day_show').html(day+"天");
                    $('#hour_show').html('<s id="h"></s>'+hour+'时');
                    $('#minute_show').html('<s></s>'+minute+'分');
                    $('#second_show').html('<s></s>'+second+'秒');
                    intDiff--;
                }, 1000);
            }
            $(function(){
                timer(intDiff);
            });
        </script>

        <h1 class="timer">具体2020年3月1日</h1>
        <div class="time-item">
            <span id="day_show">0天</span>
            <strong id="hour_show">0时</strong>
            <strong id="minute_show">0分</strong>
            <strong id="second_show">0秒</strong>
        </div>


    </div>
</@baseof>