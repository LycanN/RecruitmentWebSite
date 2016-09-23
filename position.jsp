<%@ page language="java" import="java.util.*,com.soft.dao.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="网上求职招聘系统">
<meta name="keywords" content="网上求职招聘系统,大学生,离校未就业,失业,找不到工作">
<title>网上求职招聘系统--职位专区</title>
<link rel="stylesheet" href="js/semantic.min.css" />
<link rel="stylesheet" href="css/position.css" />
</head>

<body>
	<div id="topBar">
		<div id="wrapper">
			<div id="logo">
				<img src="img/logo.png" />
				<h1>招聘网</h1>
			</div>
			<div id="menu" class="ui secondary pointing menu">
				<a class="item" href="applicant.jsp">首页</a>
				<a class="item active" href="position.jsp">职位专区</a>
				<a class="item" href="enterprise.jsp">名企专区</a>
				<a class="item" href="resume.jsp">个人简历</a>
				<%
					String op = request.getParameter("op");
					if (op != null && op.equals("exit")) {
						session.removeAttribute("username");
						response.sendRedirect("applicant.jsp");
					}
					String username = (String) session.getAttribute("username");
				%>
				<%
					if (username == null) {
				%>
				<a class="right item" href="login.html">登录</a>
				<%
					}
					else {
				%>
				<div class="ui simple dropdown item right">
					<span class="text"><%=username%></span> <i class="dropdown icon"></i>
					<div class="menu">
						<a class="item" href="edit"> <i class="edit icon"></i>编辑信息
						</a> <a class="item" href="applicant.jsp?op=exit"> <i class="delete icon"></i> 注销用户
						</a>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="query">
			<div class="ui vertical menu">
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">技术</h2>
					<div class="content">
						<a>Java</a> <a>PHP</a> <a>C</a> <a>C++</a> <a>Android</a> <a>iOS</a> <a>测试</a> <a>前端开发</a> <a>技术经理</a> <a>技术总监</a> <a>架构师</a> <a>CTO</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">后台开发</div>
						<div class="content">
							<a class="item">Java</a> <a class="item">Python</a> <a class="item">PHP</a> <a class="item">.NET</a> <a class="item">Ruby</a> <a
								class="item">Hadoop</a> <a class="item">Node.js</a> <a class="item">数据挖掘</a> <a class="item">搜索算法</a>
						</div>
						<div class="header">移动开发</div>
						<div class="content">
							<a class="item">HTML5</a> <a class="item">Android</a> <a class="item">iOS</a> <a class="item">WP</a>
						</div>
						<div class="header">前端开发</div>
						<div class="content">
							<a class="item">web前端</a> <a class="item">Flash</a> <a class="item">html5</a> <a class="item">JavaScript</a>
						</div>
						<div class="header">测试</div>
						<div class="content">
							<a class="item">测试工程师</a> <a class="item">功能测试</a> <a class="item">白盒测试</a> <a class="item">黑盒测试</a> <a class="item">手机测试</a> <a
								class="item">硬件测试</a>
						</div>
						<div class="header">运维</div>
						<div class="content">
							<a class="item">运维工程师</a> <a class="item">网络工程师</a> <a class="item">系统工程师</a> <a class="item">病毒分析</a> <a class="item">网络安全</a> <a
								class="item">系统安全</a>
						</div>
						<div class="header">DBA</div>
						<div class="content">
							<a class="item">MySQL</a> <a class="item">SQLServer</a> <a class="item">Oracle</a> <a class="item">MongoDB</a> <a class="item">数据仓库</a>
						</div>
						<div class="header">项目管理</div>
						<div class="content">
							<a class="item">项目经理</a> <a class="item">项目助理</a>
						</div>
					</div>
				</div>
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">产品</h2>
					<div class="content">
						<a>产品总监</a> <a>产品经理</a> <a>移动产品经理</a> <a>游戏策划</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">高端职位</div>
						<div class="content">
							<a class="item">行政总监/经理</a> <a class="item">财务总监/经理</a> <a class="item">HRD/HRM</a> <a class="item">CFO</a> <a class="item">CEO</a>
						</div>
					</div>
				</div>
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">设计</h2>
					<div class="content">
						<a>设计总监</a> <a>UI</a> <a>UE</a> <a>交互设计</a> <a>数据分析</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">高端职位</div>
						<div class="content">
							<a class="item">行政总监/经理</a> <a class="item">财务总监/经理</a> <a class="item">HRD/HRM</a> <a class="item">CFO</a> <a class="item">CEO</a>
						</div>
					</div>
				</div>
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">运营</h2>
					<div class="content">
						<a>新媒体运营</a> <a>数据运营</a> <a>运营总监</a> <a>COO</a> <a>编辑</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">高端职位</div>
						<div class="content">
							<a class="item">行政总监/经理</a> <a class="item">财务总监/经理</a> <a class="item">HRD/HRM</a> <a class="item">CFO</a> <a class="item">CEO</a>
						</div>
					</div>
				</div>
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">市场与营销</h2>
					<div class="content">
						<a>市场推广</a> <a>市场总监</a> <a>市场策划</a> <a>BD</a> <a>销售总监</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">高端职位</div>
						<div class="content">
							<a class="item">行政总监/经理</a> <a class="item">财务总监/经理</a> <a class="item">HRD/HRM</a> <a class="item">CFO</a> <a class="item">CEO</a>
						</div>
					</div>
				</div>
				<div class="ui left pointing dropdown link item">
					<i class="dropdown icon"></i>
					<h2 class="header">职能</h2>
					<div class="content">
						<a>HR</a> <a>行政</a> <a>会计</a> <a>出纳</a>
					</div>
					<div class="menu" id="little-menu">
						<div class="header">人力资源</div>
						<div class="content">
							<a class="item">人事/HR </a> <a class="item">培训经理</a> <a class="item">薪资福利经理</a> <a class="item">绩效考核经理</a> <a class="item">人力资源</a> <a
								class="item">招聘</a> <a class="item">HRBP</a> <a class="item">员工关系</a>
						</div>
						<div class="header">行政</div>
						<div class="content">
							<a class="item">助理</a> <a class="item">前台</a> <a class="item">行政</a> <a class="item">总助</a> <a class="item">文秘</a>
						</div>
						<div class="header">财务</div>
						<div class="content">
							<a class="item">会计</a> <a class="item">出纳</a> <a class="item">财务</a> <a class="item">结算</a> <a class="item">税务</a> <a class="item">审计</a>
							<a class="item">风控</a>
						</div>
						<div class="header">高端职位</div>
						<div class="content">
							<a class="item">行政总监/经理</a> <a class="item">财务总监/经理</a> <a class="item">HRD/HRM</a> <a class="item">CFO</a> <a class="item">CEO</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="query-bar">
			<img src="img/pp.jpg" />
		</div>
		<div id="recommend">
			<!--热门职位-->
			<div class="ui bottom attached active tab segment" data-tab="first" id="hot_position">
				<%
					//要显示的信息从request中取得
					ArrayList list = (ArrayList) request.getAttribute("list");
					if (list != null) {
						for (int i = 0; i < list.size(); i++) {
							//从al中取出UserBean
							DutyBean bean = (DutyBean) list.get(i);
				%>
				<div class="position">
					<div class="job-info">
						<h3 class="header">
							<a href="detail.jsp"><%=bean.getDuty_name()%></a>
						</h3>
						<p class="condition" title="8-12万_大连-沙河口_学历不限_7年工作经验">
							<span class="text-warning"><%=bean.getSalary()%></span> <span class="area"><%=bean.getOffice()%></span> <span class="edu"><%=bean.getEdu()%></span>
							<span><%=bean.getExperience()%></span>
						</p>
						<div class="time-info">
							<p>
								发布于：<%=bean.getCreate_time()%></p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">

						<p class="content"><%=bean.getEntername()%></p>
						<p><%=bean.getType()%></p>
						<div class="extra">
							<div class="ui label">年底双薪</div>
							<div class="ui label">绩效奖金</div>
							<div class="ui label">带薪年假</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>

				<%
					}
				%>
				<%
					}
				%>
				<div class="position hot2">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/513_5135870/?imscid=R000000075">ASP.net软件开发工程师</a>
						</h3>
						<p class="condition" title="10-12万_大连-新区_大专或以上_经验不限">
							<span class="text-warning">10-12万</span> <span class="area">大连-新区</span> <span class="edu">大专或以上</span> <span>经验不限</span>
						</p>
						<div class="time-info">
							<p>发布于：2小时前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">大连龙采科技开发有限公司</p>
						<p>互联网/移动互联网/电子商务</p>
						<div class="extra">
							<div class="ui label">团队聚餐</div>
							<div class="ui label">公司规模大</div>
							<div class="ui label">领导好</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>
				<div class="position hot3">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/558_5586401/?imscid=R000000075">网站架构设计师</a>
						</h3>
						<p class="condition" title="7-10万_大连-甘井子_大专或以上_经验不限">
							<span class="text-warning">7-10万</span> <span class="area">大连-甘井子</span> <span class="edu">大专或以上</span> <span>经验不限</span>
						</p>
						<div class="time-info">
							<p>发布于：3小时前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">吉林省美罗国际生物科技集团股份有限公司</p>
						<p>制药/生物工程</p>
						<div class="extra">
							<div class="ui label">发展空间大</div>
							<div class="ui label">岗位晋升</div>
							<div class="ui label">带薪年假</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>

				<div class="position hot4">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/399_3995323/?imscid=R000000075">JAVA开发工程师 </a>
						</h3>
						<p class="condition" title="10-12万_大连_本科或以上_3年工作经验 ">
							<span class="text-warning">10-12万</span> <span class="area">大连</span> <span class="edu">本科或以上</span> <span>3年工作经验</span>
						</p>
						<div class="time-info">
							<p>发布于：5小时前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">华录智达科技有限公司</p>
						<p>计算机软件</p>
						<div class="extra">
							<div class="ui label">领导好</div>
							<div class="ui label">技能培训</div>
							<div class="ui label">岗位晋升</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>
				<div class="position hot5">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/399_3995323/?imscid=R000000075">O2O运营经理</a>
						</h3>
						<p class="condition" title="7-8万_大连-中山区_学历不限_5年工作经验">
							<span class="text-warning">7-8万</span> <span class="area">大连-中山区</span> <span class="edu">学历不限</span> <span>5年工作经验</span>
						</p>
						<div class="time-info">
							<p>发布于：4小时前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">大连上品堂海洋生物有限公司</p>
						<p>农/林/牧/渔</p>
						<div class="extra">
							<div class="ui label">绩效奖金</div>
							<div class="ui label">交通补助</div>
							<div class="ui label">带薪年假</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/semantic.min.js"></script>
	<script type="text/javascript" src="js/position.js"></script>
	<script>
	$(function(){
		alert("aaaaa");
		$("#little-menu").find("a").click(function(){
			var duty_name=$(this).text();
			alert(duty_name);
			window.location.href="pickDuty?duty_name="+duty_name;
		});
	});
	</script>
</body>

</html>