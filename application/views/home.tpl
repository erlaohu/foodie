{extends file="application/views/templates/layout.tpl"}
{block name=title}首页{/block}
{block name=body}
{literal}
    <script type="text/javascript">
        $(document).ready(function() {
            $('.item-thumbs').click(function() {
                $('#area').val('全部');
                $('#consume').val('全部');
                $('#type').val($(this).find('b').attr('class'));
                $('#searchForm').submit();
            });
            $('.all-select').click(function() {
                $('#area').val('全部');
                $('#consume').val('全部');
                $('#type').val('全部');
                $('#searchForm').submit();
            });
            $('.home-food-list > div').click(function() {
                $('#food_id').val($(this).attr('id'));
                $('#searchDetailForm').submit();
            });
        });
    </script>
{/literal}
    <!-- 滚动显示图片 -->
    <section id="featured">
        <div id="main-slider" class="flexslider">
            <ul class="slides">
                <li>
                    <img src="{$base_url}assets/img/slides/1.jpg" alt="" />
                </li>
                <li>
                    <img src="{$base_url}assets/img/slides/2.jpg" alt="" />
                </li>
                <li>
                    <img src="{$base_url}assets/img/slides/3.jpg" alt="" />
                </li>
            </ul>
        </div>
        <div class="visible-xs container margintop10">
            <div class="row">
                <div class="col-lg-12">
                    <div class="big-cta">
                        <div class="cta-text">
                            <h4>日本美食搜索 , 就在【吃货在日本】</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="select-section container">
            <div class="col-xs-12 select-div">
                <form id="searchForm" class="padding-none" action="{$base_url}food/search" method="post" name="search_form">

                    <div class="error-msg" style="display: none">
                        <div class="alert alert-danger"></div>
                    </div>
                    <input type="hidden" id="area" name="area" value="" />
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

                    <input type="hidden" id="type" name="type" value="" />
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
                    <input type="hidden" id="consume" name="consume" value="" />
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

    <!-- 本站宣传 -->
    <section class="hidden-xs callaction">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="big-cta">
                        <div class="cta-text">
                            <h4>日本美食搜索 , 就在【吃货在日本】</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 检索部分 -->
    <section id="content" class="home-content">
        <div class="container">
          <!-- 料理检索显示 -->
          <div class="row">
              <div class="col-lg-12">
                  <!-- <h4 class="heading left-line">料理检索</h4> -->
                  <div class="row">
                      <section id="cooks">
                          <ul id="thumbs" class="portfolio">
                              <li class="col-sm-4">
                                <div class="item-thumbs">
                                    <!-- 料理图片 -->
                                    <img src="{$base_url}assets/img/food/type/1.jpg">
                                    <b class="01">怀石料理-会席</b>
                                  </div>
                              </li>
                              <li class="col-sm-4">
                                <div class="item-thumbs">
                                    <!-- 料理图片 -->
                                    <img src="{$base_url}assets/img/food/type/2.jpg">
                                    <b class="02">海鲜料理/寿司/生鱼片</b>
                                  </div>
                              </li>
                              <li class="col-sm-4">
                                <div class="item-thumbs">
                                    <!-- 料理图片 -->
                                    <img src="{$base_url}assets/img/food/type/3.jpg">
                                    <b class="06">和食料理</b>
                                  </div>
                              </li>
                              <li class="col-sm-4">
                                <div class="item-thumbs">
                                    <!-- 料理图片 -->
                                    <img src="{$base_url}assets/img/food/type/4.jpg">
                                    <b class="04">涮肉/寿喜锅</b>
                                  </div>
                              </li>
                              <li class="col-sm-4">
                                <div class="item-thumbs">
                                    <!-- 料理图片 -->
                                    <img src="{$base_url}assets/img/food/type/5.jpg">
                                    <b class="03">和牛烤肉店</b>
                                  </div>
                              </li>
                              <li class="col-sm-4">
                                  <div class="item-thumbs">
                                      <!-- 料理图片 -->
                                      <img src="{$base_url}assets/img/food/type/6.jpg">
                                      <b class="05">鳗鱼料理</b>
                                  </div>
                              </li>
                          </ul>
                      </section>
                  </div>
              </div>
          </div>
          
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

            <div class="row all-select">
                <div class="big-cta">
                    <div class="cta-text">
                        <h4>查找所有餐厅</h4>
                    </div>
                </div>
            </div>

            <!-- 条件检索显示 -->
            <div class="row">
                <div class="hidden-xs col-md-offset-3 col-md-6 sentence-div">
                    <h4 class="heading margintop20">日本美食文章</h4>
                    <div class="row list-div">
                        {foreach from=$sentences item=sentence}
                            <div class="col-xs-12 title">
                                <img src="{$base_url}{$sentence.IMG}">
                                <span><a href="http://{$sentence.URL}" target="_blank">{$sentence.TITLE}</a></span>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="visible-xs col-xs-12 sentence-div">
                    <h4 class="heading margintop20 left-line">日本美食文章</h4>
                    <div class="row list-div">
                        {foreach from=$sentences item=sentence}
                            <div class="col-xs-12 title">
                                <img src="{$base_url}{$sentence.IMG}">
                                <span><a href="http://{$sentence.URL}" target="_blank">{$sentence.TITLE}</a></span>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
{/block}