<include file="public:top" />
<body>
	<include file="public:head" />
	<!--wrap-->
	<div class="wrap">
		<div class="container cl">
			<div class="headlines-l">
				<div class="shai-wrap">
					<div class="shai-tit">
						<h4>晒单赚积分</h4>
						<p>已有<b class="c-main">{$total_item}</b>小伙伴晒单赚积分了</p>
					</div>
					<div class="shai-con">
						<ul>
							<volist name="list" id="vo">
								<li>
									<div class="shai-panel">
										<img src="{$vo.avatar}" alt="" class="avatar"/>
										<div class="hline"></div>
										<a href="{:U('basklist/read',array('id'=>$vo['id']))}{$trackurl}" title="" class="txt">
											<h3 class="text-overflow">{$vo.title}</h3>
											<h4>获得{$vo.integray}积分</h4>
										</a>
									</div>
									<div class="shai-body cl">
										<div class="shai-name">
											<h5>{$vo.nickname}</h5>
											<span>{$vo.create_time|frienddate}</span>
										</div>
										<a href="{:U('basklist/read',array('id'=>$vo['id']))}{$trackurl}" title="" class="shai-sub shai-overflow">
											<img src="{$vo.img}" alt="" />
											<div class="txt">
												<p>
													{$vo.content}
												</p>
												<span class="c-primary">查看详情</span>
											</div>
										</a>
									</div>
								</li>
							</volist>
						</ul>
					</div>
					<!--page-->
					<div class="mainbody_6" style="margin: 0 auto;margin-bottom: 20px;margin-top: 26px;">
						<div id="yw0" class="pager">
							<if condition="$total_item gt $size">
								{$page}
							</if>
						</div>
					</div>
				</div>
			</div>
			<div class="headlines-r">
				<!--shai-->
				<div class="white-bar mb-20">
					<div class="shai-icon">
						<a href="{:U('user/order')}{$trackurl}" class="btn btn-main mb-20" title=""><i class="iconfont icon-camera"></i>我要晒单赚积分</a> 
						<a href="{:U('basklist/course')}" class="btn btn-main-outline" title=""><i class="iconfont icon-zhangdan"></i>晒单赚积分教程</a> 
					</div>
					<div class="jifendaren pd-15">
						<img src="__STATIC__/tqkpc/images/jifendaren.png" class="mb-10"/>
						<ul>
						<volist name="talent" id="vo">
							<li>
								<img src="{$vo.avatar}"/>
								<span>{$vo.nickname}</span>
								<b class="c-main f-r">+{$vo.integray}</b>
							</li>
						</volist>
						</ul>
					</div>
				</div>
				<!--youhaohuo-->
				<div class="white-bar pd-15">
					<img src="__STATIC__/tqkpc/images/youhaohuo.png" class="mb-20"/>
					<ul>
						<volist name="sellers" id="vo">
							<li>
								<div class="row cl">
									<div class="col-sm-4 col-xs-4">
										<a rel="nofollow" href="{:U('/item/',array('id'=>$vo['id']))}{$trackurl}" target="_blank"><img src="{$vo.pic_url}_300x300" alt="" width="90" height="90"/></a>
									</div>
									<div class="col-sm-8 col-xs-8">
										<a  rel="nofollow" href="{:U('/item/',array('id'=>$vo['id']))}{$trackurl}" target="_blank" class="tit">{$vo.title}</a>
										<p class="c-red f-14">券后价：￥{$vo.coupon_price}</p>
										<p class="f-12 mt-5"><img src="__STATIC__/tqkpc/images/tmall.png" class="va-t mr-5"/>月销<span class="c-primary">{$vo.volume}</span>件</p>
									</div>
								</div>
							</li>
						</volist>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<include file="public:foot" />
</body>
</html>