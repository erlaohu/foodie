{extends file="application/views/templates/layout.tpl"}
{block name=title}预约流程{/block}
{block name=body}
<div>

    <section id="inner-headline" class="hidden-xs" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="{$base_url}">首页</a></li>
                        <li><a href="{$base_url}pages/appointment">预约流程</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="featured" class="hidden-sm hidden-md hidden-lg" >
        <div id="main-slider" class="flexslider">
            <ul class="slides">
                <li>
                    <img src="{$base_url}assets/img/yuyue_top.jpg" alt="" />
                </li>
            </ul>
        </div>
    </section>

	<section id="content" style="padding: 0">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Description -->
                    <img class="hidden-xs" src="{$base_url}assets/img/yuyue.jpg" alt="" />
                    <div class="hidden-sm hidden-md hidden-lg" style="padding: 20px">
                        <img src="{$base_url}assets/img/yuyue_bottom.jpg" alt="" />
                    </div>
                </div>
            </div>          
        </div>
    </section>

</div>
{/block}