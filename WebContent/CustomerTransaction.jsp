<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<style>
.itemsPresentationPart {
	margin-top: 50px;
	margin-left: 90px;
	x
}

.singleItem {
	margin-top: 40px;
	margin-left: 20px;
	margin-bottom: 80px;
}
</style>

<title>Insert title here</title>
</head>
<nav class="navbar navbar-default">
<div class="container-fluid" style="zoom: 1.2;">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<a class="navbar-brand" href="CustomerHomePage.jsp">Customer Home
			Page</a>
	</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">

			<!-- This place is used for add more links on navigation bar.-->
			<!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
			<!-- <li class="active"><a href="#">Link</a></li>-->
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button">Dropdown <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Clothing</a></li>
					<li><a href="#">Electronics</a></li>
					<li><a href="#">Sports</a></li>
					<!--<li role="separator" class="divider"></li>-->
					<li><a href="#">Health</a></li>
					<li><a href="#">Toys</a></li>
				</ul></li>
		</ul>

		<form class="navbar-form navbar-left" action="productionSearch">
			<div class="form-group" style="margin-left: 20px;">
				<input type="text" class="form-control" placeholder="Search"
					name="searchContent">
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">Link</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button">Dropdown <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Shopping Cart</a></li>
					<li><a href="#">Account Information</a></li>
					<li><a href="ViewOrders.jsp">Your Order</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="Login.jsp">&nbsp;&nbsp;&nbsp;<span
							class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Log Out
					</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid --> </nav>
<h2>Your Orders are Listed Below</h2>

<br>
<br>
<table width="90%' cellspacing=" 3" cellpadding="4">
	<tr>

		<td><h3>Product name</h3></td>
		<td><h3>Product Image</h3></td>
		<td><h3>Product quantity</h3></td>
		<td><h3>Total price</h3></td>
		<td><h3>Seller name</h3></td>
	</tr>
	<tr>

		<th>Placeholder</th>
		<th><IMG SRC=image/a.jpg HEIGHT="100" WIDTH="100" BORDER="0"></th>
		<th>Placeholder</th>
		<th>Placeholder</th>
		<th>Placeholder</th>
	</tr>
	<tr>
		<th></th>
		<th></th>
		<th></th>
		<th></th>
	</tr>

</table>
<br>
<br>
<h4 text align="center">Your Total cost : Placeholder</h4>
<hr class="style1">
<br>
<div class="container-fluid">
	<h3>Your Card Information</h3><br>
	<div class="row">
		<div class="col-sm-4">
			Cardholder's FirstName <input type=text name=userFName placeholder="Cardholder Firstname">
		</div>
		<div class="col-sm-4">
			Cardholder's LastName <input type=text name=userLName placeholder="Cardholder Lastname">
		</div>
		<div class="col-sm-">
			Card Number <input type=text name=cardNumber placeholder="Card Number" >
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-3">
			Please select card type: <span style="font-size: 15px"><select
				id="projectPoeperty" name="projectPoeperty ">
					<option value="2" name="Visa">Visa</option>
					<option value="1" name="Master">Master</option>
					<option value="0" name="Discover">Discover</option>
			</select> <script>
				form.projectPoeperty.Value = '${user.projectPoeperty}'
			</script></span>
		</div>
		<div class="col-sm-3">
			security code <input type=text name=securityCode placeholder="Security Code">
		</div>
		<div class="col-sm-2">
			Expiration Year <span style="font-size: 15px"><select
				id="projectPoeperty2" name="projectPoeperty2 ">
					<option value="11" name="2028">2028</option>
					<option value="10" name="2027">2027</option>
					<option value="9" name="2026">2026</option>
					<option value="8" name="2025">2025</option>
					<option value="7" name="2024">2024</option>
					<option value="6" name="2023">2023</option>
					<option value="5" name="2022">2022</option>
					<option value="4" name="2021">2021</option>
					<option value="3" name="2020">2020</option>
					<option value="2" name="2019">2019</option>
					<option value="1" name="2018">2018</option>
					<option value="0" name="2017">2017</option>

			</select> <script>
				form.projectPoeperty.Value = '${user.projectPoeperty2}'
			</script></span>
		</div>
		<div class="col-sm-1">
			Month <span style="font-size: 15px"><select
				id="projectPoeperty3" name="projectPoeperty3 ">
					<option value="11" name="12">12</option>
					<option value="10" name="11">11</option>
					<option value="9" name="10">10</option>
					<option value="8" name="9">9</option>
					<option value="7" name="8">8</option>
					<option value="6" name="7">7</option>
					<option value="5" name="6">6</option>
					<option value="4" name="5">5</option>
					<option value="3" name="4">4</option>
					<option value="2" name="3">3</option>
					<option value="1" name="2">2</option>
					<option value="0" name="1">1</option>
			</select> <script>
				form.projectPoeperty.Value = '${user.projectPoeperty3}'
			</script></span>
		</div>
		<!-- <div class="col-sm-2">
			Date <span style="font-size: 15px"><select
				id="projectPoeperty4" name="projectPoeperty4 ">
				<option value="30" name="31">31</option>
					<option value="29" name="30">30</option>
					<option value="28" name="29">29</option>
					<option value="27" name="28">28</option>
					<option value="26" name="27">27</option>
					<option value="25" name="26">26</option>
					<option value="24" name="25">25</option>
					<option value="23" name="24">24</option>
					<option value="22" name="23">23</option>
					<option value="21" name="22">22</option>
					<option value="20" name="21">21</option>
					<option value="19" name="20">20</option>
					<option value="18" name="19">19</option>
					<option value="17" name="18">18</option>
					<option value="16" name="17">17</option>
					<option value="15" name="16">16</option>
					<option value="14" name="15">15</option>
					<option value="13" name="14">14</option>
					<option value="12" name="13">13</option>
					<option value="11" name="12">12</option>
					<option value="10" name="11">11</option>
					<option value="9" name="10">10</option>
					<option value="8" name="9">9</option>
					<option value="7" name="8">8</option>
					<option value="6" name="7">7</option>
					<option value="5" name="6">6</option>
					<option value="4" name="5">5</option>
					<option value="3" name="4">4</option>
					<option value="2" name="3">3</option>
					<option value="1" name="2">2</option>
					<option value="0" name="1">1</option>
			</select> <script>
				form.projectPoeperty.Value = '${user.projectPoeperty4}'
			</script></span>
		</div> -->
		</div>
		<br>
		<div class="row">
		<div class="col-sm-6">
		Shipping Address <input type=text name=sAddress style="width: 300px;" placeholder ="Shipping Address">
		</div>
		<div class="col-sm-6">
		Billing Address <input type=text name=bAddress style="width: 300px;"placeholder="Billing Address">
		</div>
		</div>
		<br><br><br>
		<hr class="style1">
		
		<div class="row">
		<div class="col-sm-3">
		 
		</div>
		<div class="col-sm-3">
		
		 <form action="CustomerTransactionConfirmation.jsp">
		
							<button type="Confirm Payment" class="btn btn-lg btn-info">Confirm Payment</button>
							
						
						</form>
		
		</div>
		<div class="col-sm-3">
		 <form action="View&CheckoutShoppingCart.jsp">
							<button type="Cancel Payment" class="btn btn-lg btn-info">Cancel Payment</button>
						</form>
		</div>
		
		
		</div>
		
		
</div>


</body>
</html>