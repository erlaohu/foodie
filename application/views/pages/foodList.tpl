{extends file="application/views/templates/layout.tpl"}
{block name=title}料理一览{/block}
{block name=body}
{literal}
<script type="text/javascript">
    $(document).ready(function() {
        $('#pagination a').click(function() {
            var aryHref = $(this).attr('href').split('/');
            $('input[name=offset]').val(aryHref[1]);
            $('#searchForm').submit()
        });
        $('.home-food-list > div').click(function() {
            $('#food_id').val($(this).attr('id'));
            $('#searchDetailForm').submit();
        });
        if ($('.list-div').width() > 768 ) {
            $('.list-div > div:odd').each(function () {
                if($(this).children().height() > $(this).prev().children().height()) {
                    // $(this).prev().children().height($(this).children().height());
                } else {
                    // $(this).children().height($(this).prev().children().height());
                }
            });
        }
  });
</script>
{/literal}
<div>

    <!-- <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li>首页</li>
                        <li>料理搜索</li>
                        <li>料理一览</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
     -->
    <!-- 滚动显示图片 -->
    <section id="featured">
        <div id="main-slider" class="flexslider">
            <ul class="slides">
                <li>
                {if $type == '01' }
                    <img src="{$base_url}assets/img/slides/type/1.jpg" alt="" />
                {elseif $type == '02'}
                    <img src="{$base_url}assets/img/slides/type/2.jpg" alt="" />
                {elseif $type == '06'}
                    <img src="{$base_url}assets/img/slides/type/3.jpg" alt="" />
                {elseif $type == '04'}
                    <img src="{$base_url}assets/img/slides/type/4.jpg" alt="" />
                {elseif $type == '03'}
                    <img src="{$base_url}assets/img/slides/type/5.jpg" alt="" />
                {elseif $type == '05'}
                    <img src="{$base_url}assets/img/slides/type/6.jpg" alt="" />
                {else}
                    <img src="{$base_url}assets/img/slides/type/0.jpg" alt="" />
                {/if}
                </li>
            </ul>
        </div>
        <div class="select-section container margintop20">
            <div class="col-xs-12 select-div">
                <form id="searchForm" class="padding-none" action="{$base_url}food/search" method="post" name="search_form">

                    <div class="error-msg" style="display: none">
                        <div class="alert alert-danger"></div>
                    </div>
                    <input type="hidden" id="area" name="area" value="{$area}" />
                    <select id="area-select" name="area-select" multiple="multiple1">
                        <optgroup class="group-1" label="东京">
                            <option value="01">新宿-涩谷-原宿</option>
                            <option value="02">池袋-大久保-高田马场</option>
                            <option value="03">六本木-麻布-东京塔</option>
                            <option value="04">上野-秋叶原-浅草</option>
                            <option value="05">银座-新桥-台场</option>
                            <option value="06">东京其他地区</option>
                        </optgroup>
                        <optgroup class="group-2" label="其它地区">
                            <option value="07">横滨</option>
                            <option value="08">大阪</option>
                            <option value="09">京都</option>
                            <option value="10">奈良</option>
                            <option value="11">神户</option>
                            <option value="12">名古屋</option>
                            <option value="13">冲绳</option>
                            <option value="14">北海道</option>
                        </optgroup>
                    </select>

                    <input type="hidden" id="type" name="type" value="{$type}" />
                    <select id="type-select" name="type-select" multiple="multiple2">
                        <option value="01">怀石料理-会席</option>
                        <option value="02">海鲜料理/寿司/生鱼片</option>
                        <option value="03">和牛烤肉店</option>
                        <option value="04">涮肉/寿喜锅</option>
                        <option value="05">鳗鱼料理</option>
                        <option value="06">和食料理</option>
                        <option value="07">居酒屋</option>
                        <option value="08">主题餐厅</option>
                        <option value="09">西式餐厅</option>
                    </select>
                    <input type="hidden" id="consume" name="consume" value="{$consume}" />
                    <select id="consume-select" name="consume-select" multiple="multiple2">
                        <option value="0～5000">0～5千</option>
                        <option value="5000～10000">5千～1万</option>
                        <option value="10000～100000">1万以上</option>
                    </select>
                    <input type="hidden" name="offset" value="0" />
                    <div class="btn-search">
                      <button class="btn btn-secondary" type="submit">寻找美食</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <!-- 内容部分 -->
    <section id="content" class="foodlist bg">
        <div class="container">
            <div class="row error-msg" style="display: none">
                <div class="alert alert-danger"> </div>
            </div>
            <!-- 料理检索显示 -->
            {if count($foods) == 0 }
                <div class="row">
                    <div class="alert alert-success paddingleft10">
                        没有符合条件的料理店！
                    </div>
                </div>
            {/if}
            <div class="row list-div bg home-food-list">
                {foreach from=$foods item=food}
                    <!-- start -->
                    <div id="{$food.FOOD_ID}" class="col-xs-12 col-sm-3 bg-none">
                        <div class="img">
                            <!-- 料理图片 -->
                            <img src="{$base_url}{$food.IMG}">
                        </div>
                        <div class="title">
                            <span>{$food.NAME}</span>
                            <!-- <b class="hidden-xs">{$food.TYPE}</b> -->
                        </div>
                    </div>
                {/foreach}
                <form id="searchDetailForm" class="padding-none" action="{$base_url}food/searchDetail" method="post" name="search_detail_form">
                    <input type="hidden" id="food_id" name="food_id" value="" />
                </form>
            </div>
            <div class="row">
                <div id="pagination">
                    {$page_link}
                </div>
            </div>
        </div>
    </section>
</div>
{/block}