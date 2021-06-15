<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<html>

	<head>
		<meta charset="ISO-8859-1">

		<!--Boostrap 5.01-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<!-- favicon -->
		<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
		<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
		<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
		<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
		<meta name="theme-color" content="#7952b3">
		<!-- font awesome -->
		<script src="https://kit.fontawesome.com/771f7a8630.js" crossorigin="anonymous"></script>

		<!-- font awesome 6 -->
		<script src="https://kit.fontawesome.com/771f7a8630.js" crossorigin="anonymous"></script>
		<style>
			.bd-placeholder-img {
				font-size: 1.125rem;
				text-anchor: middle;
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
			}

			@media (min-width : 768px) {
				.bd-placeholder-img-lg {
					font-size: 3.5rem;
				}
			}

			.form-control-dark {
				color: #fff;
				background-color: var(- -bs-dark);
				border-color: var(- -bs-gray);
			}

			.form-control-dark:focus {
				color: #fff;
				background-color: var(- -bs-dark);
				border-color: #fff;
				box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
			}

			.bi {
				vertical-align: -.125em;
				fill: currentColor;
			}

			.text-small {
				font-size: 85%;
			}

			.dropdown-toggle {
				outline: 0;
			}

			.my-custom-scrollbar {
				position: relative;
				height: 300px;
				overflow: auto;
			}

			.table-wrapper-scroll-y {
				display: block;
			}

			thead tr th {
				position: sticky;
				top: 0;
				z-index: 10;
				background-color: #ffffff;
			}

			.table-responsive {
				height: 300px;
				overflow: scroll;
			}

			.iconoInput {
				color: #070606;
				font-size: 15px;
				position: absolute;
				left: 25px;
				padding-top: 10px;
			}

			.inputPadding {
				padding-left: 40px;
			}
		</style>

	</head>

	<body>

		<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
			<symbol id="bootstrap" viewBox="0 0 118 94">
				<title>Bootstrap</title>
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
				</path>
			</symbol>
			<symbol id="home" viewBox="0 0 16 16">
				<path
					d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
			</symbol>
			<symbol id="speedometer2" viewBox="0 0 16 16">
				<path
					d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z" />
				<path fill-rule="evenodd"
					d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z" />
			</symbol>
			<symbol id="table" viewBox="0 0 16 16">
				<path
					d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z" />
			</symbol>
			<symbol id="people-circle" viewBox="0 0 16 16">
				<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
				<path fill-rule="evenodd"
					d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
			</symbol>
			<symbol id="grid" viewBox="0 0 16 16">
				<path
					d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
			</symbol>
		</svg>

		<!--
		<nav class="py-2 bg-light border-bottom">
			<div class="container d-flex flex-wrap">
			  <ul class="nav me-auto">
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2 active" aria-current="page">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">Features</a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">Pricing</a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">FAQs</a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">About</a></li>
			  </ul>
			  <ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">Login</a></li>
				<li class="nav-item"><a href="#" class="nav-link link-dark px-2">Sign up</a></li>
			  </ul>
			</div>
		  </nav>
