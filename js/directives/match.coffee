angular.module 'shuttleApp.directives', []
.directive 'saMatch', () ->
  restrict: 'E'
  templateUrl: 'templates/directives/dir_match.html'
  controller: ($scope) ->
    $scope.player_list = [
      {name: "Anish George", parish: "Defence Colony"},
      {name: "Jibin George", parish: "Defence Colony"},
      {name: "Vineet Topo", parish: "Defence Colony"},
      {name: "Bhaskaran Vijayan", parish: "Sunlight Colony"},
      {name: "Arushi someone", parish: "Sunlight Colony"},
      {name: "Crazy other chick", parish: "Sunlight Colony"},
      {name: "Abhilash Verghese", parish: "Okhla"},
      {name: "Stuti crazy", parish: "Okhla"},
    ]

    $scope.filtered = (player) ->
      # $scope.player_list
      # _.reject($scope.player_list, (obj) -> obj.name == name)
      _.without($scope.player_list, player)
