
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">

:root {
	--primary-color: #d3dde1;
	--accent-color: #2582ce;

	--text-color: #263238;
	--body-color: white;
	--main-font: 'roboto';
	--font-bold: 700;
	--font-regular: 400;
}
* { box-sizing: border-box }

main{ 
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 7%;
}
h1 { font-weight: var(--font-bold) }
input, 
button {
	border: none;
	background: none;
	outline: 0;
	
}
button {cursor: pointer}
.SearchBox-input::placeholder {
 color:rgb(0, 0, 0);
	opacity: .6;
}
/* Chrome, Opera ySafari */
.SearchBox-input::-webkit-input-placeholder {
  color: rgb(0, 0, 0);
}
/* Firefox 19+ */
.SearchBox-input::-moz-placeholder {
  color: rgb(0, 0, 0);
}
/* IE 10+ y Edge */
.SearchBox-input:-ms-input-placeholder {
  color: rgb(0, 0, 0);
}
/* Firefox 18- */
#formGroupExampleInput:-moz-placeholder {
  color: rgb(0, 0, 0);
}
.SearchBox {
	--height: 4em;
	display: flex;
	border-radius: var(--height);
	background-color: var(--primary-color);
	height: var(--height);
}
	.SearchBox:hover .SearchBox-input {
		padding-left: 2em;
		padding-right: 1em;
		width: 400px;
	}
	.SearchBox-input {
		width: 0;
		font-size: 1.2em;
		color: #000000;
		transition: .45s;
	}
	.SearchBox-button {
		display: flex;
		border-radius: 50%;
		width: var(--height);
		height: var(--height);
		background-color: var(--accent-color);
		transition: .3s;
	}
	.SearchBox-button:active  {
		transform: scale(.85);
	}
	.SearchBox-icon {
		margin: auto;
		color: #fff;
	}


@media screen and (min-width: 400px){
	.SearchBox:hover .SearchBox-input {
		width: 700px;
	}
}
</style>
</head>
<body>
<main>
	<h1>Search Parking Location for _______ </h1>
	
	<div class="SearchBox">
		<input type="text" class="SearchBox-input" placeholder="Search Location">
	
			<button class="SearchBox-button">
				<i class="SearchBox-icon  material-icons">search</i>
			</button>
		
	</div>
	
</main>



<table border ="2" class="table">
<tr class="thead-dark">
<th>Serial no. </th>
<th>Name</th>
<th>Vehicle</th>
<th> --</th>
<th> --</th>
<th> --</th>
<th> --</th>
<th> --</th>
<th> --</th>
<th>--</th>
<th>--</th>

</tr>

</table>

</div>

</body>
</html>