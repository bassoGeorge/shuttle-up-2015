// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp', ['ui.bootstrap', 'ui.router', 'ngAside', 'ngAnimate', 'toastr', 'shuttleApp.controllers']).config(function($stateProvider, toastrConfig) {
    angular.extend(toastrConfig, {
      autoDismiss: true,
      maxOpened: 1,
      positionClass: 'toast-bottom-full-width',
      timeOut: 3000,
      extendedTimeOut: 1000
    });
    return $stateProvider.state('test', {
      templateUrl: 'templates/views/view_test.html',
      controller: 'TestController',
      url: '/test'
    });
  });

}).call(this);

//# sourceMappingURL=app.js.map
