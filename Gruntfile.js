module.exports = function(grunt) {
    grunt.initConfig({
<<<<<<< HEAD
<<<<<<< HEAD
        pkg: grunt.file.readJSON('package.json'),		
=======
        pkg: grunt.file.readJSON('package.json'),
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
        pkg: grunt.file.readJSON('package.json'),
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
        compass: {
            dist: {
                options: {
                    sassDir: 'styles',
                    cssDir: 'assets/css'
                }
            }
        },
        watch: {
            compass: {
                files: ['styles/**/*.scss'],
                tasks: ['compass:dist']
            },
            copy: {
                files: ['scripts/**/*.js', 'styles/**/*.css'],
                tasks: ['copy', 'concatfest']
            }
        },
        copy: {
            dist: {
                files: [
                    {expand: true, cwd: 'scripts', src: ['**/*', '!**/_*.js', '!**/*.fest'], dest: 'assets/js'},
                    {expand: true, cwd: 'styles', src: ['**/*.css'], dest: 'assets/css'}
                ]
            }
        },
        concatfest: {
            dist: {
                src: "scripts/**/*.fest",
                srcRoot: "scripts/",
                dest: "assets/js"
            }
        }
    })

    grunt.loadNpmTasks('grunt-contrib-jshint')
    grunt.loadNpmTasks('grunt-contrib-uglify')
    grunt.loadNpmTasks('grunt-contrib-compass')
<<<<<<< HEAD
<<<<<<< HEAD
    grunt.loadNpmTasks('grunt-contrib-watch')
    grunt.loadNpmTasks('grunt-contrib-copy')
    grunt.loadNpmTasks('grunt-manifest-concat')

=======
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
    grunt.loadNpmTasks('grunt-contrib-copy')
	grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-manifest-concat')


<<<<<<< HEAD
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
    grunt.registerTask('default', ['compass:dist', 'copy:dist', 'concatfest'])
    grunt.registerTask('release', ['compass:dist', 'copy:dist', 'concatfest'])

}