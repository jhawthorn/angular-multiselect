gulp = require('gulp')
gutil = require('gulp-util')

coffee = require('gulp-coffee')
gulp.task 'coffee', ->
  gulp.src('src/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./dist/'))


webserver = require('gulp-webserver')
gulp.task 'serve', ->
  gulp.src('demo')
    .pipe webserver
      livereload: true
      open: true


gulp.task('default', ['coffee'])
