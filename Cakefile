# Build X-Wing Squad Builder javascripts and things.
fs               = require 'fs'
{spawn, exec}    = require 'child_process'
CoffeeScript     = require 'iced-coffee-script'
uglify           = require 'uglify-js'

coffeescripts = [
    'xwing.coffee'
    'cards.coffee'
]

hamls = [
    'index.haml'
]

sasses = [
    'xwing.sass'
    'xwing-print.sass'
]

task 'build', 'build X-Wing from source', (cb) ->
        for coffee_filename in coffeescripts
            js_filename = coffee_filename.replace /\.coffee$/, '.js'
            minjs_filename = coffee_filename.replace /\.coffee$/, '.min.js'

            console.log "Compiling #{coffee_filename} ..."
            compiled_js = CoffeeScript.compile fs.readFileSync(coffee_filename, 'utf-8'),
                runtime: 'window'
            fs.writeFileSync js_filename, compiled_js

            console.log "Minifying #{js_filename} ..."
            uglified_js = uglify.minify js_filename
            fs.writeFileSync minjs_filename, uglified_js.code

        for haml in hamls
            console.log "Compiling #{haml} ..."
            haml_proc = spawn 'haml', [ haml, haml.replace(/\.haml$/, '.html') ]

        for sass in sasses
            console.log "Compiling #{sass} ..."
            sass_proc = spawn 'sass', [ sass, sass.replace(/\.sass$/, '.css') ]
