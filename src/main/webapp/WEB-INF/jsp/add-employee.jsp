<%@ include file="common/header.jsp" %>
<%@ include file="common/nav-bar.jsp" %>

<div class="container">
    <div class="container">
        <div class="text-center" style="margin: 30px;">
            <h3>Add Employee</h3>
        </div>
    </div>
    <form action="${urlAddEmployee}" modelAttribute="employeeForm" method="post">
        <div class="mb-3">
            <label for="nameEmployee" class="form-label">Name</label>
            <input type="text" class="form-control" id="nameEmployee" name="nameEmployee" required="true">
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department</label>
            <input type="text" class="form-control" id="department" name="department" required="true">
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="number" step="any" class="form-control" id="salary" name="salary" required="true">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success btn-sm me-3">Add</button>
            <a href="${urlHome}" class="btn btn-warning btn-sm">Back</a>
        </div>
    </form>
</div>


<%@ include file="common/footer.jsp" %>