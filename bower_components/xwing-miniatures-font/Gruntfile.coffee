module.exports = (grunt) ->
  grunt.initConfig
    sass:
      compile:
        expand: true
        cwd: 'sass/'
        src: ['*.sass']
        dest: 'dist/'
        ext: '.css'

    jade:
      compile:
        files:
          "index.html": "index.jade"

  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-jade'

  grunt.registerTask 'default', [ 'sass', 'jade' ]
