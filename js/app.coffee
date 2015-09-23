angular.module('shuttleApp',
  [
    'ui.bootstrap', 'ui.router', 'ngAside', 'ngAnimate', 'toastr',
    'shuttleApp.controllers', 'shuttleApp.services'
  ]
).config ($stateProvider, toastrConfig, saApiEndpointsProvider) ->
  # Configure local or external api
  # saApiEndpointsProvider.useLocalHost(true)

  # Configure the global toastr defaults
  angular.extend(toastrConfig,
    autoDismiss: true
    maxOpened: 1
    # positionClass: 'toast-bottom-full-width'
    positionClass: 'toast-top-right'
    timeOut: 2000
    extendedTimeOut: 0
  )

  # States
  $stateProvider
  .state('test',
    templateUrl: 'templates/views/view_test.html'
    controller: 'TestController'
    url: '/test'
  ).state('home',
    templateUrl: 'templates/views/view_home.html'
    controller: 'HomeViewController'
    abstract: true
    url: '/home'
  ).state('home.about',
    templateUrl: 'templates/views/view_home_about.html'
  ).state('home.rules',
    templateUrl: 'templates/views/view_home_rules.html'
  ).state('register',
    templateUrl: 'templates/views/view_register.html'
    url: '/register'
  ).state('login',
    templateUrl: 'templates/views/view_login.html'
    controller: 'LoginController'
    url: '/login'
  )
.run ($state) ->
  $state.go 'home.rules'

