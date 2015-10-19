# RSS Parser Promise

[![Circle CI](https://circleci.com/gh/cakecatz/rss-parse-promise.svg?style=svg)](https://circleci.com/gh/cakecatz/rss-parse-promise)

> RSS feed parser

## Usage
```
var rssParser = require('rss-parse-promise');

rssParser('http://www.echojs.com/rss')
  .then((value) => {
    # write your code here 
  })
  .catch((error) => {
    console.err(error);
  })
```

## License
[MIT License](https://tldrlegal.com/license/mit-license)
