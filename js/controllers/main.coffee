angular.module 'shuttleApp.controllers', []
.controller 'MainController', ($scope, $aside, $state) ->

  # Simple function to open the side menu
  $scope.openSideMenu = () ->
    $aside.open(
      templateUrl: 'templates/modals/modal_side_menu.html'
      placement: 'left'
      size: 'sm'
      controller: 'SideMenuController'
    )

  $scope.auth =
    isLoggedIn: true

.controller 'SideMenuController', ($scope) ->
  $scope.routes = [
    ['Home', 'home', 'home.about'],
    ['Registration', 'register', 'register']
  ]
