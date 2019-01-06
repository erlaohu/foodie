{extends file="application/views/templates/layout.tpl"}
{block name=title}联系我们{/block}
{block name=body}
<div class="contact-div">

    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="{$base_url}">首页</a></li>
                        <li><a href="{$base_url}pages/contact">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section id="content">
        <div class="container">
            <!-- 描述 -->
            <div class="row bg">
                <div class="col-lg-6">
                    <!-- Description -->
                    <h4>联系信息</h4>
                    <dl>
                        <dt>公司名字</dt>
                        <dd>有限会社PC-TAKU</dd>
                        <dt>地址</dt>
                        <dd>日本国东京都</dd>
                        <dd>台东区上野3-9-1朝日大厦4F</dd>
                        <dt>电话</dt>
                        <dd>+813-3835-8445</dd>
                    </dl>
                </div>
            </div>
            <!-- divider -->
            <!-- <div class="row">
                <div class="col-lg-12">
                    <div class="solidline">
                    </div>
                </div>
            </div> -->
            <!-- end divider -->
            <div class="margintop20">
                <h4>可以发邮件给我们</h4>
                <div class="row">
                    <div class="col-lg-12">
                        {if $status == 'success' }
                            <div class="alert alert-success paddingleft10">
                                邮件发送成功！
                            </div>
                        {/if}
                        {if $status != '' && $status != 'success'}
                            <div class="alert alert-danger paddingleft10">
                                邮件发送失败！ 失败原因：{$status}
                            </div>
                        {/if}
                    </div>
                </div>
                <form id="contactForm" action="{$base_url}mail/send" method="post" class="validateform" name="send-contact">
                    <div id="sendmessage">
                        请输入发送的信息
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <input type="text" name="name" class="form-control" placeholder="* 输入姓名" maxlength="10" />
                        </div>
                        <div class="col-lg-4">
                            <input type="text" name="email" class="form-control" placeholder="* 输入联系方式邮箱，微信，QQ等" maxlength="100" />
                        </div>
                        <div class="col-lg-4">
                            <input type="text" name="subject" class="form-control" placeholder="输入邮件主题" maxlength="100" />
                        </div>
                        <div class="col-lg-12">
                            <textarea rows="12" name="message" class="form-control input-block-level" placeholder="* 请输入邮件的具体内容" maxlength="2000"></textarea>
                            <p class="mail-div col-xs-12 col-sm-3">
                                <button class="btn margintop10 pull-left" type="submit">发送邮件</button>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
{/block}