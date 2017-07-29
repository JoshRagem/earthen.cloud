# earthen.cloud

A website for my latest post. Powered by simple file templating, [markdown.bash](https://github.com/chadbraunduin/markdown.bash), and [mincss](http://mincss.com/).

### Requirements

you already have these, I'm sure

* `bash`
* `make`
* `sed`

### Optional Requirements

* copy [markdown.sh](https://raw.githubusercontent.com/chadbraunduin/markdown.bash/master/markdown.sh) into `bin/` to render `.md` files, otherwise they will be treated as text

### Local Testing

files are rendered into `objects/index.html` and `objects/error.html`

`node server.js` will serve the html at `0.0.0.0:8080`, to experience the site with css, place [min.css](http://mincss.com/download.html) at `objects/css/min.css`

each page refresh will build the html files
