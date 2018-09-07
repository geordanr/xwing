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
                cwd: 'stylesheets/'
                src: ['*.sass']
                dest: 'app/stylesheets/'
                ext: '.css'
        pug:
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
                    cleanTargetDir: true
                    cleanBowerDir: true
                    layout: 'byComponent'
        uglify:
            compile:
                options:
                    sourceMap: true
                    sourceMapIn: 'app/javascripts/xwing.js.map'
                files:
                    'app/javascripts/xwing.min.js': 'app/javascripts/xwing.js'
        copy:
            main:
                expand: true
                src: [
                    'fonts/**'
                    'bootstrap/**'
                    'select2-3.4.0/**'
                    'images/**'
                    'selectnav/**'
                ]
                dest: 'app/'
            gh_pages:
                expand: true
                cwd: 'app'
                src: '**'
                dest: '../xwing_page'

    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-contrib-pug'
    grunt.loadNpmTasks 'grunt-sass'
    grunt.loadNpmTasks 'grunt-contrib-uglify'
    grunt.loadNpmTasks 'grunt-iced-coffee'

    grunt.registerTask 'default', [
        'bower'
        'coffee'
        'sass'
        'pug'
        'uglify'
        'copy:main'
    ]

    grunt.registerTask 'gh_pages', [
        'copy:gh_pages'
    ]
