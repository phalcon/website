module.exports = function(grunt) {

	// 1. All configuration goes here 
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		uglify: {
			build: {
				src: 'js/src/phalcon.js',
				dest: 'js/phalcon.min.js'
			}
		},
		
		sass: {
			dist: { 
				options: {
					style: 'compact'
				},
				files: {
					'css/src/styles.css': 'css/src/styles.sass'
				}
			}
		},
		
		jshint: {
			files: ['Gruntfile.js', 'js/src/phalcon.js'],
			options: {
				globals: {
					jQuery: true,
					console: true,
					module: true
				}
			}
		},

		/*
		imagemin: {
			dynamic: {
				files: [{
					expand: true,
					cwd: 'img/src/',
					src: ['** /*.{png,jpg,gif}'],
					dest: 'img/'
				}]
			}
		},
		*/
		
		cssmin: {
			compress: {
				files: {
					'../public/css/phalcon.min.css': ['css/src/styles.css', 'css/src/flags.css', 'css/src/magnific-popup.css', 'css/src/icomoon.css', 'css/src/highlight.js.css']
				}
			}
		},

		watch: {
			options: {
				livereload: true
			},
			css: {
				files: 'css/src/*.sass',
				tasks: ['sass'],
			    options: {
			      livereload: true
			    }
			},
			cssmin: {
				files: 'css/src/*.css',
				tasks: ['cssmin'],
			    options: {
			      livereload: true
			    }
			},
			imagemin: {
				files: ['img/src/*', '!img/src/heading.png'],
				tasks: ['imagemin']
			},
			hints: {
				files: ['js/src/*.js'],
				tasks: ['jshint'],
				options: {
					livereload: true,
					spawn: false,
				}
			},
			scripts: {
				files: ['js/src/*.js'],
				tasks: ['uglify'],
				options: {
	   			    livereload: true,
					spawn: false,
				}
			}
		}
	});
	
	// 2. Where we tell Grunt we plan to use this plug-in.
	grunt.loadNpmTasks('grunt-contrib-concat');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	// grunt.loadNpmTasks('grunt-contrib-imagemin');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	
	//3. Where we tell Grunt what to do when we type "grunt" into the terminal.
	grunt.registerTask('default', ['jshint', 'uglify', 'sass', 'cssmin', 'watch']);
};
