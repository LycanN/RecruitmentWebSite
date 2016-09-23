<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="网上求职招聘系统">
<meta name="keywords" content="网上求职招聘系统,大学生,离校未就业,失业,找不到工作">
<title>网上求职招聘系统--名企专区</title>
<link rel="stylesheet" href="js/semantic.min.css" />
<link rel="stylesheet" href="css/po-detail.css" />
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
				<a class="item" href="position.jsp">职位专区</a> 
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
	<div id='da' style="background: #F3F3FA;">
		<div id='divb'>
			<div id='divt' style="color: #FFF">
				<div id='fdiv' style="background: #5FC17A">
					<h1 title="web前端工程师">
						<font size='3' color='white'>SELLPUSH招聘</font>
						<h1>
							<br>
							<h1>
								<font color='white'> web前端工程师 </font>
							</h1>
				</div>
				<div id='pdiv'>
					<a href="#" title='收藏职位'><img src="img/1.png" /></a> <a href="#" title='举报职位'><img src="img/2.png" /></a> <a href="#" title='分享到微信'><img
						src="img/3.png" /></a>
				</div>
			</div>
			<div id='divc'>
				<p>
					<img src="img/4.png" /> <span><font size='5' color='#D94600'><b>10k-20k</b></font></span> <img src="img/4.png" /> <span><font
						size='5' color='gray'><b>福州</b></font></span> <img src="img/4.png" /> <span><font size='5' color='gray'><b>经验1-3年</b></font></span> <img
						src="img/4.png" /> <span><font size='5' color='#777777'><b>大专及以上</b></font></span> <img src="img/4.png" /> <span><font
						size='5' color='gray'><b>全职</b></font></span>
				</p>
				<br>
				<p>
					<font size='5' color='gray'>职位诱惑 : 高速发展的创业团队，十三薪，有股权</font>
				</p>
				<br>
				<p class="publish_time">
					<font size='4' color='gray'>2016-07-07&nbsp; 发布于拉勾网</font>
				</p>
				<br>
			</div>
		</div>
		<hr style="height: 1px; border: none; border-top: 1px solid #D0D0D0;" />
		<br>

		<div id='f1'>
			<font size='5'><b>职位描述：</b></font><br> <br> 1、配合后台开发人员，实现前端页面的动态交互；<br> <br> 2、对Web前端进行性能调优；<br> <br>
			3、开发适合WEB浏览器和移动浏览器的前台页面；

		</div>
		<br> <br> <br>
		<div id='f2'>
			<font size='5'><b>职位要求：</b></font><br> <br> 1、三年以上web前端开发经验，熟悉html5和css3<br> <br> 2、熟悉javascript,熟悉常用的前端开发框架:seajs等<br>
			<br> 3、熟悉markdown等md文本编辑<br> <br> 4、熟悉sass、nodejs、grunt<br> <br> 5、熟悉git操作，有github、bitbucket使用经验<br> <br>
			6、对前端交互体验有较好的感官认识<br> <br> 7、开发适合WEB浏览器和移动浏览器的前台页面；
		</div>
		<br> <br>
		<div id='f3'>
			<font size='5'><b>关于我们：</b></font><br> <br> 我们是一家年轻的创业团队，实行弹性工作制，上班打卡？NO，我们用手机签到。<br> <br>
			没有疯狂加班，我们不会安排无缘由的加班，合理的计划和高效率的工作产出更高。<br> <br> 周末双休，比起工作来说，我们认为陪伴家人也很重要。<br> <br>
			还在为怎么翻墙找技术资料烦恼？我们赠送翻墙账号给到所有员工（自己搭建更可靠、更安全）。<br> <br> 随时随地办公？只要你有Github，Slack账号 。<br> <br> 不想写技术文档？我们都用MD编辑器写文档，省时、省心。<br>
			<br> 从前端到后端，从底层到应用层，我们都有大牛，从Nodejs,Lua,Sass,Gulp,还有Docker，我们从不吝啬涉猎新的技术，并为我所用。<br> <br>
			我们还有很多不足，但是我们拒绝平庸，我们为所有和我们一起创业的优秀员工都准备了股权计划，欢迎志趣相投的小伙伴们来和我们一起努力打造极致的互联网公司。做擅长的事，快乐工作，不断成长中获得一份真正属于自己的事业。
		</div>

		<br> <br> <br>

		<div id='f4'>
			<font size='5'><b>薪资福利：</b></font><br> <br> 1、十三薪；<br> <br> 2、五险一金；<br> <br> 3、带薪年假；<br> <br>
			4、不定期的公司聚会、旅游；<br> <br> 5、员工生日蛋糕；<br> <br> 6、无限量的饮料免费提供；<br> <br>
		</div>

		<br> <br> <br>
		<div id='u2' style="background: #D0D0D0;">
			<center>
				<img src="img/6.png" /> &nbsp; &nbsp; &nbsp;你在拉勾还没有简历呢，你可以<a href='#'>完善在线简历</a>，也可<a href='#'>上传附件简历</a>直接投递
			</center>
		</div>
		<br> <br> <br> <br>
		<div id='button'>
			<button class="ui button" onmouseout="this.style.backgroundColor='#5FC17A';this.style.color='#FFF';">投个简历</button>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/semantic.min.js"></script>
</body>
</html>