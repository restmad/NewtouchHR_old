<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.coe.dto.Notice"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<link href="images/skin.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
<body>
	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td width="17" valign="top" background="images/mail_leftbg.gif">
				<img src="images/left-top-right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="images/content-bg.gif">
				<table width="100%" height="31" cellpadding="0" cellspacing="0"
					class="left_topbg" id="table2">
					<tr>
						<td height="31">
							<div class="titlebt">
								欢迎界面
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
			<td valign="top" bgcolor="#F7F8F9">
				<table width="98%" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="2" valign="top">
							&nbsp;

						</td>
						<td>
							&nbsp;

						</td>
						<td valign="top">
							&nbsp;

						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">
							<span class="left_bt">感谢您使用MYOFFICE企业人事管理系统</span>
							<br>
							<br>
							<span class="left_txt">&nbsp;<img src="images/ts.gif"
									width="16" height="16"> 提示：<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您现在使用的是本小组开发的一套用于企业人事管理的非专业系统，如有问题请</span><span
								class="left_txt">指教！<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五大功能完美整合，一站通使用方式，功能强大，操作简单，后台操作易如反掌，只需会开机，会使用鼠标，能认字，就能当HR！<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;赶快加入吧！ <br> </span>
						</td>
						<td width="7%">
							&nbsp;

						</td>
						<td width="40%" valign="top">
							<table width="100%" height="144" cellpadding="0" cellspacing="0"
								class="line_table">
								<tr>
									<td width="7%" height="27"
										background="images/news-title-bg.gif">
										<img src="images/news-title-bg.gif" width="2" height="27">
									</td>
									<td width="93%" background="images/news-title-bg.gif"
										class="left_bt2">
										签到/签退
									</td>
								</tr>
								<tr>
									<td height="102" valign="top">
										&nbsp;

									</td>
									<td height="102" valign="top">
										<span class="left_txt">&nbsp;<img src="images/ts.gif"
												width="16" height="16"> 经营理念：全心全意为品牌注入更多价值 <br>
											&nbsp;&nbsp;服务理念：给我分机会 还您百分满意 <br>
											&nbsp;&nbsp;团队理念：热情、专注、高效、负责 <br>
											&nbsp;&nbsp;发展理念：致力与成为本土最有价值的广告服务商 <br>
											&nbsp;&nbsp;人才观：以人为本 公司文化：以思缘为荣 以思缘为家 </span>

										<form action="saveAttendence.do?method=saveAttendence"
											method="POST">
											<input type="hidden" name="username" value="${username}"/ >
											<input type="hidden" name="password" value="${password}"/ >
											<input type="hidden" name="level"
												value="<%=session.getAttribute("level")%>"/ >
											<input type="hidden" name="department"
												value="<%=session.getAttribute("department")%>"/ >
											<input type="submit" value="签到/签退">
										</form>
									</td>
								</tr>
								<tr>
									<td height="5" colspan="2">
										&nbsp;

									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							&nbsp;

						</td>
						<td>
							&nbsp;

						</td>
						<td>
							&nbsp;

						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">
							<!--JavaScript部分-->
							<SCRIPT language=javascript>
