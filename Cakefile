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

String.prototype.endswith = (suffix) ->
    this.indexOf(suffix) == (this.length - suffix.length)

hamls = [
    'index.haml'
    'privacy.haml'
]

task 'build', 'build X-Wing from source', (cb) ->
    for coffee_filename in (path.basename(filename) for filename in fs.readdirSync(coffeescript_dir) when filename.endswith('.coffee'))
        js_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.js')
        minjs_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.min.js')
        map_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.map')
        minmap_filename = path.join javascript_dir, coffee_filename.replace(/\.coffee$/, '.min.map')

        console.log "Compiling #{coffee_filename} ..."
        {js, v3SourceMap, sourceMap} = CoffeeScript.compile fs.readFileSync(path.join(coffeescript_dir, coffee_filename), {encoding: 'utf-8'}),
            runtime: 'window'
            sourceMap: true
            filename: path.join(coffeescript_dir, coffee_filename)
        # None of the linkages exist, so...
        fs.writeFileSync js_filename, """#{js}\n//@ sourceMappingURL=#{path.basename map_filename}"""
        sourceMap_obj = JSON.parse v3SourceMap
        sourceMap_obj.file = coffee_filename
        sourceMap_obj.sources = [ coffee_filename ]
        sourceMap_obj.sourceRoot = '../coffeescripts'
        fs.writeFileSync map_filename, JSON.stringify(sourceMap_obj)

        console.log "Minifying #{js_filename} ..."
        uglified_js = uglify.minify js_filename,
            inSourceMap: map_filename
            outSourceMap: path.basename minjs_filename
        fs.writeFileSync minjs_filename, """#{uglified_js.code}\n//@ sourceMappingURL=#{path.basename minmap_filename}"""
        fs.writeFileSync minmap_filename, uglified_js.map

    for sass_filename in (path.basename(filename) for filename in fs.readdirSync(sass_dir) when filename.endswith('.sass'))
        css_filename = path.join stylesheet_dir, sass_filename.replace(/\.sass$/, '.css')
        console.log "Compiling #{sass_filename} ..."
        sass_proc = spawn 'sass', [ path.join(sass_dir, sass_filename), css_filename ]

    for haml in hamls
        console.log "Compiling #{haml} ..."
        haml_proc = spawn 'haml', [ haml, haml.replace(/\.haml$/, '.html') ]
        do (haml) ->
            haml_proc.stderr.on 'data', (data) ->
                console.log "Error processing #{haml}:\n#{data}"
