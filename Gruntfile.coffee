module.exports = (grunt) ->
    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                    join: true
                    runtime: 'window'
                    sourceMap: true
                files:
                    'app/javascripts/xwing.js': ['coffeescripts/*.coffee']
        sass:
            compile:
                expand: true
                cwd: 'sass/'
                src: ['*.sass']
                dest: 'app/stylesheets/'
                ext: '.css'
        jade:
            compile:
                expand: true
                cwd: 'jade/'
                src: ['**/*.jade']
                dest: 'app/'
                ext: '.html'
        bower:
            install:
                options:
                    targetDir: 'app/bower_components'
        uglify:
            compile:
                options:
                    sourceMap: true
                    sourceMapIn: 'app/javascripts/xwing.js.map'
                files:
                    'app/javascripts/xwing.min.js': 'app/javascripts/xwing.js'

    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-jade'
    grunt.loadNpmTasks 'grunt-contrib-sass'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-iced-coffee'

    grunt.registerTask 'default', [
        'bower'
        'coffee'
        'sass'
        'jade'
        'uglify'
    ]
