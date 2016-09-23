<%@ page language="java" import="java.util.*,com.soft.dao.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="网上求职招聘系统">
<meta name="keywords" content="网上求职招聘系统,大学生,离校未就业,失业,找不到工作">
<title>网上求职招聘系统--用户主页</title>
<link rel="stylesheet" href="js/semantic.min.css" />
<link rel="stylesheet" href="css/applicant.css" />
</head>
<%
	if (request.getAttribute("list") != null) {
%>
<body>
	<%
		}
		else {
	%>

<body onload="javascript:location.href='getHotDuty?flag=1'">
	<%
		}
	%>
	<div id="topBar">
		<div id="wrapper">
			<div id="logo">
				<img src="img/logo.png" />
				<h1>招聘网</h1>
			</div>
			<div id="menu" class="ui secondary pointing menu">
				<a class="item active" href="applicant.jsp">首页</a> <a class="item" href="position.jsp">职位专区</a> <a class="item" href="enterprise.jsp">名企专区</a>
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
		<div id="plugin">
			<div id="movie">
				<img src="img/d1.jpg" /> <img src="img/d2.jpg" /> <img src="img/d3.jpg" />
			</div>
			<!--table图片进度条,用来展示切换图片 在js中动态添加-->
		</div>
	</div>
	<div id="advertisement">
		<div id="recommend">
			<div class="ui top attached tabular menu">
				<a class="active item" data-tab="first">热门职位</a> <a class="item" data-tab="second">最新职位</a>
			</div>
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
			</div>
			<!--最新职位-->
			<div class="ui bottom attached tab segment" data-tab="second" id="new_position">

				<div class="position hot1">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/520_5207128/?imscid=R000000075">产品经理</a>
						</h3>
						<p class="condition" title="10-13万_大连_学历不限_经验不限">
							<span class="text-warning">10-13万</span> <span class="area">大连</span> <span class="edu">学历不限</span> <span>经验不限</span>
						</p>
						<div class="time-info">
							<p>发布于：14分钟前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">

						<p class="content">心医国际数字医疗系统有限公司</p>
						<p>计算机软件</p>
						<div class="extra">
							<div class="ui label">五险一金</div>
							<div class="ui label">弹性工作</div>
							<div class="ui label">技能培训</div>
						</div>
					</div>
					<div class="triangle">
						<span class="tr-icon">企</span>
					</div>
				</div>
				<div class="position hot2">
					<div class="job-info">
						<h3 class="header">
							<a href="https://job.liepin.com/513_5135870/?imscid=R000000075">后台PHP开发担当</a>
						</h3>
						<p class="condition" title="10-16万_大连_大专或以上_5年工作经验">
							<span class="text-warning">10-16万</span> <span class="area">大连</span> <span class="edu">大专或以上</span> <span>5年工作经验</span>
						</p>
						<div class="time-info">
							<p>发布于：昨天</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">知名日资独资子公司</p>
						<p>互联网/移动互联网/电子商务,计算机软件</p>
						<div class="extra">
							<div class="ui label">团队聚餐</div>
							<div class="ui label">通讯津贴</div>
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
							<a href="https://job.liepin.com/558_5586401/?imscid=R000000075">Oracle数据库高级管理员/组长</a>
						</h3>
						<p class="condition" title="11-24万_大连-沙河口_学历不限_经验不限">
							<span class="text-warning">11-24万</span> <span class="area">大连-沙河口</span> <span class="edu">学历不限</span> <span>经验不限</span>
						</p>
						<div class="time-info">
							<p>发布于：3小时前</p>
						</div>
					</div>
					<div class="divider"></div>
					<div class="company-info">
						<p class="content">FIL(大连)科技有限公司</p>
						<p>互联网/移动互联网/电子商务</p>
						<div class="extra">
							<div class="ui label">带薪年假</div>
							<div class="ui label">定期体检</div>
							<div class="ui label">节日礼物</div>
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
		<div id="company">
			<div class="ui items">
				<div class="item">
					<div class="img-c">
						<a src="https://vip.liepin.com/8070678/"><img src="img/c1.png"></a>
					</div>
				</div>
				<div class="item">
					<div class="img-c">
						<a src="https://company.liepin.com/7855684/"><img src="img/c2.png"></a>
					</div>
				</div>
				<div class="item">
					<div class="img-c">
						<a src="https://vip.liepin.com/5767874/"><img src="img/c3.png"></a>
					</div>
				</div>
				<div class="item">
					<div class="img-c">
						<a src="https://vip.liepin.com/3253236/"><img src="img/c4.png"></a>
					</div>
				</div>
				<div class="item">
					<div class="img-c">
						<a src="https://company.liepin.com/8815041/"><img src="img/c5.png"></a>
					</div>
				</div>
				<div class="item">
					<div class="img-c">
						<a src="https://company.liepin.com/1178516/"><img src="img/c6.png"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/semantic.min.js"></script>
	<script type="text/javascript" src="js/plugin.js"></script>
	<script type="text/javascript" src="js/applicant.js"></script>
</body>

</html>