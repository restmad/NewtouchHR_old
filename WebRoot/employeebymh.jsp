<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.coe.dto.Information"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/editeInformation.js"
	charset="GBK"></script>
<script type="text/javascript" src="js/check.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
$("#1").click(function(){
    $("#2").slideToggle("slow");
  });
  $("#3").click(function(){
    $("#4").slideToggle("slow");
  });
});
</script>
<style type="text/css">
div.panel,b.flip {
	margin: 0px;
	padding: 5px;
	text-align: center;
	background: #B7E1FA;
	border: solid 1px #c3c3c3;
}

div.panel {
	height: 40px;
	display: none;
}
</style>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="images/mail_leftbg.gif">
				<img src="images/left-top-right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="images/content-bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0" class="left_topbg" id="table2">
					<tr>
						<td height="31">
							<div class="titlebt">
								员工管理
							</div>
						</td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="images/mail_rightbg.gif">
				<img src="images/nav-right-bg.gif" width="16" height="29" />
			</td>
		</tr>
		<tr>
			<td valign="middle" background="images/mail_leftbg.gif">
				&nbsp;

			</td>
			<td valign="top">
				<form action="findUserbymh.do?method=findUserbymh" method="POST">
					姓名：
					<input type="text" name="username">
					年龄：
					<input type="text" name="age">
					性别：男
					<input type="radio" checked="checked" value="男" name="sex">
					女
					<input type="radio" value="女" name="sex">
					部门：
					<select size="1" name="department">
						<option value="">

						</option>
						<option value="人事部">
							人事部
						</option>
						<option value="财务部">
							财务部
						</option>
						<option value="市场部">
							市场部
						</option>
						<option value="销售部">
							销售部
						</option>
						<option value="研发部">
							研发部
						</option>
						<option value="其它">
							其它
						</option>
					</select>
					职务：
					<select size="1" name="position">
						<option value="">

						</option>
						<option value="普通员工">
							普通员工
						</option>
						<option value="小组组长">
							小组组长
						</option>
						<option value="经理助理">
							经理助理
						</option>
						<option value="部门经理">
							部门经理
						</option>
						<option value="总经理">
							总经理
						</option>
						<option value="公司董事">
							公司董事
						</option>
					</select>
					<input type="hidden" value="超级管理员" name="level">
					<input type="submit" value="查询">
					<b id="3" class="flip"> 添加用户 </b>
				</form>


				<hr>
				<div class="panel" id="4">
					<form action="regit.do?method=userRegit" method="post">
						用户名：
						<INPUT type="text" id="regitusername" name="username">
						密码：
						<INPUT type="password" id="regitpassword" name="password">
						年龄：
						<input type="text" name="age" id="regitage">
						性别： 男
						<input type="radio" checked="checked" value="男 " name="sex">
						女
						<input type="radio" value="女" name="sex">
						<br>
						部门：
						<select size="1" name="department">
							<option value="人事部">
								人事部
							</option>
							<option value="财务部">
								财务部
							</option>
							<option value="市场部">
								市场部
							</option>
							<option value="销售部">
								销售部
							</option>
							<option value="研发部">
								研发部
							</option>
							<option value="其它">
								其它
							</option>
						</select>
						职务：
						<select size="1" name="position">
							<option value="普通员工">
								普通员工
							</option>
							<option value="小组组长">
								小组组长
							</option>
							<option value="经理助理">
								经理助理
							</option>
							<option value=" 部门经理">
								部门经理
							</option>
							<option value="总经理">
								总经理
							</option>
							<option value="公司董事">
								公司董事
							</option>
						</select>
						电话：
						<input type="text" name="tel" id="regittel">
						级别：
						<select size="1" name="level">
							<option value="普通用户">
								普通用户
							</option>
							<option value="一般管理员">
								一般管理员
							</option>
							<option value="超级管理员">
								超级管理员
							</option>
						</select>
						<input type="submit" value="添加用户" id="regitUser">
					</form>
				</div>

				<table id="data" width="100%" align="center">
					<TR id="-1000">

						<TH>
							<p>
								姓名
							</p>
						</TH>
						<TH>
							<p>
								密码
							</p>
						</TH>
						<TH>
							<p>
								年龄
							</p>
						</TH>
						<TH>
							<p>
								性别
							</p>
						</TH>
						<TH>
							<p>
								部门
							</p>
						</TH>
						<TH>
							<p>
								职务
							</p>
						</TH>
						<TH>
							<p>
								电话
							</p>
						</TH>
						<TH>
							<p>
								级别
							</p>
						</TH>
						<TH>
							<p>
								编辑
							</p>
						</TH>
						<TH>
							<p>
								删除
							</p>
						</TH>

					</TR>
					<%
						List list = (List) request.getAttribute("list");

						Iterator it = list.iterator();
						Information user = new Information();
						while (it.hasNext()) {
							user = (Information) it.next();
					%>
					<TR onMouseOver="this.className='tr_over'"
						onMouseOut="this.className=''" id="<%=user.getUserid()%>">

						<TD>
							<div align="center" id="userName1<%=user.getUserid()%>">
								<input value="<%=user.getUsername()%>">
							</div>
							<div align="center" id="userName<%=user.getUserid()%>">
								<%=user.getUsername()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="password1<%=user.getUserid()%>">
								<input value="<%=user.getPassword()%>">
							</div>
							<div align="center" id="password<%=user.getUserid()%>">
								<%=user.getPassword()%>
							</div>
						</TD>
						<TD>
							<div align="center" id="age1<%=user.getUserid()%>">
								<input value="<%=user.getAge()%>">
							</div>
							<div align="center" id="age<%=user.getUserid()%>">
								<%=user.getAge()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="sex1<%=user.getUserid()%>">
								<input value="<%=user.getSex()%>">
							</div>
							<div align="center" id="sex<%=user.getUserid()%>">
								<%=user.getSex()%>
							</div>


						</TD>
						<TD>
							<div align="center" id="department1<%=user.getUserid()%>">
								<!-- <input value="<%=user.getDepartment()%>"> -->
								<select size="1" name="department">
									<option value="">

									</option>
									<option value="人事部">
										人事部
									</option>
									<option value="财务部">
										财务部
									</option>
									<option value="市场部">
										市场部
									</option>
									<option value="销售部">
										销售部
									</option>
									<option value="研发部">
										研发部
									</option>
									<option value="其它">
										其它
									</option>
								</select>
							</div>
							<div align="center" id="department<%=user.getUserid()%>">
								<%=user.getDepartment()%>
							</div>


						</TD>
						<TD>
							<div align="center" id="position1<%=user.getUserid()%>">
								<select size="1" name="position">
									<option value="">

									</option>
									<option value="普通员工">
										普通员工
									</option>
									<option value="小组组长">
										小组组长
									</option>
									<option value="经理助理">
										经理助理
									</option>
									<option value="部门经理">
										部门经理
									</option>
									<option value="总经理">
										总经理
									</option>
									<option value="公司董事">
										公司董事
									</option>
								</select>
							</div>
							<div align="center" id="position<%=user.getUserid()%>">
								<%=user.getPosition()%>
							</div>
						</TD>
						<TD>
							<div align="center" id="tel1<%=user.getUserid()%>">
								<input value="<%=user.getTel()%>">
							</div>
							<div align="center" id="tel<%=user.getUserid()%>">
								<%=user.getTel()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="level1<%=user.getUserid()%>">
								<select size="1" name="level">
									<option value=" 一般用户">
										一般用户
									</option>
									<option value="一般管理员">
										一般管理员
									</option>
									<option value="超级管理员">
										超级管理员
									</option>
								</select>
							</div>
							<div align="center" id="level<%=user.getUserid()%>">
								<%=user.getLevel()%>
							</div>
						</TD>

						<TD>
							<div align="center">
								<input type="hidden" id="storeEdit<%=user.getUserid()%>"
									value="0">
								<a id="edit<%=user.getUserid()%>" href='javascript:void(0)'
									style="border: 0px"><img src="images/ad.gif" /> </a>
							</div>

						</TD>
						<TD>
							<div align="center">
								<b> <img src="images/defind.gif" /> </b>
							</div>


						</TD>

					</TR>

					<%
						}
					%>

				</table>

			</td>
			<td valign="bottom" background="images/mail_rightbg.gif">
				<img src="images/buttom_right2.gif" width="16" height="17" />
			</td>

		</tr>
		<tr>
			<td valign="bottom" background="images/mail_leftbg.gif">
				<img src="images/buttom_left2.gif" width="17" height="17" />
			</td>
			<td background="images/buttom_bgs.gif">
				<img src="images/buttom_bgs.gif" width="17" height="17">
			</td>
			<td valign="bottom" background="images/mail_rightbg.gif">
				<img src="images/buttom_right2.gif" width="16" height="17" />
			</td>
		</tr>
	</table>

</body>

