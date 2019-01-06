{extends file="application/views/templates/layout.tpl"}
{block name=title}平台介绍{/block}
{block name=body}
{literal}
    <style type="text/css">
        .about-logo b {
            position: relative;
            font-size: 50px;
            padding-left: 20px;
        }
        .about-logo b:first-child {
            top: 80px;
            color: #c7c7c7;
            z-index: -1;
        }
        .about-logo b:last-child {
            top: 75px;
            color: #333;
        }
        .about-logo img {
            width: 250px;
            height: 250px;
            margin: 10px 0px 10px -10px;
        }
        .about-detail {
            background: rgba(0, 0, 0, 0.8);
            color: #ffffff;
            margin: 20px 0;
            padding: 20px 0;
        }
        .about-detail > div{
            padding: 20px;
        }
        .about-detail img {
            float: right;
            width: 160px;
            height: 100px;
            margin: 10px;
            position: relative;
            right: -20px;
        }
        .about-detail h4 {
            color: #ffffff;
        }
        .about-title {
            text-align: center;
        }
        .about-div > div {
            border-bottom: 1px solid #c7c7c7;
            padding: 5px 10px;
        }
        .about-div > div:last-child {
            margin-bottom: 40px;
        }

        @media (max-width: 767px) {
            .about-logo b {
                font-size: 25px;
                padding-left: 0px;
            }
            .about-logo b:first-child {
                top: 30px;
            }
            .about-logo b:last-child {
                top: 20px;
            }
            .about-logo img {
                width: 100px;
                height: 100px;
            }
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.about-div div:even').each(function() {
                $(this).height($(this).next().height());
            }); 
        });
    </script>
{/literal}
<div>
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="{$base_url}">首页</a></li>
                        <li><a href="{$base_url}pages/about">网站介绍</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Description -->
                    <img src="{$base_url}assets/img/jieshao.jpg" alt="" />
                </div>
            </div>
        </div>
    </section>

    <!-- 空白追加 -->
    <div class="row">
        <div class="col-lg-12">
            <div class="solidline">
            </div>
        </div>
    </div>

	{*<section>*}
        {*<div class="container">*}
            {*<div class="row">*}
                {*<div class="col-lg-12 about-logo">*}
                    {*<div class="col-xs-8">*}
                        {*<b>WELCOME TO</b>*}
                        {*</br>*}
                        {*<b>吃货的饕餮盛宴！</b>*}
                    {*</div>*}
                    {*<div class="col-xs-4"><img src="{$base_url}assets/img/logo.jpg"></div>*}
                {*</div>*}
            {*</div>          *}
        {*</div>*}
    {*</section>*}

    {*<section>*}
        {*<div class="container">*}
            {*<div class="row about-detail">*}
                {*<h4 class="about-title">吃货在日本</h4>*}
                {*<div>*}
                    {*&nbsp;&nbsp;&nbsp;【吃货在日本】秉持为广大赴日游客服务的初衷，积极与国内旅行社及平台商合作，解决旅途中实际发生的店铺信息偏差、用餐预约困难、语言障碍等诸多问题。</br></br>*}
                    {*&nbsp;&nbsp;&nbsp;&nbsp;2016年为迎合旅日自由行趋势猛增的市场需求、展开了线上及线下游客的实际现地服务，奠定了访日游客与日本美食业者的沟通渠道与基础。截至2017年2月底超过500家日本知名餐厅与【吃货在日本】建立了战略合作关系，并且随着日本政府不断简化自由行赴日游客的签证手续，这个数字还在不断增加。*}
                    {*</br></br>           *}
                    {*&nbsp;&nbsp;&nbsp;&nbsp;为了让游客真正了解与体验日本饮食文化的精髓，【吃货在日本】选择的合作餐厅均是日本人耳熟能详，评分极高并且是能够代表日本饮食文化的优质店家。签约餐厅种类丰富、囊括了所有日本料理分类。居酒屋、怀石料理、和牛烤肉、河豚料理、家庭料理、海鲜料理等各个形式以及超人气的主题餐厅。*}
                    {*</br></br>*}
                    {*&nbsp;&nbsp;&nbsp;&nbsp;在中国消费者和日本美食文化的沟通渠道领域，【吃货在日本】勇于探索、精益求精，已经成为该领悟的权威领跑者。*}
                    {*</br></br>*}
                    {*&nbsp;&nbsp;&nbsp;&nbsp;平台理念：我们专注日本饮食文化，专为深度自由行游客介绍高满意度的日本美食体验及各类服务*}
                    {*<img src="{$base_url}assets/img/about.jpg" alt="" />*}
                {*</div>*}
            {*</div>          *}
        {*</div>*}
    {*</section>*}

    {*<section id="content">*}
        {*<div class="container">*}
            {*<div class="row">*}
                {*<h4 class="about-title">关于我们</h4>*}
                {*<div class="col-lg-12 about-div">*}
                    {*<div class="col-xs-3 col-sm-1">公司名称</div>*}
                    {*<div class="col-xs-9 col-sm-5">有限会社PC-TAKU</div>*}
                    {*<div class="col-xs-3 col-sm-1">成立时间</div>*}
                    {*<div class="col-xs-9 col-sm-5">2005年8月8日</div>*}
                    {*<div class="col-xs-3 col-sm-1">注册资金</div>*}
                    {*<div class="col-xs-9 col-sm-5">1200万日元</div>*}
                    {*<div class="col-xs-3 col-sm-1">代表法人</div>*}
                    {*<div class="col-xs-9 col-sm-5">方拓</div>*}
                    {*<div class="col-xs-3 col-sm-1">公司电话</div>*}
                    {*<div class="col-xs-9 col-sm-5">+813-3835-8445</div>*}
                    {*<div class="col-xs-3 col-sm-1">公司传真</div>*}
                    {*<div class="col-xs-9 col-sm-5">+813-3835-8447</div>*}
                    {*<div class="col-xs-3 col-sm-1">公司地址</div>*}
                    {*<div class="col-xs-9 col-sm-5">*}
                        {*〒110-0005&nbsp;&nbsp;&nbsp;&nbsp;*}
                        {*日本国东京都台东区上野3-9-1朝日大厦4F*}
                    {*</div>*}
                    {*<div class="col-xs-3 col-sm-1">主要业务</div>*}
                    {*<div class="col-xs-9 col-sm-5">日本旅游咨询、日本餐厅推广、IT产品周边</div>*}
                {*</div>*}
            {*</div>          *}
        {*</div>*}
    {*</section>*}
</div>
{/block}