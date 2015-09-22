angular.module 'shuttleApp.controllers', []
.controller 'MainController', ($scope, $aside) ->

  # Simple function to open the side menu
  $scope.openSideMenu = () ->
    $aside.open(
      templateUrl: 'templates/modals/modal_side_menu.html'
      placement: 'left'
      size: 'sm'
    )

  $scope.isLoggedIn = false
