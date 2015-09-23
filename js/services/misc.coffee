angular.module 'shuttleApp.services'
.factory 'saEncPass', () ->
  (password) ->
    CryptoJS.MD5(password).toString(CryptoJS.enc.Hex)