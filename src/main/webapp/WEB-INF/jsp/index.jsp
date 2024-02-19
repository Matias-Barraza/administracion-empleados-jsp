<%@ include file="common/header.jsp" %>
<%@ include file="common/nav-bar.jsp" %>

<div>
    <div class="container">
        <div class="text-center" style="margin: 30px;">
            <h3>Employee System</h3>
        </div>
    </div>

    <div class="container">
        <table class="table table-striped table-hover align-middle table-bordered">
            <thead class="table-dark text-center">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Department</th>
                <th scope="col">Salary</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <th scope="row">${employee.idEmployee}</th>
                    <td>${employee.nameEmployee}</td>
                    <td>${employee.department}</td>
                    <td>
                        <fmt:setLocale value="en_US" scope="session"/>
                        <fmt:formatNumber value="${employee.salary}"
                                          type="currency"/>
                    </td>
                    <td class="text-center">
                        <c:set var="urlEditEmployee">
                            <c:url value="${application.contextPath}/edit-employee">
                                <c:param name="idEmployee" value="${employee.idEmployee}"/>
                            </c:url>
                        </c:set>
                        <a href="${urlEditEmployee}" class="btn btn-warning btn-sm me-3">Edit</a>

                        <c:set var="urlDeleteEmployee">
                            <c:url value="${application.contextPath}/delete-employee">
                                <c:param name="idEmployee" value="${employee.idEmployee}"/>
                            </c:url>
                        </c:set>
                        <a href="${urlDeleteEmployee}" class="btn btn-danger btn-sm me-3">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<%@include file="common/footer.jsp" %>