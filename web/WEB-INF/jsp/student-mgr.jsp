<%-- 
    Document   : student-mgr
    Created on : Jan 12, 2018, 1:42:25 PM
    Author     : phong
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Update</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <!-- =======================================================
          Theme Name: BizPage
          Theme URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
          Author: BootstrapMade.com
          License: https://bootstrapmade.com/license/
        ======================================================= -->
        <script language="javascript">
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#showAvatar').prop('hidden', false);
                        $('#showAvatar').attr('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
        <style>
            table {
                border-collapse: separate !important;
                border-spacing: 0;
                width: 600px;
                margin: 30px;
            }
            .bordered {
                border: solid #ccc 1px;
                -moz-border-radius: 6px;
                -webkit-border-radius: 6px;
                border-radius: 6px;
                -webkit-box-shadow: 0 1px 1px #ccc;
                -moz-box-shadow: 0 1px 1px #ccc;
                box-shadow: 0 1px 1px #ccc;
            }
            .bordered tr:hover {
                background:lightsteelblue;    
                -webkit-transition: all 0.2s ease-in-out;
                -moz-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
            }
            .bordered td, .bordered th {
                border-left: 1px solid #ccc;
                border-top: 1px solid #ccc;
                padding: 10px;
                text-align: center;
            }
            .bordered th {
                background-color: #ECECEC;
                background-image: -webkit-gradient(linear, left top, left bottom, from(#F8F8F8), to(#ECECEC));
                background-image: -webkit-linear-gradient(top, #F8F8F8, #ECECEC);
                background-image: -moz-linear-gradient(top, #F8F8F8, #ECECEC);    
                background-image: linear-gradient(top, #F8F8F8, #ECECEC);
                -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
                -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;
                box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;
                border-top: none;
                text-shadow: 0 1px 0 rgba(255,255,255,.5);
                color: seagreen;
            }
            .bordered td:first-child, .bordered th:first-child {
                border-left: none;
            }
            .bordered th:first-child {
                -moz-border-radius: 6px 0 0 0;
                -webkit-border-radius: 6px 0 0 0;
                border-radius: 6px 0 0 0;
            }
            .bordered th:last-child {
                -moz-border-radius: 0 6px 0 0;
                -webkit-border-radius: 0 6px 0 0;
                border-radius: 0 6px 0 0;
            }
            .bordered th:only-child{
                -moz-border-radius: 6px 6px 0 0;
                -webkit-border-radius: 6px 6px 0 0;
                border-radius: 6px 6px 0 0;
            }
            .bordered tr:last-child td:first-child {
                -moz-border-radius: 0 0 0 6px;
                -webkit-border-radius: 0 0 0 6px;
                border-radius: 0 0 0 6px;
            }
            .bordered tr:last-child td:last-child {
                -moz-border-radius: 0 0 6px 0;
                -webkit-border-radius: 0 0 6px 0;
                border-radius: 0 0 6px 0;
            } 
        </style>
    </head>

    <body>

        <!--==========================
          Header
        ============================-->
        <header id="header">
            <div class="container-fluid">

                <div id="logo" class="pull-left">
                    <h1><a href="#intro" class="scrollto">๖ۣۜPower ๖ۣۜRevention</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="index.htm"><spring:message code="lable.home.menu1" text="Trang chủ"/></a></li>
                        <li><a href="#about"><spring:message code="lable.home.menu2" text="Phòng ban"/></a></li>
                        <li><a href="#services"><spring:message code="lable.home.menu3" text="Thành tích"/></a></li>
                        <li><a href="#team"><spring:message code="lable.home.menu4" text="Quản lý"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="lable.home.menu5" text="Chức năng"/></a>
                            <ul>
                                <li><a href="student-mgr.htm"><spring:message code="lable.home.li1" text="Cập nhật nhân viên"/></a></li>
                                <li><a href="editDP.htm"><spring:message code="lable.home.li2" text="Cập nhật phòng ban"/></a></li>
                                <li><a href="insertpage.htm"><spring:message code="lable.home.li3" text="Thêm nhân viên"/></a></li>
                                <li><a href="departs.htm"><spring:message code="lable.home.li4" text="Thêm phòng ban"/></a></li>
                                <li><a href="records.htm"><spring:message code="lable.home.li5" text="Thêm thành tích"/></a></li>
                                <li><a href="tableRecord.htm"><spring:message code="lable.home.li6" text="Danh sách thành tích"/></a></li>
                                <li><a href="changepass.htm"><spring:message code="lable.home.li7" text="Bảo mật tài khoản"/></a></li>
                            </ul>
                        </li>
                        <li><a href="#contact"><spring:message code="lable.home.menu6" text="Liên hệ"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="lable.home.menu7" text="Người dùng"/> | ${username}</a>
                            <ul>
                                <li><a href="login.htm"><spring:message code="lable.home.li8" text="Đăng xuất"/></a></li>
                            </ul>
                        </li>
                        <a href="?lang=en">English</a> | <a href="?lang=vi">Việt Nam</a>
                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </header><!-- #header -->

        <!--==========================
          Intro Section
        ============================-->
        <section id="intro2">
            <div class="intro-container">
                <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

                    <ol class="carousel-indicators"></ol>

                    <div class="carousel-inner" role="listbox">

                        <div class="carousel-item active" style="background-image: url('img/intro-carousel/1.jpg');">

                        </div>
                    </div>
                </div>
            </div>
        </section><!-- #intro -->

        <main id="main">
            <!--==========================
              Contact Section
            ============================-->
            <section id="contact" class="section-bg wow fadeInUp">
                <div class="container">

                    <div class="section-header">
                        <h3><spring:message code="lable.home.li1" text="Cập nhật nhân viên"/></h3>
                        <p><spring:message code="tile.home.l40" text="Cập nhật, xóa thông tin của nhân viên được thực hiện bởi nhân viên quản trị."/></p>
                        <p style="padding-bottom:0px; margin-top: -35px; color:red">Trạng thái: ${message}</p>
                    </div>
                    <div class="form" style="font-family: Times New Roman;">
                        <div id="sendmessage">Your message has been sent. Thank you!</div>
                        <div id="errormessage"></div>
                        <form:form action="student-mgr.htm" method="post" modelAttribute="staff" role="form" class="contactForm">
                            <c:set var="staff" value="${staff}"></c:set>
                                <div class="form-row" style="color: red;" >
                                    <div class="form-group col-md-6">
                                        <spring:message code="fi.a1" text="Mã số"/><input readonly="" type="text" name="id" value="${staff.id}" class="form-control" id="name" placeholder="<spring:message code="fi.a1" text="Mã số"/>" data-rule="minlen:1" data-msg="Vui lòng nhập mã số" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a2" text="Họ tên"/><input type="text" class="form-control" name="name" value="${staff.name}" id="email" placeholder="<spring:message code="fi.a2" text="Họ tên"/>" data-rule="minlen:1" data-msg="Vui lòng nhập họ tên" />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-row" style="color: red">
                                <div class="form-group col-md-6">
                                    <div><spring:message code="fi.a3" text="Giới tính"/></div><br>
                                    <form:radiobutton path="gender" value="Nam"/> <spring:message code="fi.b1" text="Nam"/>
                                    <form:radiobutton path="gender" value="Nữ"/> <spring:message code="fi.b2" text="Nữ"/>
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a4" text="Ngày sinh"/><input type="text" class="form-control" name="birthday" value="${staff.birthday}" id="email" placeholder="<spring:message code="fi.a4" text="Ngày sinh"/>" data-rule="minlen:10" data-msg="Vui lòng nhập ngày sinh" />
                                    <div class="validation"></div>
                                </div>
                            </div> 
                            <img src="img/${staff.photo}" width="150" height="150" style=" border-radius: 100%; float: left; margin-left: -155px; margin-top: -30px"/>
                            <img class="text-center" width="150" height="150" alt="Hình ảnh" style="border:1px solid black; border-radius: 100%; float: left; margin-left: -155px; margin-top: -30px" hidden id="showAvatar" >
                            <div class="form-row" style="color: red">
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a5" text="Hình ảnh"/><input onchange="readURL(this)" type="file" name="photo" value="${staff.photo}" class="form-control" data-rule="minlen:1" id="name" data-msg="<spring:message code="fi.a5" text="Hình ảnh"/>" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a6" text="Email"/><input type="email" class="form-control" name="email" value="${staff.email}" id="email" placeholder="Email" data-rule="email" data-msg="<spring:message code="fi.a6" text="Email"/>" />
                                    <div class="validation"></div>
                                </div>
                            </div> 
                            <div class="form-row" style="color: red">
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a7" text="Số điện thoại"/><input type="text" name="phone" value="${staff.phone}"class="form-control" id="name" placeholder="<spring:message code="fi.a7" text="Số điện thoại"/>" data-rule="minlen:10" data-msg="Vui lòng nhập số điện thoại" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a8" text="Lương"/><input type="text" class="form-control" name="salary" value="${staff.salary}" id="email" placeholder="<spring:message code="fi.a8" text="Lương"/>" data-rule="minlen:6" data-msg="Vui lòng nhập lương" />
                                    <div class="validation"></div>
                                </div>
                            </div> 
                            <div class="form-row" style="color: red">
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a9" text="Ghi chú"/><input type="text" name="notes" value="${staff.notes}" class="form-control" id="name" placeholder="<spring:message code="fi.a9" text="Ghi chú"/>" data-msg="Vui lòng nhập ghi chú" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a10" text="Mã phòng ban"/><br>
                                    <select name="departId" style="height: 40px">
                                        <option  value="${staff.departId}" selected="" hidden="">${staff.departId}</option>
                                        <c:forEach var="b" items="${departsins}">
                                            <option  value="${b.id}" >${b.name}</option>        
                                        </c:forEach>
                                    </select>                                    
                                    <div class="validation"></div>
                                </div>
                            </div> 
                            <div class="form-row" style="color: red">
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.a11" text="Cấp bậc"/><br>   
                                    <select name="capdo" style="height: 40px;">
                                        <option  value="${staff.capdo}" hidden="">${staff.capdo}</option>        
                                        <option  value="Nhân viên">Nhân viên</option>
                                        <option  value="Thư ký">Thư ký</option>
                                        <option  value="Quản lý">Quản lý</option>
                                        <option  value="Phó phòng">Phó phòng</option>
                                        <option  value="Trưởng phòng">Trưởng phòng</option>
                                        <option  value="Phó giám đốc">Phó giám đốc</option>
                                        <option  value="Giám đốc">Giám đốc</option>
                                        <option  value="Phó tổng giám đốc">Phó tổng giám đốc</option>
                                        <option  value="Tổng giám đốc">Tổng giám đốc</option>
                                        <option  value="Chủ tịch">Chủ tịch</option>
                                    </select>
                                    <div class="validation"></div>
                                </div>
                                <div class="text-center" style="padding-left: 5px; padding-top: 24px"><button name="btnUpdate" type="submit"><spring:message code="btn.add4" text="Cập nhật"/></button>&nbsp;&nbsp;   &nbsp;&nbsp;<button name="btnReset" type="submit">Reset</button></div>
                            </div> 
                        </form:form>
                    </div>
                        <%@include file="table.jsp" %>
                </div>
            </section><!-- #contact -->

        </main>

        <!--==========================
          Footer
        ============================-->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-info">
                            <h3>๖ۣۜP๖ۣۜR</h3>
                            <p>Dự án Java 5 - Sinh viên thực hiện PhongPTPS05454 - Fpoly.</p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Liên kết</h4>
                            <ul>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">About us</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Services</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Liên hệ</h4>
                            <p>
                                Nam Kỳ Khởi Nghĩa<br>
                                Hồ Chí Minh, HCM 700000<br>
                                Asia <br>
                                <strong>Phone:</strong> +84 927 383 635<br>
                                <strong>Email:</strong> phongptps05454@fpt.edu.vn<br>
                            </p>

                            <div class="social-links">
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                            </div>

                        </div>

                        <div class="col-lg-3 col-md-6 footer-newsletter">
                            <h4>Bản quyền</h4>
                            <p>Bản quyền thuộc về PhongPTPS05454 - Poly K12.3.</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit"  value="Subscribe">
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>๖ۣۜPower ๖ۣۜRevention</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
                    -->
                    Best <a href="https://bootstrapmade.com/">Bootstrap Templates</a> by BootstrapMade
                </div>
            </div>
        </footer><!-- #footer -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/superfish/hoverIntent.js"></script>
        <script src="lib/superfish/superfish.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>
        <script src="lib/jquery/jquery-3.3.1.min.js"></script>
        <!-- Template Main Javascript File -->
        <script src="js/main.js"></script>
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <!-- Page level plugin JavaScript-->
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>
        <!-- Custom scripts for this page-->
        <script src="js/sb-admin-datatables.min.js"></script>
    </body>
</html>
