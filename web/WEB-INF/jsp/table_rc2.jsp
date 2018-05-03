<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card mb-3" style="width: 1000px; margin-left: 70px">
    <div class="card-header">
        <i class="fa fa-table"></i> Data Table Example </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="bordered" id="dataTable" width="100%" cellspacing="0" style="margin-left: -1px; font-family: Times New Roman">
                <thead>
                    <tr>
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.a2" text="Họ tên"/></th>
                <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
                <th><spring:message code="lable.home.menu3" text="Thành tích"/></th>
                <th><spring:message code="fi.d8" text="Kỷ luật"/></th>
                <th><spring:message code="fi.d9" text="Tổng điểm số"/></th>
                </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th><spring:message code="fi.a1" text="Mã số"/></th>
                <th><spring:message code="fi.a2" text="Họ tên"/></th>
                <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
                <th><spring:message code="lable.home.menu3" text="Thành tích"/></th>
                <th><spring:message code="fi.d8" text="Kỷ luật"/></th>
                <th><spring:message code="fi.d9" text="Tổng điểm số"/></th>
                </tr>
                </tfoot>

                <tbody>
                    <c:forEach var="b" items="${ttt}">
                        <tr>
                            <td>${b.maso}</td>  
                            <td>${b.name}</td> 
                            <td><img src="img/${b.photo}" style="height: 100px; width: 100px;border-radius: 50%; border: solid 2px black"/></td>  
                            <td>${b.thanhtich}</td>
                            <td>${b.kyluat}</td>
                            <td>${b.diemtongket}</td>
                        </tr>
                    </c:forEach>
                </tbody>  

            </table>
        </div>
    </div>
    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>
</div>




