<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card mb-3" style="width: 710px; margin-left: 200px">
    <div class="card-header">
        <i class="fa fa-table"></i> Data Table Example </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="bordered" id="dataTable" width="100%" cellspacing="0" style="margin-left: 0   px; font-family: Times New Roman">
                <thead>
                    <tr>
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.c2" text="Tên phòng ban"/></th>
                <th><spring:message code="fi.d9" text="Tổng thành tích"/></th>
                <th><spring:message code="fi.d12" text="Tổng kỹ luật"/></th>
                <th><spring:message code="fi.d13" text="Tổng kết"/></th>
                </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.c2" text="Tên phòng ban"/></th>
                <th><spring:message code="fi.d9" text="Tổng thành tích"/></th>
                <th><spring:message code="fi.d12" text="Tổng kỹ luật"/></th>
                <th><spring:message code="fi.d13" text="Tổng kết"/></th>
                </tr>
                </tfoot>

                <tbody>
                    <c:forEach var="b" items="${ttdepart}">
                        <tr>
                            <td>${b.departId}</td>  
                            <td>${b.name}</td> 
                            <td>${b.tongthanhtich}</td>
                            <td>${b.tongkyluat}</td>
                            <td>${b.tongket}</td>
                        </tr>
                    </c:forEach>
                </tbody>  

            </table>
        </div>
    </div>
    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>