function secBoard(n)
{
for(i=0;i<secTable.cells.length;i++)
secTable.cells[i].className="sec1";
secTable.cells[n].className="sec2";
for(i=0;i<mainTable.tBodies.length;i++)
mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}
          </SCRIPT>
							<!--HTML部分-->
							<TABLE width=72% border=0 cellPadding=0 cellSpacing=0 id=secTable>
								<TBODY>
									<TR align=middle height=20>
										<TD align="center" class=sec2 onclick=secBoard(0)>
											系统参数
										</TD>
										<TD align="center" class=sec1 onclick=secBoard(1)>
											版权说明
										</TD>
									</TR>
								</TBODY>
							</TABLE>
							<TABLE class=main_tab id=mainTable cellSpacing=0 cellPadding=0
								width=100% border=0>
								<!--关于TBODY标记
								<TBODY style="DISPLAY: none">
									<TR>
										<TD vAlign=top align=middle>
											<TABLE width=98% height="133" border=0 align="center"
												cellPadding=0 cellSpacing=0>
												<TBODY>
													<TR>
														<TD height="5" colspan="1"></TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"> </span>
															<span class="left_ts"> </span>
															<br>
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span>
															<span class="left_ts"> </span>
														</TD>
													</TR>
													<TR>
														<TD height="5" colspan="1"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>-->
								<!--关于cells集合
								<TBODY style="DISPLAY: none">
									<TR>
										<TD vAlign=top align=middle>
											<TABLE width=98% height="133" border=0 align="center"
												cellPadding=0 cellSpacing=0>
												<TBODY>
													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
													<TR>
														<TD width="4%" height="28"
															background="images/news-title-bg.gif"></TD>
														<TD colspan="2" background="images/news-title-bg.gif"
															class="left_txt">
														</TD>
													</TR>
													<TR>
														<TD width="42%" height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
														<TD width="54%" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"> </span><span class="left_txt">个</span>
														</TD>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"> </span><span class="left_txt"></span>
														</TD>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt"></span><span class="left_txt"></span>
														</TD>
													</TR>
													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
								-->
								<!--关于tBodies集合-->
								<TBODY style="DISPLAY: block">
									<TR>
										<TD vAlign=top>
											<TABLE width=98% border=0 align="center" cellPadding=0
												cellSpacing=0>
												<TBODY>
													<TR>
														<TD colspan="3"></TD>
													</TR>
													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
													<TR>
														<TD width="4%" height="25"
															background="images/news-title-bg.gif"></TD>
														<TD height="25" colspan="2"
															background="images/news-title-bg.gif" class="left_txt">
															<span class="TableRow2">实现方式：</span>SSH+JQUERY
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD width="42%" height="25" bgcolor="#FAFBFC">
															<span class="left_txt">服务器：</span>TOMCAT6.0
														</TD>
														<TD width="54%" height="25" bgcolor="#FAFBFC">
															<span class="left_txt">开发工具：</span>MYECLIPSE6.5
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD height="25" colspan="2" bgcolor="#FAFBFC">
															<span class="left_txt">站点物理路径：</span>Http://localHost:8080
														</TD>
													</TR>
													<TR>
														<TD height="25" bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt">FSO文本读写：</span><span
																class="TableRow2"><font color="#FF0066"><b><img
																			src="images/X.gif" width="12" height="13"> </b> </font> <img
																	src="images/g.gif" width="12" height="12"> </span>
														</TD>
														<TD height="25" bgcolor="#FAFBFC">
															<span class="left_txt">数据库使用：</span><span class="left_ts"><img
																	src="images/X.gif" width="12" height="13"><b
																style="color: blue"> MYSQL </b> </span>
														</TD>
													</TR>

													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
								<!--关于display属性-->
								<TBODY style="DISPLAY: none">
									<TR>
										<TD vAlign=top align=middle>
											<TABLE width=98% border=0 align="center" cellPadding=0
												cellSpacing=0>
												<TBODY>
													<TR>
														<TD colspan="3"></TD>
													</TR>
													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
													<TR>
														<TD width="4%" background="images/news-title-bg.gif"></TD>
														<TD width="91%" background="images/news-title-bg.gif"
															class="left_ts">
															程序说明：
														</TD>
														<TD width="5%" background="images/news-title-bg.gif"
															class="left_txt">
															&nbsp;

														</TD>
													</TR>
													<TR>
														<TD bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															<span class="left_ts">1、</span>本程序由本小组鼎力制作
														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															&nbsp;

														</TD>
													</TR>
													<TR>
														<TD bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															<span class="left_ts">2、</span>本程序仅提供使用，任何违反互联网规定的行为，自行负责！
														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															&nbsp;

														</TD>
													</TR>
													<TR>
														<TD bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															<span class="left_ts">3、</span> 支持作者的劳动，请保留版权。
														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															&nbsp;

														</TD>
													</TR>
													<TR>
														<TD bgcolor="#FAFBFC">
															&nbsp;

														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															<span class="left_ts">4、</span>技术支持，友好合作
														</TD>
														<TD bgcolor="#FAFBFC" class="left_txt">
															&nbsp;

														</TD>
													</TR>
													<TR>
														<TD height="5" colspan="3"></TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</td>
						<td>
							&nbsp;

						</td>
						<td valign="top">
							<table width="100%" height="144" border="0" cellpadding="0"
								cellspacing="0" class="line_table">
								<tr>
									<td width="7%" height="27"
										background="images/news-title-bg.gif">
										<img src="images/news-title-bg.gif" width="2" height="27">
									</td>
									<td width="93%" background="images/news-title-bg.gif"
										class="left_bt2">
										公司公告
									</td>
								</tr>
								<tr>
									<td height="102" valign="top">
										&nbsp;

									</td>
									<td height="102" valign="top">
										<label></label>
										<label>
											<table width="320">
												<%
													List list = (List) session.getAttribute("listNotice");
													Iterator it = list.iterator();
													while (it.hasNext()) {
														Notice notice = (Notice) it.next();
												%>
												<tr><%=notice.getNcontent()%></tr>


												<%
													}
												%>

											</table>
										</label>
									</td>
								</tr>
								<tr>
									<td height="5" colspan="2">
										&nbsp;

									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="2%">
							&nbsp;

						</td>
						<td width="51%" class="left_txt">
							<img src="images/icon-mail2.gif" width="16" height="11">
							客户服务邮箱：123456789
							<br>
							<img src="images/icon-phone.gif" width="17" height="14">
							官方网站：www.qqqqqqq.com
						</td>
						<td>
							&nbsp;

						</td>
						<td>
							&nbsp;

						</td>
					</tr>
				</table>
			</td>
			<td background="images/mail_rightbg.gif">
				&nbsp;

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

