angular.module 'shuttleApp.services'
.factory 'saEncPass', () ->
  (password) ->
    CryptoJS.MD5(password).toString(CryptoJS.enc.Hex)
.factory 'saHttp', ($http) ->
  apiKey = ''
  return {
  setApiKey: (key) ->
    apiKey = key

  get: (url) ->
    if apiKey
      if '?' in url
        sep = '&'
      else
        sep = '?'
      url += sep + 'api_key=' + apiKey
    $http.get url

  post: (url, data) ->
    if apiKey
      data.api_key = apiKey
    $http.post url, data
  }
