<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">


 



  <title>News Talk</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <script src="js/angular.min.js"></script>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

</head>

<body ng-app='myapp'>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=425440361275792&autoLogAppEvents=1"></script>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.html">News Talk</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Mobile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Gadgets</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Business</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="">Apps</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="">Smart Life</a>
            </li>
          </ul>
        </div>
      </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container" ng-controller="userCtrl">
      <div class="row" ng-repeat="news in news">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h1> {{news.newstitle}}</h1>
          
            <span class="meta">Posted by
              <a href="#">News Talk</a>
              on {{news.updated_at}}</span>


              
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
      <div class="container" ng-controller="userCtrl">
          <div class="row" ng-repeat="news in news">
        <div class="col-lg-8 col-md-10 mx-auto">
          <p>{{news.description}}</p>
          <div class="fb-share-button" data-href="http://tea-trader.co.uk/techneo" data-layout="button_count" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Ftea-trader.co.uk%2Ftechneo&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Share</a></div>
        </div>
      </div>
    </div>
  </article>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
        </div>
      </div>
    </div>
  </footer>
 <!-- Angular JS for fetching Data -->
 <?php 
 $id = $_GET['id'];
 ?>
 <script type="text/javascript">

  var fetch = angular.module('myapp', []);
 
fetch.controller('userCtrl', ['$scope', '$http', function ($scope, $http) {
$http({
 method: 'get',
 url: 'fetchData.php?id=<?php echo $id; ?>'
}).then(function successCallback(response) {
 // Store response data
 
 $scope.news = response.data;
 
});
}]);
</script>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>

</html>
