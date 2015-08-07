http = require 'http'
url = require 'url'
RSS = require 'rss'
SERVER_PORT = 47205

server = http.createServer (req, res) ->
  queryData = url.parse(req.url, true)
  switch queryData.path
    when '/valid-rss'
      feed = new RSS
        title: 'title',
        description: 'description',
        feed_url: 'http://example.com/rss.xml',
        site_url: 'http://example.com',
        image_url: 'http://example.com/icon.png',
        docs: 'http://example.com/rss/docs.html',
        managingEditor: 'Dylan Greene',
        webMaster: 'Dylan Greene',
        copyright: '2013 Dylan Greene',
        language: 'en',
        categories: ['Category 1','Category 2','Category 3'],
        pubDate: 'May 20, 2012 04:00:00 GMT',
        ttl: '60',

      feed.item
        title:  'item title',
        description: 'use this for the content. It can include html.'
        url: 'http://example.com/article4?this&that',
        guid: '1123'
        categories: ['Category 1','Category 2','Category 3','Category 4']
        author: 'Guest Author'
        date: 'May 27, 2012'
        lat: 33.417974
        long: -111.933231

      res.writeHead 200, 'Content-Type': 'text/xml;charset=utf-8'
      res.end feed.xml()
      
    else
      res.writeHead 200, 'Content-Type': 'text/xml;charset=utf-8'
      res.end 'hello'


module.exports =
  port: SERVER_PORT
  run: ->
    server.listen 47205, '0.0.0.0'
    console.log "Server running at 0.0.0.0:#{SERVER_PORT}"

