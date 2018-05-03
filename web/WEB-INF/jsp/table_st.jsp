<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card mb-3" style="width: 1890px; margin-left: -390px">
    <div class="card-header">
        <i class="fa fa-table"></i> Data Table Example</div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="bordered" id="dataTable" width="100%" cellspacing="0" style="margin-left: -1px">
                <thead>
                    <tr style="text-align: center; font-family: Times New Roman">
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.a2" text="Họ tên"/></th>
                <th><spring:message code="fi.a3" text="Giới tính"/></th>
                <th><spring:message code="fi.a4" text="Ngày sinh"/></th>
                <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
                <th><spring:message code="fi.a6" text="Email"/></th>
                <th><spring:message code="fi.a7" text="Số điện thoại"/></th>
                <th><spring:message code="fi.a8" text="Lương"/></th>
                <th><spring:message code="fi.a9" text="Ghi chú"/></th>
                <th><spring:message code="fi.a10" text="Mã phòng ban"/></th>
                <th><spring:message code="fi.a11" text="Cấp bậc"/></th>
                <th><spring:message code="fi.d3" text="Thao tác"/></th>
                </tr>
                </thead>
                <tfoot>
                    <tr style="text-align: center; font-family: Times New Roman">
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.a2" text="Họ tên"/></th>
                <th><spring:message code="fi.a3" text="Giới tính"/></th>
                <th><spring:message code="fi.a4" text="Ngày sinh"/></th>
                <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
                <th><spring:message code="fi.a6" text="Email"/></th>
                <th><spring:message code="fi.a7" text="Số điện thoại"/></th>
                <th><spring:message code="fi.a8" text="Lương"/></th>
                <th><spring:message code="fi.a9" text="Ghi chú"/></th>
                <th><spring:message code="fi.a10" text="Mã phòng ban"/></th>
                <th><spring:message code="fi.a11" text="Cấp bậc"/></th>
                <th><spring:message code="fi.d3" text="Thao tác"/></th>
                </tr>
                </tfoot>

                <tbody>
                    <c:forEach var="b" items="${staffsins}">
                        <tr>
                            <td>${b.id}</td>
                            <td>${b.name}</td>
                            <td>${b.gender}</td>
                            <td>${b.birthday}</td>
                            <td><img src="img/${b.photo}" style="height: 100px; width: 100px;border-radius: 50%; border: solid 2px black"/></td>  
                            <td>${b.email}</td>
                            <td>${b.phone}</td>
                            <td>${b.salary}</td>
                            <td>${b.notes}</td>
                            <td>${b.departId}</td>
                            <td>${b.capdo}</td>
                        </tr>
                    </c:forEach>
                </tbody>  

            </table>
        </div>
    </div>
    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>
</div>




