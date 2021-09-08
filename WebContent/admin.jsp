<!DOCTYPE html>
<html lang="en">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<head>
    <title>Ganpat University</title>
    <!-- META TAGS -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="EEducation master is one of the best eEducational html template, it's suitable for all eEducation websites like university,college,school,online eEducation,tution center,distance eEducation,computer eEducation">
    <meta name="keyword" content="eEducation html template, university template, college template, school template, online eEducation template, tution center template">
    <!-- FAV ICON(BROWSER TAB ICON) -->
  <link rel="shortcut icon" href="images/fav.png" type="image/x-icon">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CJosefin+Sans:600,700" rel="stylesheet">
    <!-- FONTAWESOME ICONS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- ALL CSS FILES -->
    <link href="css/materialize.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
    <link href="css/style-mob.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
    <!--== MAIN CONTRAINER ==-->
    <div class="container-fluid sb1">
        <div class="row">
            <!--== LOGO ==-->
            <div class="col-md-2 col-sm-3 col-xs-6 sb1-1" >
                <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a>
                <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
                <a href="index.html"  style="margin-bottom:10000px;" class="logo"><img src="images/logo.png" alt="" />
                </a>
            </div>
            <!--== SEARCH ==>
            <div class="col-md-6 col-sm-6 mob-hide">
                <form class="app-search">
                    <input type="text" placeholder="Search..." class="form-control">
                    <a href="#"><i class="fa fa-search"></i></a>
                </form>
            </div-->
           
            <!--== MY ACCCOUNT ==-->
            <div class="col-xs-10" style="text-align:right;	display: flex;align-items: right;justify-content: right;">
                <!-- Dropdown Trigger -->
                <a class='waves-effect dropdown-button top-user-pro' href='index.html' data-activates='top-menu'>Logout
                </a>

                <!-- Dropdown Structure -->
                <!--ul id='top-menu' class='dropdown-content top-menu-sty'>
                    <li class="divider"></li>
                    <li><a href="index.html" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a>
                    </li>
                </ul-->
            </div>
        </div>
    </div>

    <!--== BODY CONTNAINER ==-->
    <div class="container-fluid sb2">
        <div class="row">
            <div class="sb2-1">
               
                <!--== LEFT MENU ==-->
                <div class="sb2-13">
                    <ul class="collapsible" data-collapsible="accordion">
                        <li><a href="admin.html" class="menu-active"><i class="fa fa-bar-chart" aria-hidden="true"></i> Dashboard</a>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-book" aria-hidden="true"></i> All Courses</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="">All Course</a>
                                    </li>
                                    <li><a href="">Add New Course</a>
                                    </li>
                                    <li><a href="">Trash Course</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-user" aria-hidden="true"></i> Users</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="">All Users</a>
                                    </li>
                                    <li><a href="">Add New user</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-pencil" aria-hidden="true"></i> Exam time table</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="">All Exams</a></li>
                                    <li><a href="">Add New Exam</a></li>
                                    <li><a href="">All Groups</a></li>
                                    <li><a href="">Create New Groups</a></li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-users" aria-hidden="true"></i> Students</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="">All Students</a>
                                    </li>
                                    <li><a href="">Add New Students</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="collapsible-header"><i class="fa fa-commenting-o" aria-hidden="true"></i> Faculty</a>
                            <div class="collapsible-body left-sub-menu">
                                <ul>
                                    <li><a href="">All faculties</a>
                                    </li>
                                    <li><a href="">Add New Faculty</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>
                       
                    </ul>
                </div>
            </div>

            <!--== BODY INNER CONTAINER ==-->
            <div class="sb2-2">
                <!--== breadcrumbs ==-->
                <div class="sb2-2-2">
                    <ul>
                        <li><a href="index.html"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                        </li>
                        <li class="active-bre"><a href="#"> Dashboard</a>
                        </li>
                        <li class="page-back"><a href="index.html"><i class="fa fa-backward" aria-hidden="true"></i> Back</a>
                        </li>
                    </ul>
                </div>
                <!--== DASHBOARD INFO ==-->
                <div class="sb2-2-1">
                    <h2>Admin Dashboard</h2>
                    <p></p>
                    <div class="db-2">
                        <ul>
                           
                            <li>
                                <div class="dash-book dash-b-2">
                                    <h5>Students</h5>
                                    <h4>
                                    <%
										try
										{
										Class.forName("com.mysql.jdbc.Driver");	 
								        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "Mysql123");  
										Statement st=con.createStatement();
										String strQuery = "SELECT COUNT(*) FROM student";
										ResultSet rs = st.executeQuery(strQuery);
										String Countrow="";
										while(rs.next()){
										Countrow = rs.getString(1);
										out.println("" +Countrow);
										}
										}
										catch (Exception e){
										e.printStackTrace();
										}
										%>
									</h4>
                                    <!--a href="studentcount.jsp">Total Students</a-->
                                </div>
                            </li>
                            <li>
                                <div class="dash-book dash-b-1">
                                    <h5>Faculty</h5>
                                    <h4>
                                    <%
										try
										{
										Class.forName("com.mysql.jdbc.Driver");	 
								        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "Mysql123");  
										Statement st=con.createStatement();
										String strQuery = "SELECT COUNT(*) FROM faculty";
										ResultSet rs = st.executeQuery(strQuery);
										String Countrow="";
										while(rs.next()){
										Countrow = rs.getString(1);
										out.println("" +Countrow);
										}
										}
										catch (Exception e){
										e.printStackTrace();
										}
										%>
									</h4>
                                    <!--a href="facultycount.jsp">Total faculty</a-->
                                </div>
                            </li>
                            <li>
                                <div class="dash-book dash-b-3">
                                    <h5>Company</h5>
                                    <h4>
                                    <%
										try
										{
										Class.forName("com.mysql.jdbc.Driver");	 
								        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university", "root", "Mysql123");  
										Statement st=con.createStatement();
										String strQuery = "SELECT COUNT(*) FROM company";
										ResultSet rs = st.executeQuery(strQuery);
										String Countrow="";
										while(rs.next()){
										Countrow = rs.getString(1);
										out.println("" +Countrow);
										}
										}
										catch (Exception e){
										e.printStackTrace();
										}
										%>
									</h4>
                                    <!--a href="company.jsp">Total company</a-->
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--== User Details ==-->
                <div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Student Details</h4>
                                    <p>All about students like name, student id, phone, email, country, city and more</p>
                                </div>
                                <div class="tab-inn">
                                    <div class="table-responsive table-desi">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    
                                                    <th>Name</th>
                                                    <th>Phone</th>
                                                    <th>Email</th>
                                                    <th>City</th>
                                                    <th>Date of birth</th>
													<th>Status</th>
													<th>View</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    
                                                    <td><a href="#"><span class="list-enq-name">Yashvi Amin</span><span class="list-enq-city">Ahmedabad, Gujarat</span></a>
                                                    </td>
                                                    <td>999999999</td>
                                                    <td>yashvi@gmail.com</td>
                                                    <td>Ahmedabad</td>
                                                    
													<td>15 feb 2001</td>
                                                    <td>
                                                        <span class="label label-success">Active</span>
                                                    </td>
													<td><a href="" class="ad-st-view">View</a></td>
                                                </tr>
                                                <tr>
                                                    
                                                    <td><a href="#"><span class="list-enq-name">Prachi Bhatt</span><span class="list-enq-city">Ahmedabad, Gujarat</span></a>
                                                    </td>
                                                    <td>999999999</td>
                                                    <td>prachi@gmail.com</td>
                                                    <td>Ahmedabad</td>
                                                    
													<td>20 nov 2001</td>
                                                    <td>
                                                        <span class="label label-success">Active</span>
                                                    </td>
													<td><a href="" class="ad-st-view">View</a></td>
                                                </tr>
                                                <tr>
                                                    
                                                    <td><a href="#"><span class="list-enq-name">krutika</span><span class="list-enq-city">Ahmedabad, Gujarat</span></a>
                                                    </td>
                                                    <td>999999999</td>
                                                    <td>krutika@gmail.com</td>
                                                    <td>Ahmedabad</td>
                                                    
													<td>15 feb 2001</td>
                                                    <td>
                                                        <span class="label label-success">Active</span>
                                                    </td>
													<td><a href="" class="ad-st-view">View</a></td>
                                                </tr>
                                                <tr>
                                                    
                                                    <td><a href="#"><span class="list-enq-name">khushi jani</span><span class="list-enq-city">Ahmedabad, Gujarat</span></a>
                                                    </td>
                                                    <td>999999999</td>
                                                    <td>jani@gmail.com</td>
                                                    <td>Ahmedabad</td>
                                                    
													<td>02 dec 2000</td>
                                                    <td>
                                                        <span class="label label-success">Active</span>
                                                    </td>
													<td><a href="" class="ad-st-view">View</a></td>
                                                </tr>
                                              
                                                <tr>
                                                    
                                                    <td><a href="#"><span class="list-enq-name">john </span><span class="list-enq-city">Ahmedabad, Gujarat</span></a>
                                                    </td>
                                                    <td>999999999</td>
                                                    <td>john@gmail.com</td>
                                                    <td>Ahmedabad</td>
                                                    
													<td>10 feb 2001</td>
                                                    <td>
                                                        <span class="label label-success">Active</span>
                                                    </td>
													<td><a href="" class="ad-st-view">View</a></td>
                                                </tr>
                                                <tr>
                                             
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				
               
				
			
                <!--== Latest Activity ==
                <div class="sb2-2-3">
                    <div class="row">
                        <!--== Latest Activity ==>
                        <div class="col-md-6">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Latest Activity</h4>
                                    <p>Education is about teaching, learning skills and knowledge.</p>
                                </div>
                                <div class="tab-inn list-act-hom">
                                    <ul>
                                        <li class="list-act-hom-con">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <h4><span>12 may, 2017</span> Welcome to Academy</h4>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                        </li>
                                        <li class="list-act-hom-con">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <h4><span>08 Jun, 2017</span> Academy Leadership</h4>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                        </li>
                                        <li class="list-act-hom-con">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <h4><span>27 July, 2017</span> Awards and Achievement</h4>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                        </li>
                                        <li class="list-act-hom-con">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <h4><span>14 Aug, 2017</span> Facilities and Management</h4>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                        </li>
                                        <li class="list-act-hom-con">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <h4><span>24 Sep, 2017</span> Nation award winning 2017</h4>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
            </div>
        </div-->
    </div>

    <!--Import jQuery before materialize.js-->
    <script src="js/main.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>


</html>