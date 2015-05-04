 var puerto = "8000";
 dato_de_get = String(document.location).split('=')[1];

 function getInfo($scope, $http, url){
   formData = $scope;
   var valor = null;

  $http.get(url,formData).
    success(function(data) {
      var holahola = data;
      return data; //llega ctm!
    }).
    error(function(data) {
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    });
}
(function() {
  var app = angular.module('app', ['ngRoute','routes','directives','angles'])

  app.controller('app', function() {
    this.products = gems;
  });

  app.controller('LoginController', function ($scope, $http) {
      $scope.submitForm = function() {
        var resultado = get($scope.user, $http, 'http://localhost:'+puerto+'/home/');
        console.log(resultado);
        var formData = {
        username: "",
        password: "",
      };
    }

  });
  
  app.controller('HomeController', function ($http) {
    var resultado = get({'idUsuario':1}, $http, 'http://localhost:'+puerto+'/home/').$promise.then(function(data){
      console.log("-"+resultado);
    });
    
  });

  app.controller('events', function ($scope,$http) {

    this.list = gems;
    /*$.ajax({
      url: "http://localhost:"+puerto+"/eventos/",
      context: document.body
    }).done(function(data) {
      console.log(gems);
      $scope.list = gems;
    }).error(function(){
      alert("asd");
    });*/
    /*$http.get('http://localhost:'+puerto+'/eventos/',{'id':2}).
      success(function(data) {
          $scope.list = data[0].fields;
          console.log($scope.list);
      }).
      error(function(data) {
        // called asynchronously if an error occurs
        // or server returns response with an error status.
      });
    */

  });

  app.controller('chart', function( $scope ) {
    $scope.myChartData = [
        {
            value: 10,
            label : "Liderazgo",
            color:"#8e44ad"
        },
        {
            value : 20,
            label : "Social",
            color : "#E74C3C"
        },
        {
            value : 40,
            label : "Construccion",
            color : "#27AE60"
        },
        {
            value : 120,
            label : "Tiempo",
            color : "#F39C12"
        }
    ];
    //Globals
    $scope.myChartOptions = {
        // Boolean - Whether to animate the chart
        animation: true,
        // Number - Number of animation steps
        animationSteps:60,
        // String - Animation easing effect
        animationEasing: "easeOutQuart",
        // Boolean - If we should show the scale at all
        showScale: true,
        // Boolean - If we want to override with a hard coded scale
        scaleOverride: false,
        // ** Required if scaleOverride is true **
        // Number - The number of steps in a hard coded scale
        scaleSteps: null,
        // Number - The value jump in the hard coded scale
        scaleStepWidth: null,
        // Number - The scale starting value
        scaleStartValue: null,
        // String - Colour of the scale line
        scaleLineColor: "rgba(0,0,0,.1)",
        // Number - Pixel width of the scale line
        scaleLineWidth: 1,
        // Boolean - Whether to show labels on the scale
        scaleShowLabels: true,
        // Interpolated JS string - can access value
        scaleLabel: "<%=label%>",
        // Boolean - Whether the scale should stick to integers, not floats even if drawing space is there
        scaleIntegersOnly: true,
        // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
        scaleBeginAtZero: false,
        // String - Scale label font declaration for the scale label
        scaleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
        // Number - Scale label font size in pixels
        scaleFontSize: 12,
        // String - Scale label font weight style
        scaleFontStyle: "normal",
        // String - Scale label font colour
        scaleFontColor: "#666",
        // Boolean - whether or not the chart should be responsive and resize when the browser does.
        responsive: true,
        // Boolean - Determines whether to draw tooltips on the canvas or not
        showTooltips: true,
        // Array - Array of string names to attach tooltip events
        tooltipEvents: ["mousemove", "touchstart", "touchmove"],
        // String - Tooltip background colour
        tooltipFillColor: "rgba(0,0,0,0.8)",
        // String - Tooltip label font declaration for the scale label
        tooltipFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
        // Number - Tooltip label font size in pixels
        tooltipFontSize: 14,
        // String - Tooltip font weight style
        tooltipFontStyle: "normal",
        // String - Tooltip label font colour
        tooltipFontColor: "#fff",
        // String - Tooltip title font declaration for the scale label
        tooltipTitleFontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
        // Number - Tooltip title font size in pixels
        tooltipTitleFontSize: 14,
        // String - Tooltip title font weight style
        tooltipTitleFontStyle: "bold",
        // String - Tooltip title font colour
        tooltipTitleFontColor: "#fff",
        // Number - pixel width of padding around tooltip text
        tooltipYPadding: 6,
        // Number - pixel width of padding around tooltip text
        tooltipXPadding: 6,
        // Number - Size of the caret on the tooltip
        tooltipCaretSize: 8,
        // Number - Pixel radius of the tooltip border
        tooltipCornerRadius: 6,
        // Number - Pixel offset from point x to tooltip edge
        tooltipXOffset: 10,
        // String - Template string for single tooltips
        tooltipTemplate: "<%= label %>",
        // String - Template string for single tooltips
        multiTooltipTemplate: "<%= value %>",
        // Function - Will fire on animation progression.
        onAnimationProgress: function(){},
        // Function - Will fire on animation completion.
        onAnimationComplete: function(){}
    };
  });


  

  app.controller('eventDetail', function($scope) {
    this.list = gems;
  });

  app.controller('ongDetail', function() {
    this.detail = ong;

  });

  app.controller('user', function() {
    this.userInfo = user;

  });

  app.controller('RatingCtrl', function($scope) {
    $scope.rating = 5;
    $scope.rateFunction = function(rating) {
      //alert('Rating selected - ' + rating);
    };
  });


  var evento_selected;

  var ong = {
    nome:"Un techo para Chile",
    description:"TECHO es una organización presente en Latinoamérica y El Caribe que busca superar la situación de pobreza que viven miles de personas en los asentamientos precarios, a través de la acción conjunta de sus pobladores y jóvenes voluntarios.",
    email:"contacto@techo.cl",
    phone:"+56 2 3423222",
    address:"Pedro de valdivia 2585, Ñuñoa, Santiago, Chile",
    web:"http://www.untechoparachile.cl",
    donations: true
  };

  var user = {
    name:"Sebastian",
    lastName:"Duran",
    skills:[{
        skill : "Contrucción",
        skill : "Accion Social",
        skill : "Liderazgo"
    }],
    rating: 5,
  };

  var ong;
  $.ajax({
      url: "http://localhost:"+puerto+"/ong/",
      context: document.body,
      data:{id:1}
    }).done(function(data) {
      ong = data;
    }).error(function(){
      // alert("asd");
    });

  var user;
  /*$.ajax({
      url: "http://localhost:"+puerto+"/infoextrausers/",
      data: {username:"admin"},
      context: document.body
    }).done(function(data) {
      console.log(gems);
      gems = data;
    }).error(function(){
      // alert("asd");
  });*/

  var gems;
  $.ajax({
      url: "http://localhost:"+puerto+"/eventos/",
      context: document.body
    }).done(function(data) {
      console.log(gems);
      gems = data;
    }).error(function(){
      // alert("asd");
    });
  }
)();
