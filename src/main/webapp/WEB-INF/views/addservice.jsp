<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Add New Service</h5>
					</div>
					<div class="card-body">
						<form method="post">
							<input type="hidden" name="userid" value="${sessionScope.userid }">
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Service Name</label>
								<div class="col-sm-8">
									<input type="text" required name="sname" class="form-control" />
								</div>
							</div>
							
							<div class="form-group form-row">
								<label class="col-sm-4 col-form-label">Price</label>
								<div class="col-sm-8">
									<input type="number" required min="1" name="price" class="form-control" />
								</div>
							</div>
							
							<input type="submit" value="Save Service"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>