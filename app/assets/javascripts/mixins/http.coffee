@Http =

  get: (url, options = {}) ->
    request = new XMLHttpRequest()
    request.open('GET', url, true)

    request.onload = ->
      response = ->
        if Http.isJsonResponse(request) then JSON.parse(request.responseText) else request.responseText

      if request.status >= 200 && request.status < 400
        options.success?(response())
      else
        console.error("Server responses with error for GET: #{url}")

    request.onerror = ->
      console.error("Error during GET: #{url}")

    request.send()


  isJsonResponse: (request) ->
    /application\/json/.test(request.getResponseHeader('Content-Type'))
