<?
	print( 'HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n' )
?>

<html ng-app>
	<head>
		<meta charset="utf8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="/css/bootstrap.css" media="screen" />
	</head>
	<body>
		<div class="container">
			<div class="navbar" ng-controller="NavListCtrl">
				<ul class="nav">
					<li ng-repeat="nav in navs">
						<a href="{{ nav.url }}">{{ nav.name }}</a>
					</li>
				</ul>
			</div>
		</div>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/angular.min.js"></script>
		<script src="/js/templates/nav.js"></script>
	</body>
</html>
