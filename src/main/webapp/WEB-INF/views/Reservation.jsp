<%@page import="kr.ac.controller.board.dto.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%
	String cp=request.getContextPath();
	String id=(String)session.getAttribute("id");
	UserVO uservo=(UserVO)request.getAttribute("uservo");
	System.out.println(uservo.getAddress1());
	System.out.println(uservo.getAddress2());
%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>올리브 베이커리 예약</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=cp%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=cp%>/resources/bootstrap/css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<style type="text/css">
		h5{
			color:#ffffff;
			text-align:right;
			margin-right:100px;		
		}
		
	</style>
	<%if(id!=null){ %>
		<div class="address-bar"><%=id%>님 반가워요</div>
		<a href="Logout"><h5>로그아웃</h5></a><a href="OrderHistory"><h5>마이페이지</h5></a>
	<%}else{ %>
	<a href="MemberShipForm"><h5>회원가입</h5></a><a href="LoginForm"><h5>로그인</h5></a>
	<%} %>
	
	
    <div class="brand">Olive Bakery</div>
    <div class="address-bar">경기 양평군 양평읍 시민로78번길 9-4</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="Main">Olive Bakery</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="Main">Home</a>
                    </li>
                    
                    <li>
                        <a href="Menu">Menu</a>
                    </li>
                    <li>
                        <a href="Reservation">Reservation</a>
                    </li>
                    <li>
                        <a href="Notice">Notice</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>예약하기</strong>
                    </h2>
                    <hr>
                </div>
                <form role="form" action="CompleteReservation">
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>무화과 바게트</h3>
                    <input type="text" class="form-control" name="0" placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>올리브 치아바타</h3>
                    <input type="text" class="form-control" name="1" placeholder="수량">
                </div>
                
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>순수 우유식빵</h3>
                    <input type="text" class="form-control" name="2" placeholder="수량">
                </div>
                             
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>먹물 치즈식빵</h3>
                    <input type="text" class="form-control" name="3" placeholder="수량">
                </div>
                
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>곡물 식빵</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>불고기 치아바타 샌드위치</h3>
                    <input type="text" class="form-control" placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>앙버터</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div><div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>소보로</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>단팥빵</h3>
                    <input type="text" class="form-control" placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>모닝빵</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>스콘</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>오트밀쿠키</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>코코넛 바통마레쇼</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="<%=cp%>/resources/bootstrap/img/bread-2.jpg" alt="">
                    <h3>땅콩 바통마레쇼</h3>
                    <input type="text" class="form-control"  placeholder="수량">
                </div>
                <div class="clearfix"></div>
                    <div class="row"> 
                        <div class="form-group col-lg-12">
                                <label>주소</label>
                                
                                <input list="trans" class="form-control" name="address" placeholder="주소를 적어주세요" >
								<datalist id="trans">
								<%if(uservo.getAddress1()!=null){ %>
								  <option value="<%=uservo.getAddress1()%>"/>
								  <%} %>
								  <%if(uservo.getAddress2()!=null){ %>
								  <option value="<%=uservo.getAddress2()%>"/>
								  <%} %>
								  <%if(uservo.getAddress3()!=null){ %>
								  <option value="<%=uservo.getAddress3()%>"/>
								  <%} %>
								</datalist>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                    	<div class="form-group col-lg-12">
                            <label>추가 요구사항</label>
                            <textarea class="form-control" rows="6" name="requirement"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-lg-12">
                            <input type="hidden" name="save" value="contact">
                            <button type="submit" class="btn btn-default">Submit</button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
   </div>
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2017</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="<%=cp%>/resources/bootstrap/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=cp%>/resources/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>