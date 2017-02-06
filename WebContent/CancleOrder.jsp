<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

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
		display: inline-block;
		zoom:1.15;
	}
	div.productionInformation{
		margin-left:20px;
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
		margin-left:10px;
		display: inline-block;
		vertical-align: top;
		margin-top:80px;
	}
	hr.style2 {
	    border: 0;
	    border-bottom: 1px dashed #ccc;
	    background: #999;
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

	.badgebox
	{
	    opacity: 0;
	}
	
	.badgebox + .badge
	{
	    /* Move the check mark away when unchecked */
	    text-indent: -999999px;
	    /* Makes the badge's width stay the same checked and unchecked */
		width: 27px;
	}
	
	.badgebox:focus + .badge
	{
	    /* Set something to make the badge looks focused */
	    /* This really depends on the application, in my case it was: */
	    
	    /* Adding a light border */
	    box-shadow: inset 0px 0px 5px;
	    /* Taking the difference out of the padding */
	}
	
	.badgebox:checked + .badge
	{
	    /* Move the check mark back when checked */
		text-indent: 0;
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
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h2>Items pending to be canceled listed below:</h2>
				<div class="shadow" id="oneOrder0">
					<div>
						<h3 class="detail orderNumberHeader">Order Number: <small class="text-muted">82736535</small></h3>
						<h3 class="detail orderDateHeader">Order Date: <small class="text-muted">02-05-2017</small></h3>
<!--Order value  -->	<input type="hidden" name="orderNumber" value="82736535" form="cancleItem">
						
						
						<div id="oneItem">
	<!--1 -->					<input type="hidden" name="itemID" value="1" form="cancleItem">
								<div class="image">
									<img src="image/a.jpg">
								</div>
								<div class="productionInformation">
									<ul>
										<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>			
									</ul>
								</div>
								<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
	<!--1  -->							<input type="hidden" name="itemID" value="1">
										<button type="submit" class="btn btn-info">View Detail</button>
									</form>
	<!--1  -->						<label for="checkbox1" class="btn btn-danger" style="margin-top:20px;">Check to delete <input type="checkbox" id="checkbox1" class="badgebox" name="checkbox1" form="cancleItem"><span class="badge">&check;</span></label>		
								</div>
							<hr class="style2">
						</div>
						
						<div id="oneItem">
	<!--2 -->					<input type="hidden" name="itemID" value="2" form="cancleItem">
								<div class="image">
									<img src="image/a.jpg">
								</div>
								<div class="productionInformation">
									<ul>
										<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>			
									</ul>
								</div>
								<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
	<!--2  -->							<input type="hidden" name="itemID" value="2">
										<button type="submit" class="btn btn-info">View Detail</button>
									</form>
	<!--2  -->						<label for="checkbox2" class="btn btn-danger" style="margin-top:20px;">Check to delete <input type="checkbox" id="checkbox2" class="badgebox" name="checkbox2" form="cancleItem"><span class="badge">&check;</span></label>		
								</div>
						</div>
		
						
					</div>
				</div>
				
				
				<div class="shadow" id="oneOrder1">
					<div>
						<h3 class="detail orderNumberHeader">Order Number: <small class="text-muted">82736535</small></h3>
						<h3 class="detail orderDateHeader">Order Date: <small class="text-muted">02-05-2017</small></h3>
<!--Order value  -->	<input type="hidden" name="orderNumber" value="82736535" form="cancleItem">
						
						
						<div id="oneItem">
	<!--3 -->					<input type="hidden" name="itemID" value="3" form="cancleItem">
								<div class="image">
									<img src="image/a.jpg">
								</div>
								<div class="productionInformation">
									<ul>
										<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>			
									</ul>
								</div>
								<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
	<!--3  -->							<input type="hidden" name="itemID" value="3">
										<button type="submit" class="btn btn-info">View Detail</button>
									</form>
	<!--3  -->						<label for="checkbox3" class="btn btn-danger" style="margin-top:20px;">Check to delete <input type="checkbox" id="checkbox3" class="badgebox" name="checkbox3" form="cancleItem"><span class="badge">&check;</span></label>		
								</div>
							<hr class="style2">
						</div>
						
						<div id="oneItem">
	<!--4 -->					<input type="hidden" name="itemID" value="4" form="cancleItem">
								<div class="image">
									<img src="image/a.jpg">
								</div>
								<div class="productionInformation">
									<ul>
										<li class="list"><h4 class="detail">Production Name:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Product Quantity:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Total Price:</h4><span class="a">placeholder</span></li>
										<li class="list"><h4 class="detail">Seller Name:</h4><span class="a">placeholder</span></li>			
									</ul>
								</div>
								<div class="viewDetailAndDeleteButton">
									<form action="ViewProductDetails.jsp">
	<!--4  -->							<input type="hidden" name="itemID" value="4">
										<button type="submit" class="btn btn-info">View Detail</button>
									</form>
	<!--4  -->						<label for="checkbox4" class="btn btn-danger" style="margin-top:20px;">Check to delete <input type="checkbox" id="checkbox4" class="badgebox" name="checkbox4" form="cancleItem"><span class="badge">&check;</span></label>		
								</div>
						</div>
		
						
					</div>
				</div>
				
				
				
				<form id="cancleItem" style="display:inline-block; margin-top:40px;" action="CancellationConfirmation.jsp">
					<button class="btn btn-lg btn-danger">Confirm Cancellation</button>
				</form>
				<a style="margin-left:20px;" href="CustomerHomePage.jsp" class="btn btn-lg btn-success">Discard Cancellation</a>
				<a style="margin-left:250px;" class="btn btn-lg" href="ViewOrders.jsp">Click here to bring you back to view all your orders!</a>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	
</body>
</html>