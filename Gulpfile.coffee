gulp = require('gulp')
gutil = require('gulp-util')


coffeelint = require('gulp-coffeelint')
gulp.task 'lint', ->
    gulp.src('src/*.coffee')
        .pipe(coffeelint())
        .pipe(coffeelint.reporter())


coffee = require('gulp-coffee')
gulp.task 'coffee', ->
  gulp.src('src/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./dist/'))


gulp.task 'build', ['lint', 'coffee']


webserver = require('gulp-webserver')
gulp.task 'serve', ->
  gulp.src([
    'bower_components'
    'demo'
    'dist'
  ])
    .pipe webserver
      livereload: true
      open: true


gulp.task 'watch', ->
  gulp.watch('src/*.coffee', ['coffee'])


gulp.task('default', ['build', 'serve', 'watch']);
