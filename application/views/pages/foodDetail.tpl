{extends file="application/views/templates/layout.tpl"}
{block name=title}{$food.NAME}{/block}
{block name=body}
{literal}
<script type="text/javascript">
(function(jQuery){
    jQuery.fn.th_focus_swing = function(options)
    {
        var defaults = {
            time        :3500,      //轮换秒数
            index       :1,         //默认第几张     
            speed       :500,       //切换时间
            dis         :$(".focusbox").width() + 10,
            splits      :1          //总标签
        };
        var opts = jQuery.extend(defaults, options);
        
        var _index = opts.index;
        var _time = opts.time;
        var _speed = opts.speed;
        var _dis = opts.dis;
        var _splits = opts.splits;
        
        var _this = jQuery(this);
        
        var node_ul = _this.find(".contentimg");    
        var node_li = node_ul.find("li");
        var node_li_desc = jQuery(".contentdesc").find("li");
        var node_li_nav = jQuery(".mfoc_nav").find("li");
        
        var li_len = node_li.length;
        
        var _countIndex = (node_li.length/opts.split -  1)    
        var _start_left = node_ul.css("left");                
        
        var _timer = setInterval(show, _time);

        init();
        //alert(1);
        function init() {
            node_ul.mouseover(function() {
                _timer = clearInterval(_timer);
            }).mouseout(function() {
                _timer = setInterval(show, _time);
            });
            node_li_desc.mouseover(function() {
                _timer = clearInterval(_timer);
            }).mouseout(function() {
                _timer = setInterval(show, _time);
            });
            
            node_li_nav.mouseover(function() {
                 node_ul.stop(true, true);
                 node_li_desc.stop(true, true);
                 node_li_desc.eq(_index-1).css("display", "none");
                 node_li_nav.eq(_index-1).removeClass("selected");
                 _index = parseInt(jQuery(this).attr("_index"));
                 node_li_desc.eq(_index-1).fadeIn(_speed);
                 node_li_nav.eq(_index-1).addClass("selected");
                 _left = -_dis*(_index - 1); 
                 node_ul.animate({"left": _left}, _speed);
                _timer = clearInterval(_timer);
            }).mouseout(function() {
                _timer = setInterval(show, _time);
            });
        }
        
        function show() {
                        //alert(2);
            node_ul.stop(true, true);
            node_li_nav.eq(_index-1).removeClass("selected");
            node_li_desc.eq(_index-1).css("display", "none");
            _index++;
            if(_index > li_len) {
                node_ul.append(node_ul.find("li:lt(1)"));
                node_ul.css("left", parseInt(node_ul.css("left")) + _dis);
                node_li_nav.eq(0).addClass("selected");
                node_li_desc.eq(0).fadeIn(_speed);
            }
            else {
                node_li_nav.eq(_index-1).addClass("selected");
                node_li_desc.eq(_index-1).fadeIn(_speed);
            }
            var _left = parseInt(node_ul.css("left")) - _dis;
            node_ul.animate({"left": _left}, _speed, function() {
                    if(_index > li_len) {
                        node_ul.prepend(node_ul.find("li:gt("+(li_len-_splits-1)+")"));
                        node_ul.css("left", 0);
                        _index = 1;
                    }
                    
            });
            
        }
    }
})(jQuery);
</script>

