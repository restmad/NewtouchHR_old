<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="com.coe.dto.Salary"%>
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
<script type="text/javascript" src="js/editeSalary.js" charset="GBK"></script>

<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
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
								н�����
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
				<br>


				<table id="data" width="100%" align="center">
					<TR id="-1000">

						<TH>
							<p>
								Ա������
							</p>
						</TH>
						<TH>
							<p>
								Ա������
							</p>
						</TH>
						<TH>
							<p>
								��������
							</p>
						</TH>
						<TH>
							<p>
								ס��������
							</p>
						</TH>
						<TH>
							<p>
								���ϱ���
							</p>
						</TH>
						<TH>
							<p>
								ҽ�Ʊ���
							</p>
						</TH>
						<TH>
							<p>
								ʧҵ����
							</p>
						</TH>

						<TH>
							<p>
								�������
							</p>
						</TH>
						<TH>
							<p>
								ҵ������
							</p>
						</TH>
						<TH>
							<p>
								�·�
							</p>
						</TH>
						<TH>
							<p>
								�༭
							</p>
						</TH>
						<TH>
							<p>
								ɾ��
							</p>
						</TH>


					</TR>
					<%
						List list = (List) request.getAttribute("list");

						Iterator it = list.iterator();
						Salary salary = new Salary();
						while (it.hasNext()) {
							salary = (Salary) it.next();
					%>
					<TR onMouseOver="this.className='tr_over'"
						onMouseOut="this.className=''" id="<%=salary.getSid()%>">


						<TD>
							<div align="center" id="userid1<%=salary.getSid()%>">
								<input value="<%=salary.getInformation().getUserid()%>">
							</div>

							<div align="center" id="userid<%=salary.getSid()%>">
								<%=salary.getInformation().getUsername()%>
							</div>

						</TD>
						<TD>

							<div align="center">
								<%=salary.getInformation().getDepartment()%>
							</div>
						</TD>
						<TD>
							<div align="center" id="bwage1<%=salary.getSid()%>">
								<input value="<%=salary.getBwage()%>">
							</div>
							<div align="center" id="bwage<%=salary.getSid()%>">
								<%=salary.getBwage()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="housefund1<%=salary.getSid()%>">
								<input value="<%=salary.getHousefund()%>">
							</div>
							<div align="center" id="housefund<%=salary.getSid()%>">
								<%=salary.getHousefund()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="pension1<%=salary.getSid()%>">
								<input value="<%=salary.getPension()%>">
							</div>
							<div align="center" id="pension<%=salary.getSid()%>">
								<%=salary.getPension()%>
							</div>


						</TD>
						<TD>
							<div align="center" id="health1<%=salary.getSid()%>">
								<input value="<%=salary.getHealth()%>">
							</div>
							<div align="center" id="health<%=salary.getSid()%>">
								<%=salary.getHealth()%>
							</div>


						</TD>
						<TD>
							<div align="center" id="unemployment1<%=salary.getSid()%>">
								<input value="<%=salary.getUnemployment()%>">
							</div>
							<div align="center" id="unemployment<%=salary.getSid()%>">
								<%=salary.getUnemployment()%>
							</div>


						</TD>
						<TD>
							<div align="center" id="reimbursement1<%=salary.getSid()%>">
								<input value="<%=salary.getReimbursement()%>">
							</div>
							<div align="center" id="reimbursement<%=salary.getSid()%>">
								<%=salary.getReimbursement()%>
							</div>

						</TD>
						<TD>
							<div align="center" id="paword1<%=salary.getSid()%>">
								<input value="<%=salary.getPaword()%>">
							</div>
							<div align="center" id="paword<%=salary.getSid()%>">
								<%=salary.getPaword()%>
							</div>

						</TD>
						<TD >
							<div align="center">
								<%=salary.getTime().substring(0, 7)%>
							</div>
						</TD>
						<TD>
							<input type="hidden" id="storeEdit<%=salary.getSid()%>" value="0">
							<a id="edit<%=salary.getSid()%>" href='javascript:void(0)'
								style="border: 0px"><img src="images/ad.gif" /> </a>


						</TD>

						<TD>
							<div align="center">
								<a id="delete<%=salary.getSid()%>" href='javascript:void(0)'
									style="border: 0px"><img src="images/defind.gif" />
								</a>
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
