// Generated by CoffeeScript 1.9.3
(function() {
  angular.module('shuttleApp.controllers', []).controller('MainController', function($scope, $aside, $state, saHttp, toastr) {
    $scope.openSideMenu = function() {
      return $aside.open({
        templateUrl: 'templates/modals/modal_side_menu.html',
        placement: 'left',
        size: 'sm',
        controller: 'SideMenuController'
      });
    };
    $scope.auth = {
      isLoggedIn: false
    };
    return $scope.logout = function() {
      $scope.auth.username = '';
      $scope.auth.isLoggedIn = false;
      saHttp.setApiKey('');
      return toastr.info("Logged out successfully");
    };
  }).controller('SideMenuController', function($scope) {
    return $scope.routes = [['Home', 'home', 'home.about'], ['Registration', 'register', 'register']];
  });

}).call(this);

//# sourceMappingURL=main.js.map
