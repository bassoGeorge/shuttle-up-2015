angular.module 'shuttleApp.controllers', []
.controller 'MainController', ($scope, $aside, $state) ->

  # Simple function to open the side menu
  $scope.openSideMenu = () ->
    $aside.open(
      templateUrl: 'templates/modals/modal_side_menu.html'
      placement: 'left'
      size: 'sm'
    )

  $scope.isLoggedIn = true

  $scope.isState = (st) ->
    $state.is(st)
