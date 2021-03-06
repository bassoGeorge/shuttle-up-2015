angular.module 'shuttleApp.controllers', []
.controller 'MainController', ($scope, $aside, $state, saUserCreds, $log) ->

  # Simple function to open the side menu
  $scope.openSideMenu = () ->
    $aside.open(
      templateUrl: 'templates/modals/modal_side_menu.html'
      placement: 'left'
      size: 'sm'
      controller: 'SideMenuController'
    )

  $scope.isLoggedIn = () -> saUserCreds.isLoggedIn()

.controller 'SideMenuController', ($scope, saUserCreds, $state) ->
  $scope.routes = [
    ['Home', 'home', 'home.about'],
    ['Registration', 'register', 'register']
  ]
  $scope.username = () -> saUserCreds.username()
  $scope.logout = () ->
    saUserCreds.logout()
    $state.go 'home.about'
