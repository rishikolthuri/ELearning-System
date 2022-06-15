<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="card shadow">
	<div class="card-body">

		<a href="/addcourse"
			class="btn btn-primary btn-sm float-right mt-1 mr-1">Add Course</a> <a
			href="/services" class="btn btn-primary btn-sm float-right mt-1 mr-1">Services</a>

		<h4 class="p-2" style="border-bottom: 2px solid green;">My
			Courses List</h4>
		<c:if test="${msg ne null }">
			<div class="alert text-success font-weight-bold">${msg }</div>
		</c:if>
		<table class="table table-bordered table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Course Name</th>
					<th>Price</th>
					<th>Duration</th>
					<th>Category</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<%int i = 1; %>
				<c:forEach var="u" items="${list }">
					<tr>
						<td><%= i %> <% i++; %></td>
						<td>${u.cname }</td>
						<td>${u.amount }</td>
						<td>${u.duration }</td>
						<td>${u.category }</td>
						<td>${u.active ? 'Active':'Inactive' }</td>
						<td><a href="/editcourse?id=${u.id }"
							class="btn btn-primary btn-sm">Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script>
	$(function() {
		$("#role").change(function() {
			let role = $(this).val();
			location.href = "services?role=" + role;
		});

	});
</script>

<jsp:include page="footer.jsp"></jsp:include>