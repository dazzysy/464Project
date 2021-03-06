<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>

	.shadow{
		margin-top:50px;
		background-color: white;
		position:relative;
		border-radius: 10px;
		box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 20px rgba(0, 0, 0, 0.1) ;
		
	}
	.shadow div{
		padding:20px;
	}
	div.image{
		margin-left:20px;
		display: inline-block;
		zoom:1.15;
	}
	div.productionInformation{
		margin-left:40px;
		margin-top:20px;
		display: inline-block;
		vertical-align: top;
	}
	span.a:before{
	    content:" "; 
	    display:inline-block; 
	    width:20px;
	}
	span.a{
		font-weight:bold;
	}
	span.b:before{
	    content:" "; 
	    display:inline-block; 
	    width:20px;
	}

	
	h4.detail{
		display:inline;
	}
	li.list {
		margin: 0 20px 20px 0; 
	}
	div.viewDetailAndDeleteButton{
		margin-left:40px;
		display: inline-block;
		vertical-align: top;
		margin-top:80px;
	}
	hr.style2 {
	    border: 0;
	    border-bottom: 1px dashed #ccc;
	    background: #999;
	}
	.btn-circle-lg {
		width: 75px;
		height: 75px;
		text-align: center;
		padding: 1.9%;
		font-size: 33px;
		line-height: 2.00;
		border-radius: 70px;
	}
	.deletOrderButton{
		margin-top:10px;
		margin-left:390px;
	}
	h3.orderNumberHeader{
		margin-left:20px;
		display:inline;
	}
	h3.orderDateHeader{
		margin-left:150px;
		display:inline;
	}
	h3.orderTotal{
		margin-left:40px;
		display:inline;
	}
	h3.ShippingAddress{
		margin-left:40px;
		display:inline;
	}
	
	.checkBoxUnderDetail{
		margin-top:40px;
	}
	.material-switch > input[type="checkbox"] {
    display: none;   
}

	.material-switch > label {
	    cursor: pointer;
	    height: 0px;
	    position: relative; 
	    width: 40px;  
	}
	
	.material-switch > label::before {
	    background: rgb(0, 0, 0);
	    box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.5);
	    border-radius: 8px;
	    content: '';
	    height: 16px;
	    margin-top: -8px;
	    position:absolute;
	    opacity: 0.3;
	    transition: all 0.4s ease-in-out;
	    width: 40px;
	}
	.material-switch > label::after {
	    background: rgb(255, 255, 255);
	    border-radius: 16px;
	    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	    content: '';
	    height: 24px;
	    left: -4px;
	    margin-top: -8px;
	    position: absolute;
	    top: -4px;
	    transition: all 0.3s ease-in-out;
	    width: 24px;
	}
	.material-switch > input[type="checkbox"]:checked + label::before {
	    background: inherit;
	    opacity: 0.5;
	}
	.material-switch > input[type="checkbox"]:checked + label::after {
	    background: inherit;
	    left: 20px;
	}
	
</style>

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid"  style="zoom:1.2;">
	    <!-- Brand and toggle get grouped for better mobile display -->
	   <div class="navbar-header">
	      <a class="navbar-brand" href="CustomerHomePage.jsp">Customer Home Page</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	      
	      	<!-- This place is used for add more links on navigation bar.-->
	 <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->       
	 <!-- <li class="active"><a href="#">Link</a></li>--> 
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Dropdown <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Clothing</a></li>
	            <li><a href="#">Electronics</a></li>
	            <li><a href="#">Sports</a></li>
	            <!--<li role="separator" class="divider"></li>-->
	            <li><a href="#">Health</a></li>
	            <li><a href="#">Toys</a></li>
	          </ul>
	        </li>
	      </ul>
	      
	      <form class="navbar-form navbar-left" action="productionSearch">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default">Submit</button>
	      </form>
	      
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Link</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Dropdown <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Shopping Cart</a></li>
	            <li><a href="#">Account Information</a></li>
	            <li><a href="#">Your Order</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="Login.jsp">&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Log Out</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	
	<div class="container-fluid" style="margin-top:40px; padding-bottom: 100px;">
		<div class="row">
			<div class="col-sm-2">
				<a href="ViewOrders.jsp" class="btn btn-circle-lg btn-success" style="margin-left:40px; padding: 1%; position:fixed"><span class="glyphicon glyphicon-arrow-left" style="vertical-align:top"></span> </a>
			</div>
			<div class="col-sm-8">

				<div class="shadow" id="oneOrder">
					<div>
						<h3 class="detail orderNumberHeader">Order Number: <small class="text-muted">82736535</small></h3>
						<h3 class="detail orderDateHeader">Order Date: <small class="text-muted">02-05-2017</small></h3>
<!--Order value  -->	<input type="hidden" name="orderNumber" value="82736535" form="cancleItem">
						<form id="cancleItem" action="CancleOrder.jsp" style="display:inline;">
							<button id="button" class="btn btn-circle-lg btn-danger deletOrderButton"><span class="glyphicon glyphicon-remove" style="vertical-align:top"></span> </button>
						</form>
						
						<div id="oneItem">
<!--1 -->						<input type="hidden" name="itemID" value="1" form="cancleItem">
							<div class="image">
								<img src="image/a.jpg">
							</div>
							<div class="productionInformation">
								<ul>
									<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Shipping status:</h4><span class="a">placeholder</span></li>
								</ul>
							</div>
							<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
<!--1  -->						<input type="hidden" name="itemID" value="1">
										<button type="submit" class="btn btn-lg btn-info">View Detail</button>
									</form>
									<div class="material-switch pull-right checkBoxUnderDetail">
<!--1  -->			                        <input id="checkbox1" name="deletOrNot1" form="cancleItem" type="checkbox"/>
<!--1  -->		                            <label for="checkbox1" class="label-danger"></label>
                        			</div>
									
							</div>
							<hr class="style2">
						</div>
						
						<div id="oneItem">
<!--2  -->						<input type="hidden" name="itemID" value="2" form="cancleItem">
							<div class="image">
								<img src="image/a.jpg">
							</div>
							<div class="productionInformation">
								<ul>
									<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>
									<li class="list"><h4 class="detail">Shipping status:</h4><span class="a">placeholder</span></li>
								</ul>
							</div>
							<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
<!--2  -->										<input type="hidden" name="itemID" value="2">
										<button type="submit" class="btn btn-lg btn-info">View Detail</button>
									</form>
									<div class="material-switch pull-right checkBoxUnderDetail">
<!--2 -->			                            <input id="checkbox2" name="deletOrNot2" form="cancleItem" type="checkbox"/>
<!--2 -->		                            <label for="checkbox2" class="label-danger"></label>
                        			</div>
									
							</div>
							<hr class="style2">
							
						</div>
						<div>
							<div style="display:inline"><h3 class="detail orderTotal" >Total:</h3><span style="zoom:1.5"class="a">$22.5</span></div>
							<div style="display:inline"><h3 class="detail ShippingAddress" >Ship To:</h3><span style="zoom:1.2"class="b">NE Lincoln E street 401</span></div>
						</div>
						
					</div>
				</div>
				
				
				
				
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>