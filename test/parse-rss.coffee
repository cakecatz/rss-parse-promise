assert = require('chai').assert
rssParse = require '../index.js'
server = require('./server')
server.run()

describe 'RSS feed Parser', ->
  it 'parse valid rss feed', ->
    rssParse("http://localhost:#{server.port}/valid-rss").then (value) ->
      assert(value)

  it 'fire error', ->
    rssParse("http://localhost:#{server.port}").catch (error) ->
      assert(error)
