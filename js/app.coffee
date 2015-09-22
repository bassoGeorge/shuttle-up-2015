angular.module('shuttleApp',
  [
    'ui.bootstrap', 'ui.router', 'ngAside', 'ngAnimate', 'toastr',
    'shuttleApp.controllers'
  ]
).config ($stateProvider, toastrConfig) ->
  # Configure the global toastr defaults
  angular.extend(toastrConfig,
    autoDismiss: true
    maxOpened: 1
    positionClass: 'toast-bottom-full-width'
    timeOut: 3000
    extendedTimeOut: 1000
  )

  # States
  $stateProvider
  .state('test',
    templateUrl: 'templates/views/view_test.html'
    controller: 'TestController'
    url: '/test'
  )

