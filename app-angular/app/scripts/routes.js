(function() {
  var app = angular.module('routes', [])

   //ejemplo de rutas
   .config(function($routeProvider, $locationProvider) {
     $routeProvider
       .when('/', {
         templateUrl : '../views/home.html',
         controller : "events",
         controllerAs : "event"
       })
       .when('/event', {
         templateUrl : '../views/event.html',
       })       
       .when('/ong', {
         templateUrl : '../views/ong.html',
       }) 
       .when('/user', {
         templateUrl : '../views/user.html',
       }) 
       .when('/register', {
         templateUrl : '../views/register.html',
       })
       .when('/login', {
         templateUrl : '../views/login.html',
       })
       .when('/ong/:ong', {
         templateUrl : '../views/ong.html',
         controller: 'ONGController',
         controllerAs: 'ong'
       }) 
      //use the HTML5 History API
     $locationProvider.html5Mode(true);
   });
})();