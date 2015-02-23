module.exports = function(grunt) {

	// 1. All configuration goes here 
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		uglify: {
			build: {
				src: 'static/js/src/phalcon.js',
				dest: 'static/js/phalcon.min.js'
			}
		},
		
		sass: {
			dist: { 
				options: {
					style: 'compact'
				},
				files: {
					'static/css/src/styles.css': 'static/css/src/styles.sass'
				}
			}
		},
		
		jshint: {
			files: ['Gruntfile.js', 'static/js/src/phalcon.js'],
			options: {
				globals: {
					jQuery: true,
					console: true,
					module: true
				}
			}
		},

		imagemin: {
			dynamic: {
				files: [{
					expand: true,
					cwd: 'static/img/src/',
					src: ['**/*.{png,jpg,gif}'],
					dest: 'static/img/'
				}]
			}
		},
		
		cssmin: {
			compress: {
				files: {
					'../public/css/phalcon.min.css': ['static/css/src/styles.css', 'static/css/src/flags.css', 'static/css/src/magnific-popup.css', 'static/css/src/icomoon.css', 'static/css/src/highlight.js.css']
				}
			}
		},

		watch: {
			options: {
				livereload: true,
			},
			css: {
				files: 'static/css/src/*.sass',
				tasks: ['sass'],
			    options: {
			      livereload: true,
			    }
			},
			cssmin: {
				files: 'static/css/src/*.css',
				tasks: ['cssmin'],
			    options: {
			      livereload: true,
			    }
			},
			imagemin: {
				files: ['static/img/src/*', '!static/img/src/heading.png'],
				tasks: ['imagemin'],
			},
			hints: {
				files: ['static/js/src/*.js'],
				tasks: ['jshint'],
				options: {
					livereload: true,
					spawn: false,
				},
			},
			scripts: {
				files: ['static/js/src/*.js'],
				tasks: ['uglify'],
				options: {
	   			    livereload: true,
					spawn: false,
				},
			}
		},
		
		
	});
	
	// 2. Where we tell Grunt we plan to use this plug-in.
	grunt.loadNpmTasks('grunt-contrib-concat');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-imagemin');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	
	//34. Where we tell Grunt what to do when we type "grunt" into the terminal.
	grunt.registerTask('default', ['jshint', 'uglify', 'sass', 'cssmin', 'watch']);

};
