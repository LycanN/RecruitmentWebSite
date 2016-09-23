<%@ page language="java" import="java.util.*,com.soft.dao.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="网上求职招聘系统">
<meta name="keywords" content="网上求职招聘系统,大学生,离校未就业,失业,找不到工作">
<title>网上求职招聘系统--名企专区</title>
<link rel="stylesheet" href="js/semantic.min.css" />
<link rel="stylesheet" href="css/enterprise.css" />
</head>
<%
	if (request.getAttribute("list") != null) {
%>
<body>
	<%
		}
		else {
	%>

<body onload="javascript:location.href='pageControl?pageNow=1'">
	<%
		}
	%>

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
				<a class="item active" href="enterprise.jsp">名企专区</a> 
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
	<div class="adver">
		<h2 class="header">公司大事记</h2>
		<div class="ui special cards">
			<div id="prev"></div>
			<div id="next"></div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>金融八卦女是一个爆料金融圈八卦的平台,近日，金融八卦女获200万天使轮融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd1.jpg">
					</div>
					<div class="content">
						<span>致力于打造最专业的财经媒体社交圈</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>近日，淘维科技获数千万A轮融资，融资方尚未披露</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd2.jpg">
					</div>
					<div class="content">
						<span>一款服务上万商户的产品</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>VRZINC获500万天使轮融资 ，由UCCVR领投</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd3.jpg">
					</div>
					<div class="content">
						<span>致力中国最具影响力的VR文娱产业</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>妞诺科技是一家健康领域的脑电穿戴解决方案供应商，日前获得千万元Pre-A轮融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd4.jpg">
					</div>
					<div class="content">
						<span>脑电穿戴解决方案供应商</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>刷刷手环获2000万元融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd5.jpg">
					</div>
					<div class="content">
						<span>具有支付功能的健康手环</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>果酱音乐获得由银杏谷资本、齐一资本领投的数千万级Pre-A轮融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd6.jpg">
					</div>
					<div class="content">
						<span>国内领先的音乐新媒体</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>芒果TV日前获得近15亿元B轮投资，投后估值135亿元</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd7.jpg">
					</div>
					<div class="content">
						<span>致力于为用户提供最好的视频服务</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>赛飞软件获3000万元A+轮融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd8.png">
					</div>
					<div class="content">
						<span>让数据驭见未来</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>e代泊是一家主打停车服务的O2O平台，公司宣布获得米其林战略投资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd9.png">
					</div>
					<div class="content">
						<span>中国智慧停车O2O平台</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>趣分期获30亿Pre-IPO融资，投资方为凤凰祥瑞和联络互动等</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd10.png">
					</div>
					<div class="content">
						<span>欢迎加入我们，与我们一起传造奇迹</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>贴心小护是一家医护陪诊O2O平台，公司日前获得启赋资本500万元天使投资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd11.jpg">
					</div>
					<div class="content">
						<span>只为极致的就医体验</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>十方旅行是一家专注境外旅行线路定制服务的旅游品牌，近日获得数百万pre-A轮融资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd12.png">
					</div>
					<div class="content">
						<span>用生活的方式去旅行</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>橘子娱乐日前获得1000万美元B+轮投资，华创资本领投，奇虎360跟投。</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd13.png">
					</div>
					<div class="content">
						<span>橘子娱乐是一家娱乐新媒体公司</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>日前，客服系统提供商Udesk宣布获得新一轮1亿人民币融资，君联资本领投</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd14.png">
					</div>
					<div class="content">
						<span>智能客服云平台</span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="blurring dimmable image">
					<div class="ui inverted dimmer">
						<div class="center">
							<div class="intro">
								<p>好色派沙拉获2200万元A+轮融资，由东方富海、华诺创投、FreeS联合投资</p>
							</div>
							<div class="buttons">
								<button class="ui button">进入公司主页</button>
							</div>
						</div>
					</div>
					<div class="img-card">
						<img src="img/cards/cd15.jpg">
					</div>
					<div class="content">
						<span>一个以主食沙拉为主的性感生活方式</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="companys">
		<%
			//要显示的信息从request中取得
			ArrayList list = (ArrayList) request.getAttribute("list");
			if (list != null) {
				for (int i = 0; i < list.size(); i++) {
					//从al中取出UserBean
					EnterpriseBean bean = (EnterpriseBean) list.get(i);
		%>
		<div class="company">
			<div class="com-info">
				<div class="img">
					<img src="img/company/<%=bean.getLogo()%>" />
				</div>
				<div class="com-intro">
					<h3><%=bean.getEntername()%></h3>
					<p>197条面试评价</p>
					<p>18个在招职位</p>
					<p>86%简历处理率</p>
				</div>
			</div>
			<div class="com-extra">
				<div class="type">
					<i class="block layout icon"></i><%=bean.getType()%>
				</div>
				<div class="stage">
					<i class="line chart icon"></i><%=bean.getStage()%>
				</div>
				<div class="place">
					<i class="marker icon"></i><%=bean.getPlace()%>
				</div>
			</div>
		</div>

		<%
			}
		%>
		<%
			}
		%>

	</div>
	<div class="pageControl">
		<div class="ui floated pagination menu" id="pages">
			<%
				//从request中得到pageNow
				String now = (String) request.getAttribute("pageNow");
				if (now == null) {
					now = "1";
				}
				int pageNow = Integer.parseInt(now);
				if (pageNow <= 1) {
					pageNow = 1;
				}
				if (pageNow != 1) {
					out.println("<a href=pageControl?pageNow=" + (pageNow - 1) + " class='item'>上一页</a>");
				}
				else {
					out.println("<a href=pageControl?pageNow=1 class='item'>上一页</a>");
				}
				if (request.getAttribute("pageCount") != null) {

					String pageC = request.getAttribute("pageCount").toString();
					int pageCount = Integer.parseInt(pageC);

					for (int i = 1; i <= pageCount; i++) {
						out.println("<a href=pageControl?pageNow=" + i + " class='item'>" + i + "</a>");
					}
					if (pageNow != pageCount) {
						out.println("<a href=pageControl?pageNow=" + (pageNow + 1) + " class='item'>下一页</a>");
					}
					else {
						out.println("<a href=pageControl?pageNow=" + pageNow + " class='item'>下一页</a>");
					}
			%>
			<a class='item'>共<span id="pageCount"><%=pageCount%></span>页
			</a>
			<%
				}
			%>
			<form action="pageControl" method="get">
				<div class='ui input'>
					<input type="text" placeholder="请输入页数" style="width: 100px;" id="pageNow" name="pageNow">
				</div>
				<input type="submit" value="Go" class="ui green button" style="float: left; margin-top: 1px; margin-left: 2px;">
			</form>

		</div>
	</div>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/semantic.min.js"></script>
	<script type="text/javascript" src="js/enterprise.js"></script>
</body>

</html>