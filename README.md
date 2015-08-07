# RSS Parser Promise

[![Circle CI](https://circleci.com/gh/cakecatz/rss-parser-promise.svg?style=svg)](https://circleci.com/gh/cakecatz/rss-parser-promise)

> RSS feed parser

## Usage
```
var rssParser = require('rss-parser-promise');

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