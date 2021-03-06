<include file="public:head_nosearch" />
	<main>
		<div class="user-bg">
			<div class="nav">
				<a href="javascript:history.go(-1);" class="iconfont icon-left back"></a>
				<h3>财务日志</h3>
			</div>
			<div class="panel-wrap">
				<div class="panel">
					<div class="item">
						<h4><span>{$user.money}</span>元</h4>
						<p>账户余额</p>
					</div>
					<div class="item">
						<h4><span>{$balance}</span>元</h4>
						<p>累计提现金额</p>
					</div>
				</div>
			</div>
		</div>
		<div class="list">
			<table>
				<thead>
					<tr>
						<th>时间</th>
						<th>项目</th>
						<th>金额</th>
					</tr>
				</thead>
				<tbody>
					<volist name="info" id="vo">
						<tr>
							<td width="30%">{$vo.create_time|frienddate}</td>
							<td width="50%">{$vo.type}</td>
							<td width="20%"><span class="am-text-primary">{$vo.money}</span></td>
						</tr>
					</volist>
				</tbody>
			</table>
			<div class="page">
				<if condition="$total_item gt 10">
				{$page}
				</if>
			</div>
		</div>
	</main>
<include file="public:foot" />
</body></html>