-->
		<header>
			<div class="px-3 py-2 bg-dark text-white">
				<div class="container">
					<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
						<a href="index.jsp"
							class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
							<i class="fas fa-gamepad fa-3x text-white"></i>
						</a>

						<ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
							<li><a href="#" class="nav-link text-secondary"> <svg class="bi d-block mx-auto mb-1"
										width="24" height="24">
										<use xlink:href="#home" />
									</svg> Home
								</a></li>
							<li><a href="#" class="nav-link text-white"> <svg class="bi d-block mx-auto mb-1" width="24"
										height="24">
										<use xlink:href="#speedometer2" />
									</svg> Dashboard
								</a></li>
							<li><a href="#" class="nav-link text-white"> <svg class="bi d-block mx-auto mb-1" width="24"
										height="24">
										<use xlink:href="#table" />
									</svg> Orders
								</a></li>
							<li><a href="#" class="nav-link text-white"> <svg class="bi d-block mx-auto mb-1" width="24"
										height="24">
										<use xlink:href="#grid" />
									</svg> Products
								</a></li>
							<li><a href="#" class="nav-link text-white"> <svg class="bi d-block mx-auto mb-1" width="24"
										height="24">
										<use xlink:href="#people-circle" />
									</svg> Customers
								</a></li>
						</ul>
					</div>
				</div>
			</div>

		</header>

		<header class="py-3 mb-4 border-bottom">
			<div class="container d-flex flex-wrap justify-content-center">
				<a href="/" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#people-circle"></use>
					</svg> <span class="fs-4">Modificar Cliente</span>
				</a>
				
			</div>
		</header>

		<div class="container">

			<div class="row mb-2">
				<!--	<div class="row" >-->
				<div class="col-md col-lg-6  d-grid gap-2 ">
					<button class="btn btn-outline-primary " href="cliente.jsp" type="button" data-bs-toggle="modal"
						data-bs-target="#agregarCliente" role="link"
						onclick="window.location='${pageContext.request.contextPath}/ServletControlador'"><i
							class="fas fa-angle-double-left"></i> &nbsp; Regresar</button>
				</div>
				<!--
				<div class="col-3 d-grid gap-2 ">
					<button class="btn btn-primary" type="button" > agregar </button>
				</div>
				-->
				<!--	</div>	-->

			</div>

		</div>



		<!-- Modal -->
		<div class="container">



			<form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}" method="POST"
				class="g-3 was-validated needs-validation">
				<div class="row">
					<div class=" col-12 col-sm ">

						<div class="row">

							<div class=" form-group mb-3 col-xl  ">
								<label for="nombre" class="form-label">Nombre :</label> <input type="text"
									class="form-control" id="nombre" name="nombre" aria-describedby="nombre" 
									value="${cliente.nombre}"  required>
							</div>


						</div>
						<div class="row">
							<div class="mb-3 form-group col-xl  ">
								<label for="apellido" class="form-label">Apellido :</label> <input type="text"
									class="form-control" id="apellido" name="apellido" aria-describedby="apellido"
									value="${cliente.apellido}" required>
							</div>
						</div>
						<div class="row">

							<div class="mb-3 form-group col-xl   ">
								<label for="exampleInputEmail1" class="form-label">Email :</label> <input type="email"
									 class="form-control" id="email" name="email"
									aria-describedby="email" value="${cliente.email}" required>
								<!--
					<div id="emailHelp" class="form-text">We'll never share your email with anyone else.
					</div>
				-->
							</div>
						</div>
						<div class="row">

							<div class="mb-3 form-group col-xl ">
								<label for="telefono" class="form-label">Telefono :</label> <input type="tel"
									class="form-control" id="telefono" name="telefono" aria-describedby="telefono"
									value="${cliente.telefono}"  required>
							</div>
						</div>
						<div class="row">

							<div class="mb-3 form-group col-xl  ">
								<label for="saldo" class="form-label">Saldo :</label> <input type="number"
									class="form-control" id="saldo" name="saldo" aria-describedby="saldo" 
									value="${cliente.saldo}"  required>
							</div>


						</div>
						

					</div>

					<div class="col-4 offset-4 offset-sm-0  col-sm col-md-6 d-flex justify-content-center align-items-center ">
						<div class="container ">
							<div class="row ">
								<div class="col text-center  ">
									<img  class="img-fluid" src="images/logo6.png" width="300" height="150" alt="">

								</div>
							</div>
							
						</div>
					</div>
					
				</div>
				<div class="row">
					<div class="col-md col-lg-6 d-grid gap-2">
						<button type="submit" class="btn btn-primary "><i class="far fa-save"></i> &nbsp; Guardar</button>
					</div>
				</div>
			</form>

		</div>


		</div>




		<!-- Boostrap 5.01 -->

		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
			crossorigin="anonymous"></script>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
			integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
			crossorigin="anonymous"></script>
	</body>

	</html>