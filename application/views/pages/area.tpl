{extends file="application/views/templates/layout.tpl"}
{block name=title}地区搜索{/block}
{block name=body}
{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $('.item-thumbs').click(function() {
                $('#area').val($(this).find('span').text());
                $('#searchForm').submit();
            });
        });
    </script>
{/literal}
<div class="area-div">

    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="{$base_url}">首页</a></li>
                        <li><a href="{$base_url}pages/area">地区检索</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">东京</h4>
                    <div class="row">
                         <div class="col-lg-12">
                            <ul id="thumbs">
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                         <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/1.jpg">
                                        <span>新宿-涩谷-原宿</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/2.jpg">
                                        <span>池袋-大久保-高田马场</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/4.jpg">
                                        <span>上野-秋叶原-浅草</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/5.jpg">
                                        <span>银座-新桥-台场</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/6.jpg">
                                        <span>东京其他地区</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/3.jpg">
                                        <span>六本木-麻布-东京塔</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 paddingtop20">
                    <h4 class="heading">其它地区</h4>
                    <div class="row">
                         <div class="col-lg-12">
                            <ul id="thumbs" class="portfolio second">
                                <li class="col-xs-12 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/7.jpg">
                                        <span>大阪</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/8.jpg">
                                        <span>京都</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/9.jpg">
                                        <span>奈良</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-3">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/10.jpg">
                                        <span>神户</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-3">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/11.jpg">
                                        <span>名古屋</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-3">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/12.jpg">
                                        <span>冲绳</span>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-3">
                                    <div class="item-thumbs">
                                        <!-- 地点图片 -->
                                        <img src="{$base_url}assets/img/area/13.jpg">
                                        <span>北海道</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <form id="searchForm" class="padding-none" action="{$base_url}food/search" method="post" name="search_form">
        <input type="hidden" id="area" name="area" value="" />
        <input type="hidden" id="type" name="type" value="全部" />
        <input type="hidden" id="consume" name="consume" value="全部" />
        <input type="hidden" id="offset" name="offset" value="0" />
    </form>

</div>
{/block}