# Build X-Wing Squad Builder javascripts and things.
fs               = require 'fs'
path             = require 'path'
{spawn, exec}    = require 'child_process'
CoffeeScript     = require 'iced-coffee-script'
uglify           = require 'uglify-js'

coffeescript_dir = 'coffeescripts'
javascript_dir = 'javascripts'
sass_dir = 'sass'
stylesheet_dir = 'stylesheets'

hamls = [
    'index.haml'
]

task 'build', 'build X-Wing from source', (cb) ->
    for coffee_filename in (path.basename(filename) for filename in fs.readdirSync(coffeescript_dir))
        js_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.js')
        minjs_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.min.js')

        console.log "Compiling #{coffee_filename} ..."
        compiled_js = CoffeeScript.compile fs.readFileSync(path.join(coffeescript_dir, coffee_filename), 'utf-8'),
            runtime: 'window'
        fs.writeFileSync js_filename, compiled_js

        console.log "Minifying #{js_filename} ..."
        uglified_js = uglify.minify js_filename
        fs.writeFileSync minjs_filename, uglified_js.code

    for sass_filename in (path.basename(filename) for filename in fs.readdirSync(sass_dir))
        css_filename = path.join stylesheet_dir, sass_filename.replace(/\.sass$/, '.css')
        console.log "Compiling #{sass_filename} ..."
        sass_proc = spawn 'sass', [ path.join(sass_dir, sass_filename), css_filename ]

    for haml in hamls
        console.log "Compiling #{haml} ..."
        haml_proc = spawn 'haml', [ haml, haml.replace(/\.haml$/, '.html') ]
