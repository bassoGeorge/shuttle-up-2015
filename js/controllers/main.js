// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.controllers', []).controller('MainController', function($scope, $aside, $state, saUserCreds) {
    $scope.openSideMenu = function() {
      return $aside.open({
        templateUrl: 'templates/modals/modal_side_menu.html',
        placement: 'left',
        size: 'sm',
        controller: 'SideMenuController'
      });
    };
    $scope.isLoggedIn = function() {
      return saUserCreds.isLoggedIn();
    };
    $scope.username = function() {
      return saUserCreds.username();
    };
    return $scope.logout = function() {
      return saUserCreds.logout();
    };
  }).controller('SideMenuController', function($scope) {
    return $scope.routes = [['Home', 'home', 'home.about'], ['Registration', 'register', 'register']];
  });

}).call(this);

//# sourceMappingURL=main.js.map
