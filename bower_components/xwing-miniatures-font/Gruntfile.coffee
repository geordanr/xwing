module.exports = (grunt) ->
  grunt.initConfig
    sass:
      compile:
        expand: true
        cwd: 'sass/'
        src: ['*.sass']
        dest: 'dist/'
        ext: '.css'

  grunt.loadNpmTasks 'grunt-sass'

  grunt.registerTask 'default', [ 'sass' ]
