// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.controllers', []).controller('MainController', function($scope, $aside, $state, saUserCreds, $log) {
    $scope.openSideMenu = function() {
      return $aside.open({
        templateUrl: 'templates/modals/modal_side_menu.html',
        placement: 'left',
        size: 'sm',
        controller: 'SideMenuController'
      });
    };
    return $scope.isLoggedIn = function() {
      return saUserCreds.isLoggedIn();
    };
  }).controller('SideMenuController', function($scope, saUserCreds, $state) {
    $scope.routes = [['Home', 'home', 'home.about'], ['Registration', 'register', 'register']];
    $scope.username = function() {
      return saUserCreds.username();
    };
    return $scope.logout = function() {
      saUserCreds.logout();
      return $state.go('home.about');
    };
  });

}).call(this);

//# sourceMappingURL=main.js.map
