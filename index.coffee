FeedParser = require 'feedparser'
request = require 'request'
Promise = require('es6-promise').Promise

module.exports = rssParse = (url) ->
  new Promise (resolve, reject) ->
    items = []
    req = request url
    feedparser = new FeedParser()

    req.on 'error', (error) ->
      reject error

    req.on 'response', (res) ->
      stream = this

      reject 'Bad status code' if res.statusCode isnt 200

      stream.pipe feedparser

    feedparser.on 'error', (error) ->
      reject error

    feedparser.on 'readable', ->
      stream = this

      while item = stream.read()
        items.push item

    feedparser.on 'end', ->
      resolve items
