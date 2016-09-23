<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="网上求职招聘系统">
		<meta name="keywords" content="网上求职招聘系统,大学生,离校未就业,失业,找不到工作">
		<title>网上求职招聘系统--个人简历</title>
		<link rel="stylesheet" href="js/semantic.min.css" />
		<link rel="stylesheet" href="css/resume.css" />
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
					<a class="item active" href="resume.jsp">个人简历</a>
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
		<div class="title2">个人简历</div>
		<form action="">
			<table id="content" border="2" width="840" align="center">
				<tr height="55">
					<td class="f1" width="100">姓名</td>
					<td width="100">
						<input type="text" class="edit_1" id="name" />
					</td>
					<td class="f1" width="100">性别</td>
					<td width="100" align="center">
						<div class="ui dropdown">
							<!-- 写完是一个静态的，点不开，需要加一句js -->
							<input type="hidden" id="sex">
							<!--隐藏标签，用来保存选择的数据，表单用name="gender" Ajax用id="gender"-->
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<!-- 箭头图片 -->
							<div class="menu">
								<div class="item" data-value="男">男</div>
								<div class="item" data-value="女">女</div>
							</div>
						</div>
					</td>
					<td class="f1" width="100">出生年月</td>
					<td width="100">
						<input type="text" class="edit_1" id="birthday" />
					</td>
					<td rowspan="5" class="f1" width="180">照片</td>
				</tr>
				<tr height="55">
					<td class="f1" width="100">籍贯</td>
					<td width="100" align="center">
						<div class="ui dropdown">
							<input type="hidden" id="birth_place">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu option">
								<div class="item" data-value="北京">北京</div>
								<div class="item" data-value="天津">天津</div>
								<div class="item" data-value="河北">河北</div>
								<div class="item" data-value="山西">山西</div>
								<div class="item" data-value="内蒙">内蒙</div>
								<div class="item" data-value="上海">上海</div>
								<div class="item" data-value="江苏">江苏</div>
								<div class="item" data-value="浙江">浙江</div>
								<div class="item" data-value="安徽">安徽</div>
								<div class="item" data-value="福建">福建</div>
								<div class="item" data-value="江西">江西</div>
								<div class="item" data-value="山东">山东</div>
								<div class="item" data-value="辽宁">辽宁</div>
								<div class="item" data-value="吉林">吉林</div>
								<div class="item" data-value="黑龙江">黑龙江</div>
								<div class="item" data-value="河南">河南</div>
								<div class="item" data-value="湖北">湖北</div>
								<div class="item" data-value="湖南">湖南</div>
								<div class="item" data-value="广东">广东</div>
								<div class="item" data-value="广西">广西</div>
								<div class="item" data-value="海南">海南</div>
								<div class="item" data-value="四川">四川</div>
								<div class="item" data-value="贵州">贵州</div>
								<div class="item" data-value="云南">云南</div>
								<div class="item" data-value="西藏">西藏</div>
								<div class="item" data-value="陕西">陕西</div>
								<div class="item" data-value="甘肃">甘肃</div>
								<div class="item" data-value="宁夏">宁夏</div>
								<div class="item" data-value="新疆">新疆</div>
								<div class="item" data-value="青海">青海</div>
								<div class="item" data-value="重庆">重庆</div>
								<div class="item" data-value="台湾">台湾</div>
							</div>
						</div>
					</td>
					<td class="f1" width="100">民族</td>
					<td width="100" align="center">
						<div class="ui dropdown">
							<input type="hidden" id="nation">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu">
								<div class="item" data-value="汉族">汉族</div>
								<div class="item" data-value="壮族">壮族</div>
								<div class="item" data-value="满族">满族</div>
								<div class="item" data-value="回族">回族</div>
								<div class="item" data-value="傣族">傣族</div>
								<div class="item" data-value="土家族">土家族</div>
								<div class="item" data-value="傣族">蒙古族</div>
								<div class="item" data-value="傣族">布依族</div>
								<div class="item" data-value="土家族">维吾尔族</div>
							</div>
						</div>
					</td>
					<td class="f1" width="100">政治面貌</td>
					<td width="100" align="center">
						<div class="ui dropdown">
							<input type="hidden" id="politics">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu">
								<div class="item" data-value="共青团员">共青团员</div>
								<div class="item" data-value="中共预备党员">中共预备党员</div>
								<div class="item" data-value="中共党员">中共党员</div>
								<div class="item" data-value="群众">群众</div>
							</div>
						</div>
					</td>
				</tr>
				<tr height="55">
					<td class="f1">毕业学校</td>
					<td colspan="3">
						<input type="text" class="edit_3" id="college" />
					</td>
					<td class="f1">毕业学历</td>
					<td align="center">
						<div class="ui dropdown">
							<input type="hidden" id="education">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu">
								<div class="item" data-value="大专">大专</div>
								<div class="item" data-value="本科">本科</div>
								<div class="item" data-value="研究生">研究生</div>
								<div class="item" data-value="博士">博士</div>
								<div class="item" data-value="硕士">硕士</div>
							</div>
						</div>
					</td>
				</tr>
				<tr height="55">
					<td class="f1">所学专业</td>
					<td colspan="3">
						<input type="text" class="edit_3" id="specialty" />
					</td>

					<td class="f1">毕业年份</td>
					<td align="center">
						<div class="ui dropdown">
							<input type="hidden" id="graduate_year">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu" id="yearList">
							</div>
						</div>
					</td>

				</tr>
				<tr height="55">
					<td class="f1">求职意向</td>
					<td colspan="3">
						<input type="text" class="edit_3" id="job" />
					</td>
					<td class="f1">英语等级</td>
					<td align="center">
						<div class="ui dropdown">
							<input type="hidden" id="english">
							<div class="default text">选择</div>
							<i class="dropdown icon"></i>
							<div class="menu">
								<div class="item" data-value="四级">四级</div>
								<div class="item" data-value="六级">六级</div>
								<div class="item" data-value="无">无</div>
							</div>
						</div>
					</td>
				</tr>
				<tr height="55">
					<td class="f1">联系电话</td>
					<td colspan="3">
						<input type="text" class="edit_3" id="phone" />
					</td>
					<td class="f1">E-mail</td>
					<td colspan="2">
						<input type="text" class="edit_3" id="email" />
					</td>
				</tr>
				<tr height="55">
					<td class="f1">现居住地</td>
					<td colspan="6">
						<input type="text" class="edit_2" id="address" />
					</td>
				</tr>
				<tr height="100">
					<td class="f1">主修课程</td>
					<td colspan="6">
						<textarea class="edit_4" id="major"></textarea>
					</td>
				</tr>
				<tr height="100">
					<td class="f1">技能专长</td>
					<td colspan="6">
						<textarea class="edit_4" id="skills"></textarea>
					</td>
				</tr>
					<tr height="100">
					<td class="f1">奖励情况</td>
					<td colspan="6">
						<textarea class="edit_4" id="rewards"></textarea>
					</td>
				</tr>
				<tr height="100">
					<td class="f1">培训及<br>实习经历</td>
					<td colspan="6">
						<textarea class="edit_4" id="internship"></textarea>
					</td>
				</tr>
				<tr height="100">
					<td class="f1">项目经验</td>
					<td colspan="6">
						<textarea class="edit_4" id="program"></textarea>
					</td>
				</tr>
			
				<tr height="100">
					<td class="f1">自我评价</td>
					<td colspan="6">
						<textarea class="edit_4" id="evaluation"></textarea>
					</td>
				</tr>
			</table>
		</form>
		<div class="btns">
			<button class="ui green button" id="save">确认提交</button>
			<a class="ui red button" href="FormDownload.action">下载样表</a>
			<a class="ui teal button" href="MyFormDownload.action" onclick="return ff();">下载简历</a>
			
		</div>
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/semantic.min.js"></script>
		<script type="text/javascript" src="js/resume.js"></script>
			<script type="text/javascript">
			 function ff(){
				
				 if(<%=username%>==null){
					 alert("请先登录，再下载");
					 return false;
				 }
				  return true
				 }
			</script>
	</body>
</html>