angular.module 'shuttleApp.controllers'
.controller 'LoginController', ($scope, saHttp, saApiEndpoints, saEncPass, toastr, $state) ->

  $scope.submit = () ->
    pass = saEncPass($scope.auth.password)
    $scope.auth.password = ''

    saHttp.post(saApiEndpoints.login,
      username: $scope.auth.username
      password: pass
    ).success (d) ->
      if d.success
        $scope.auth.isLoggedIn = true
        saHttp.setApiKey(d.data)
        $state.go 'home.about'
        toastr.success("Welcome #{$scope.auth.username}. You are successfully logged in as Administrator")
      else
        toastr.error(d.reason || d.error)