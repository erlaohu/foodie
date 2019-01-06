{extends file="application/views/templates/layout.tpl"}
{block name=title}料理搜索{/block}
{block name=body}
{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $('.item-thumbs').click(function() {
                $('#type').val($(this).find('b').text());
                $('#searchForm').submit();
            });
        });
    </script>
{/literal}
<div class="contact-div">

    <!-- 滚动显示图片 -->
    <section id="featured">
        <div id="main-slider" class="flexslider">
            <ul class="slides">
                <li>
                    <img src="{$base_url}assets/img/slides/4.jpg" alt="" />
                </li>
            </ul>
        </div>
    </section>

    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="{$base_url}">首页</a></li>
                        <li><a href="{$base_url}pages/food">料理检索</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- 检索部分 -->
    <section id="content">
        <div class="container">

            <!-- 料理检索显示 -->
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading left-line">料理检索</h4>
                    <div class="row">
                        <section id="cooks">
                            <ul id="thumbs" class="portfolio">
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/1.jpg">
                                        <b>怀石料理-会席</b>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/2.jpg">
                                        <b>海鲜料理/寿司/生鱼片</b>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/3.jpg">
                                        <b>和食料理</b>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/4.jpg">
                                        <b>涮肉/寿喜锅</b>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/5.jpg">
                                        <b>和牛烤肉店</b>
                                    </div>
                                </li>
                                <li class="col-xs-6 col-sm-4">
                                    <div class="item-thumbs">
                                        <!-- 料理图片 -->
                                        <img src="{$base_url}assets/img/food/type/6.jpg">
                                        <b>鳗鱼料理</b>
                                    </div>
                                </li>
                            </ul>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form id="searchForm" class="padding-none" action="{$base_url}food/search" method="post" name="search_form">
        <input type="hidden" id="area" name="area" value="全部" />
        <input type="hidden" id="type" name="type" value="" />
        <input type="hidden" id="consume" name="consume" value="全部" />
        <input type="hidden" id="offset" name="offset" value="0" />
    </form>
</div>
{/block}