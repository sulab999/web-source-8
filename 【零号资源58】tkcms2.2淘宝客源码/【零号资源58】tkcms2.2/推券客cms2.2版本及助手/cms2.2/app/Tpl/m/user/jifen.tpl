<include file="public:head_nosearch" />
	<main>
		<form method="post" action="{:U('user/jifen')}" id="jifen">
			<div class="user-bg">
				<div class="nav">
					<a href="javascript:history.go(-1);" class="iconfont icon-left back"></a>
					<h3>积分兑换</h3>
				</div>
				<div class="panel-wrap">
					<div class="panel">
						<div class="item">
							<h4><span>{$user.score}</span></h4>
							<p>可用积分</p>
						</div>
					</div>
				</div>
			</div>
			<!--jifen-->
			<div class="am-container">
				<div class="input-box">
					<div class="input-row">
				        <label>积分兑换</label>
				        <div class="formControls">
				        	<input type="text" class="input-text" name="count" id="count" placeholder="请输入您要兑换的数量" />
				        </div>
				    </div>	
				    <div class="input-row">
				        <label>金额</label>
				        <div class="formControls money">
				        	<input readonly="readonly" class="input-text" type="text" name="money" id="money" value="0" /><em>元红包</em>
				        </div>
				    </div>	
				</div>
				<button type="submit" class="am-btn btn-main am-btn-block am-radius" id="duihuan">立即兑换</button>
				<p class="am-margin-top-sm am-text-sm"><span class="c-main">注：</span>100积分 = <span id="calc">{:(C('yh_fanxian')/100)*100}</span>元红包</p>
			</div>
		</form>	
	</main>
<include file="public:foot" />
<script>
	$(function() {
		$("#jifen").validate({
			rules: {
				count: {
					required: true,
					amount: true,
				}
			},
			messages: {
				count: {
					required: "不能为空"
				}
			},
			submitHandler: function(form) {
				$(form).ajaxSubmit({
					success: function(json) {
						if(json.status == 1) {
							layer.msg(json.msg, {
								icon: 6
							});
							setTimeout(function() {
								window.location.href = "{:U('user/journal')}";
							}, 1000);
						} else {
							layer.msg(json.msg, {
								icon: 5,
								time: 1000
							});
						}
					}
				});
			}
		});

		$('#count').on('input propertychange', function() {
			if($(this).val() == '') {
				$("#money").val(0);
			}
			calc_money();
		});

		function calc_money() {
			var count = parseFloat($('#count').val());
			var calc = parseFloat($('#calc').text());
			var money = (calc / 100) * count || 0;
			$('#money').val(money.toFixed(2));
		}
	});
</script>
</body></html>