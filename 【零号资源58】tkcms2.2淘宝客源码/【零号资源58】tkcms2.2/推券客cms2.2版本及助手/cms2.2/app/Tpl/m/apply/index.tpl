<include file="public:head_nosearch" />
<!--header-->
	<header data-am-widget="header" class="am-header am-header-default am-header-fixed white-nav">
      	<div class="am-header-left am-header-nav">
		    <a href="javascript:history.go(-1);" class="iconfont icon-left"></a>
		</div>
		<h1 class="am-header-title">申请代理站长</h1>
		<include file="public:navright" />
	</header>
	<main>
		<a href=""><img src="__STATIC__/tqkwap/images/bill.jpg" class="am-img-responsive"/></a>
		<div class="bill">
			<h2><i class="iconfont icon-v"></i>站长特权</h2>
			<div class="recruit-power am-cf">
				<span class="iconfont icon-erweima"></span>
				<div class="txt">
					<h4>站长专属身份标识</h4>
					<p>每位站长拥有自己独立的身份标识，二维码和网站链接</p>
				</div>
			</div>
			<div class="recruit-power am-cf">
				<span class="iconfont icon-qiandai"></span>
				<div class="txt">
					<h4>推广赚奖励</h4>
					<p>如果您推广的链接，用户成功领取优惠券下单后，您将可以获得商家奖励</p>
				</div>
			</div>
			<div class="recruit-power am-cf">
				<span class="iconfont icon-idea"></span>
				<div class="txt">
					<h4>坐等收钱 零成本投入</h4>
					<p>无需囤货、无需售后、不需要投入时间管理，所有问题都有淘宝天猫卖家处理</p>
				</div>
			</div>
			<div class="recruit-power am-cf">
				<span class="iconfont icon-huojian"></span>
				<div class="txt">
					<h4>自动结算，极速提现</h4>
					<p>用户下单签收就自动获得商家奖励，收益提现秒审核</p>
				</div>
			</div>
		<if condition='$is_login eq "yes"'>
			<a href="{:U('apply/submit')}" class="am-btn am-btn-warning am-btn-block am-radius am-margin-top-xl">立即申请</a>
		<else/>
		<a href="javascript:alert('请登录后再提交申请');location.href='/index.php?g=m&m=login'" class="am-btn am-btn-warning am-btn-block am-radius am-margin-top-xl am-margin-bottom-xl">立即申请</a>
								
		</if>
		</div>
	</main>
<include file="public:amz_foot" />
</body>
</html>