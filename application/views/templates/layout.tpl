<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title> 吃货在日本 </title>
    <link rel="shortcut icon" href="{$base_url}favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="吃货在日本,日本美食,河豚料理"/>
    <meta name="description" content="吃货在日本,日本美食,河豚料理"/>
    <meta name="author" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="format-detection" content="telephone=no" />
    <link href="{$base_url}assets/css/bootstrap.min.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/fancybox/jquery.fancybox.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/bootstrap.min.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/bootstrap-multiselect.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/flexslider.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/style.css?20180809" rel="stylesheet" type="text/css"/>
    <link href="{$base_url}assets/css/foodie.css?20180809" rel="stylesheet" type="text/css"/>
    <script src="{$base_url}assets/js/jquery-2.1.1.min.js?20180809"></script>
    <script src="{$base_url}assets/js/bootstrap.min.js?20180809"></script>
    <script src="{$base_url}assets/js/bootstrap-multiselect.js?20180809"></script>
    <script src="{$base_url}assets/js/jquery.fancybox.pack.js?20180809"></script>
    <script src="{$base_url}assets/js/jquery.fancybox-media.js?20180809"></script>
    <script src="{$base_url}assets/js/google-code-prettify/prettify.js?20180809"></script>
    <script src="{$base_url}assets/js/portfolio/jquery.quicksand.js?20180809"></script>
    <script src="{$base_url}assets/js/portfolio/setting.js?20180809"></script>
    <script src="{$base_url}assets/js/jquery.flexslider.js?20180809"></script>
    <script src="{$base_url}assets/js/animate.js?20180809"></script>
    <script src="{$base_url}assets/js/custom.js?20180809"></script>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
      (adsbygoogle = window.adsbygoogle || []).push({
        google_ad_client: "ca-pub-9385680296433922",
        enable_page_level_ads: true
      });
    </script>
</head>
<body>
    <div style="display:none">
    	<img src="{$base_url}assets/img/logo_40.png"/>
    </div>
    <div id="wrapper">
        {block name=header}
            <!-- start header -->
            <header>
                <div class="navbar navbar-default navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <img class="logo" src="{$base_url}assets/img/logo.jpg"><a class="navbar-brand" href="{$base_url}"><span>吃货在日本<span></a>
                        </div>
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <!-- <li {if $active == 'home'} class="active"{/if}><a href="{$base_url}">首页</a></li>
                                <li {if $active == 'area'} class="active"{/if}><a href="{$base_url}pages/area">地区检索</a></li>
                                <li {if $active == 'food'} class="active"{/if}><a href="{$base_url}pages/food">料理检索</a></li> -->
                                <!-- <li {if $active == 'appointment'} class="active"{/if}><a href="{$base_url}pages/appointment">预约流程</a></li> -->
                                <li {if $active == 'about'} class="active"{/if}><a href="{$base_url}pages/about">网站介绍</a></li>
                                <li {if $active == 'contact'} class="active"{/if}><a href="{$base_url}pages/contact">联系我们</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>
        {/block}

        {block name=body}body{/block}

        {block name=footer}
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-md-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widgetheading">帮助中心</h4>
                            <ul class="link-list">
                                <!-- <li><a href="{$base_url}pages/appointment">预约流程</a></li> -->
                                <li><a href="{$base_url}pages/about">网站介绍</a></li>
                                <li><a href="{$base_url}pages/contact">联系我们</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="col-xs-6 col-md-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widgetheading">搜索美食</h4>
                            <ul class="link-list">
                                <li><a href="{$base_url}pages/area">地区检索</a></li>
                                <li><a href="{$base_url}pages/food">料理检索</a></li>
                            </ul>
                            {*<address>*}
                            {*<strong>有限会社PC-TAKU</strong><br>*}
                            {*日本国东京都<br>*}
                            {*台东区上野3-9-1朝日大厦4F</address>*}
                            {*<p>*}
                            {*<i class="icon-phone"></i> +813-3835-8445 <br>*}
                            {*<i class="icon-envelope-alt"></i> info@chihuo-re.com*}
                            {*</p>*}
                        </div>
                    </div> -->
                    <div class="col-xs-6 col-md-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widgetheading">微信公众账号</h4>
                            <div class="weixin-div">
                                <img src="{$base_url}assets/img/weixin.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-12 col-lg-6">
                        <div class="widget">
                            <h4 class="widgetheading">合作伙伴</h4>
                            <div class="flickr_badge">
                                <img src="{$base_url}assets/img/partner/1.png">
                                <img src="{$base_url}assets/img/partner/2.png">
                                <img src="{$base_url}assets/img/partner/3.png">
                                <img src="{$base_url}assets/img/partner/4.png">
                                <img src="{$base_url}assets/img/partner/5.png">
                                <img src="{$base_url}assets/img/partner/6.png">
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="copyright">
                                <p>
                                    <span>Copyright © Foodie_in_japan All Rights Reserved</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="col-xs-12 col-md-3 popover top weixin">
            <div class="arrow"></div>
            <h3 class="popover-title"><div style="text-align:center;">微信扫描二维码预约</div></h3>
            <div class="popover-content">
                <img src="{$base_url}assets/img/lianxi.jpg">
            </div>
        </div>
        <a href="javascript:void(0)" class="appointment-weixin">预约</a>
        <a href="javascript:void(0)" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        {/block}
    </div>
</body>
</html>