<script>
$(document).ready(function(){
    //focus
    $(".focusbox").th_focus_swing();
});
</script>
{/literal}
<div>
<!--     <section id="featured">
        <div id="main-slider" class="flexslider">
            <ul class="slides">
                <li>
                    <img src="{$base_url}{$food.IMG_1}" alt="" />
                </li>
            </ul>
        </div>
    </section> -->
    <!-- 内容部分 -->
    <section id="content">
        <div class="container">
            <div class="row food-detail">
                <div class="col-xs-12">
                    <div class="title">
                        <span>{$food.NAME}</span>
                    </div>
                    <div class="icon">
                        {if $food.BAOJIAN_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/covered-food-tray-on-a-hand-of-hotel-room-service.png"/>
                                包间有
                            </div>
                        {/if}
                        {if $food.JINYAN_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/do-not-smoke.png"/>
                                禁烟可
                            </div>
                        {/if}
                        {if $food.WAIGUOYU_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/open-book.png"/>
                                外国语对应
                            </div>
                        {/if}
                        {if $food.WAIGUOYUCAIDAN_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/menu.png"/>
                                外国语菜单有
                            </div>
                        {/if}
                        {if $food.JINIANRI_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/cake.png"/>
                                纪念日对应
                            </div>
                        {/if}
                        {if $food.DACHE_FLG == '1'}
                            <div>
                                <img src="{$base_url}assets/img/icon/frontal-taxi-cab.png"/>
                                可打车
                            </div>
                        {/if}
                    </div>
                    <div>
                        <h5>餐厅介绍</h5>
                        {$food.INTRODUCE}
                    </div>
                    <div class="focusbox">
                        <div class="contentbox">
                            <ul class="contentimg">
                                <li><img src="{$base_url}{$food.IMG_1}"></li>
                                <li><img src="{$base_url}{$food.IMG_2}"></li>
                                <li><img src="{$base_url}{$food.IMG_3}"></li>
                                <li><img src="{$base_url}{$food.IMG_4}"></li>
                                <li><img src="{$base_url}{$food.IMG_5}"></li>
                            </ul>
                        </div>
                        
                        <div class="navbox">
                            <ul class="mfoc_nav">
                                <li _index="1" class="selected"><img src="{$base_url}{$food.IMG_1}"></li>
                                <li _index="2" class=""><img src="{$base_url}{$food.IMG_2}"></li>
                                <li _index="3" class=""><img src="{$base_url}{$food.IMG_3}"></li>
                                <li _index="4" class=""><img src="{$base_url}{$food.IMG_4}"></li>
                                <li _index="5" class=""><img src="{$base_url}{$food.IMG_5}"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="detail">
                        <h5>餐厅详细信息</h5>
                        <table>
                            <tr>
                                <td>餐厅名字</td>
                                <td>
                                    {$food.NAME}
                                </td>
                            </tr>
                            <tr>
                                <td width="80px">餐厅种类</td>
                                <td>
                                    {if $food.TYPE|mb_strpos:'01' !== FALSE}
                                        怀石料理-会席<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'02' !== FALSE}
                                        海鲜料理/寿司/生鱼片<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'03' !== FALSE}
                                        和牛烤肉店<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'04' !== FALSE}
                                        涮肉/寿喜锅<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'05' !== FALSE}
                                        鳗鱼料理<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'06' !== FALSE}
                                        和食料理<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'07' !== FALSE}
                                        居酒屋<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'08' !== FALSE}
                                        主题餐厅<br/>
                                    {/if}
                                    {if $food.TYPE|mb_strpos:'09' !== FALSE}
                                        西式餐厅<br/>
                                    {/if}
                                </td>
                            </tr>
                            <tr>
                                <td>料理推荐</td>
                                <td>
                                    {$food.RECOMMEND}
                                </td>
                            </tr>
                            <tr>
                                <td>人均消费</td>
                                <td>
                                    {$food.CONSUME}&nbsp;日元
                                </td>
                            </tr>
                            <tr>
                                <td><span>网站地址</span></td>
                                <td>
                                    <span><a href="http://{$food.WEB_URL}" target="_blank">{$food.WEB_URL}</a></span>
                                </td>
                            </tr>
                        </table>
                        <h5>餐厅店铺一览</h5>
                        <table class="table table-striped">
                            <thead>
                                <td><span class="hidden-xs">地址</span><span class="visible-xs">地址／电话</span></td>
                                <td class="hidden-xs" width="120px"><span>电话</span></td>
                                <td class="hidden-xs" width="120px"><span>营业时间</span></td>
                                <td class="visible-xs"><span>营业时间</span></td>
                                <td><span>定休日</span></td>
                            </thead>
                            <tbody>
                            {foreach from=$foodDetails item=foodDetail}
                            <tr>
                                <td>
                                    <a class="icon-img" href="http://maps.google.co.jp/maps?q={$foodDetail.COORDINATE}" target="_blank">
                                        <img src="{$base_url}assets/img/map.png"/>
                                    </a>
                                    <div class="div-address">
                                        {$foodDetail.ADDRESS}
                                    </div>
                                    <div class="visible-xs" style="margin-top: 5px;">
                                        <a class="icon-img" href="tel:{$foodDetail.TEL}">
                                            <img src="{$base_url}assets/img/phone-call.png" width="15px" />
                                        </a>
                                        {$foodDetail.TEL}
                                    </div>
                                </td>
                                <td class="hidden-xs">
                                    <span><a href="tel:{$foodDetail.TEL}">{$foodDetail.TEL}</a></span>
                                </td>
                                <td>
                                    <span>{$foodDetail.OPENING_TIME}</span>
                                </td>
                                <td width="70px">
                                    <span>{$foodDetail.HOLIDAY}</span>
                                </td>
                            </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
{/block}