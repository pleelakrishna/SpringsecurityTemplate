<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%--  --%><spring:url var="viewUsers" value="/viewUsers"></spring:url>
    
<!-- Body starts here -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li class="">View Users</li>
				</ul><!-- /.breadcrumb -->
			</div>
			
			<div class="page-content">
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="page-header">
							<h1>Users List</h1>
<!-- 							<a href="createUser" style="float: right;color: white;"> Add User</a> -->
						</div>
						<div class="page-body">
							<c:if test="${not empty msg}">
								<div class="row">
									<div class="col-sm-4 col-sm-offset-4">
					                	<div class="form-group">
					                    	<div class="msgcss alert alert-${cssMsg} fadeIn animated" style="text-align: center;">${msg}</div>
					                    </div>
									</div>
								</div>
				            </c:if>
			            	<div id="assigned" class="widget-box widget-color-blue2">
								<div class="widget-header widget-header-small">
									<h4 class="widget-title lighter"><i class="ace-icon fa fa-list-alt"></i>
										<a class="white" href="">Users List</a> 
									</h4>
									<div class="widget-toolbar">
										<a data-action="collapse" href="#">
											<i class="1 ace-icon fa bigger-125 fa-chevron-up"></i>
										</a>
									</div>
									<div class="widget-toolbar no-border hidden-xs">
										<div class="widget-menu">
											<a class="btn btn-primary btn-white btn-round btn-sm" href="createUser">Create User</a>
										</div>
									</div>
								</div>
								<div style="display: block;" class="widget-body">
									<div class="widget-main no-padding">
										<div class="table-responsive">
											<table class="table table-bordered table-condensed table-striped table-hover">
												<tbody>
													<tr class="my-buglist-bug ">
														<th class="nowrap width-13">Username</th>
														<th class="nowrap width-13">E-mail</th>
														<th class="nowrap width-13">Mobile</th>
														<th class="nowrap width-13">Designation</th>
														<th class="nowrap width-13">Department</th>
														<th class="nowrap width-13">Enabled</th>
														<th class="nowrap width-13">Options</th>
													</tr>
													<c:forEach var="user" items="${allUsers}">
													<tr class="my-buglist-bug ">
														<td class="nowrap width-13">${user.username }</td>
														<td class="nowrap width-13">${user.email }</td>
														<td class="nowrap width-13">${user.mobilenumber}</td>
														<td class="nowrap width-13">${user.designation}</td>
														<td class="nowrap width-13">${user.department}</td>
														<td class="nowrap width-13">${user.enabled}</td>
														<td><span><a href="edit?id=${user.id}"><i class="fa fa-pencil bigger-130 padding-2 grey" title=Edit ></i></a></span> <span><a href="deleteUser/${user.id }"><i class="fa fa-trash bigger-130 padding-2 grey" title="Delete" ></i></a></span></td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content-inner -->
	</div>
	<!-- /.main-content -->

<%-- <div class="dashboard-wrapper">
	<div class="top-bar clearfix">
		<div class="row gutter">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="page-title pull-left"><h4>View User</h4></div>
			</div>
		</div>
	</div>
	<div class="main-container">
		<div class="row gutter">
			<c:if test="${not empty msg}">
				<div class="row">
					<div class="col-sm-4 col-sm-offset-4">
	                	<div class="form-group">
	                    	<div class="msgcss alert alert-${cssMsg} fadeIn animated" style="text-align: center;">${msg}</div>
	                    </div>
					</div>
				</div>
            </c:if>
			<table class="table table-bordered table-hover specialCollapse">
				<thead>
					<tr class="primary">
						<th colspan="9">Users List <a href="createUser" style="float: right;color: white;"> Add User</a></th>
<!-- 						<th colspan="3"><a href="/createUser" style="float: right;"> Add User</a></th> -->
					</tr>
				</thead>
				<tbody>
					<tr>
<!-- 						<th width="80">Sno</th> -->
						<th width="120">User Name</th>
						<th width="120">First Name</th>
						<th width="120">last Name</th>
						<th width="60">E-mail</th>
						<th width="60">mobilenumber</th>
						<th width="60">designation</th>
						<th width="60">department</th>
						<th width="120">Enabled</th>
						<th width="120">Options</th>
					</tr>
					<c:forEach var="user" items="${allUsers}">
						<tr>
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.firstname }</td>
							<td>${user.lastname }</td>
							<td>${user.email }</td>
							<td>${user.mobilenumber}</td>
							<td>${user.designation}</td>
							<td>${user.department}</td>
							<td>${user.enabled}</td>
							<td><a href="editUser/${user.id }">Edit</a> <a href="deleteUser/${user.id }">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div> --%>
<!-- Body ends here -->

<script type="text/javascript">
$(".viewUsers").addClass("active");
</script>