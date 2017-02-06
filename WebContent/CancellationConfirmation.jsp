<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	h4.detail{
		display:inline;
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
	h3.refundTotal{
		margin-left:250px;
		display:inline;
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
	      
	      <form class="navbar-form navbar-left">
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
				<h2 style="color:ForestGreen;">Congratulation! All items are successfully removed from your orders!</h2>
				<div class="shadow" id="oneOrder0">
					<div>
					<h3 class="detail orderNumberHeader">Cancellation in Order:&nbsp;&nbsp;<small class="text-muted">82736535</small></h3>
						<table class="table table-bordered" style="margin-top:40px;">
						  <thead class="thead-inverse">
						    <tr>
						      <th class="col-md-2">Item Name</th>
						      <th class="col-md-2">Item Quantity</th>
						      <th class="col-md-2">Provider</th>
						      <th class="col-md-2">Price</th>
						      <th class="col-md-2">Damage Deposit</th>
						      <th class="col-md-2">Status</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						  </tbody>
						</table>
						<div style="display:inline-block;"><h4 class="detail" >Refund for this order will be returned to card: </h4><span style="zoom:1;"class="a">2748 2347 239472</span></div>
						<div style="display:inline-block;"><h3 class="refundTotal" >Total Refund:</h3><span style="zoom:1.5"class="a">$22.5</span></div>
					</div>
				</div>
				
				
				<div class="shadow" id="oneOrder0">
					<div>
					<h3 class="detail orderNumberHeader">Cancellation in Order:&nbsp;&nbsp;<small class="text-muted">82736535</small></h3>
						<table class="table table-bordered" style="margin-top:40px;">
						  <thead class="thead-inverse">
						    <tr>
						      <th class="col-md-2">Item Name</th>
						      <th class="col-md-2">Item Quantity</th>
						      <th class="col-md-2">Provider</th>
						      <th class="col-md-2">Price</th>
						      <th class="col-md-2">Damage Deposit</th>
						      <th class="col-md-2">Status</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						    <tr>
						      <td>Placeholder </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td> </td>
						      <td>Canceled </td>
						    </tr>
						  </tbody>
						</table>
						<div style="display:inline-block;"><h4 class="detail" >Refund for this order will be returned to card: </h4><span style="zoom:1;"class="a">2748 2347 239472</span></div>
						<div style="display:inline-block;"><h3 class="refundTotal" >Total Refund:</h3><span style="zoom:1.5"class="a">$22.5</span></div>
					</div>
				</div>
				
				
				
				
				
				<a style="margin: 20px 250px;" class="btn btn-lg" href="ViewOrders.jsp">Click here to bring you back to view all your orders!</a>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	
	
</body>
</html>