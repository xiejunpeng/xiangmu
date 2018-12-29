var gulp = require('gulp');
//复制主页
gulp.task('copyindex',function(){
    // pipe管道的意思
    // 将src下的index.html文件复制通过poipe输送到dist文件夹下
    return gulp.src('src/index.html').pipe(gulp.dest('dist'));
});
//压缩js
// var rename=require('gulp-rename'); // babel src/js/common.js -o dist/js
var uglify=require('gulp-uglify');
gulp.task('uglify',function(){
    // babel src/js --out-dir dist/minJs ES6转ES5
    /**7.将es6转成es5

安装babel：

全局安装babel：npm install -g babel-cli
本地安装：npm install --save-dev babel-preset-es2015 babel-cli 
把.babelrc文件拷贝到根目录下，写指令开始转es5

//es6转成es5指令：
babel es6文件路径 -o 转成功后保存的路径

babel src/js/es6.js -o dist/js/es5.js */ 
    return gulp.src('src/js/*.js')
                 .pipe(uglify())
                 .pipe(gulp.dest('dist/minJs'));
  });
  

//压缩css
var cssmin=require('gulp-cssmin');
gulp.task('cssmin',function(){
    return gulp.src('src/css/*.css')
                 .pipe(cssmin())
                 .pipe(gulp.dest('dist/css'));
  });
 
//压缩图片
var imagemin=require('gulp-imagemin');

gulp.task('imagemin',function(){
  return gulp.src('src/img/shouyeimg/*')
  			 .pipe(imagemin())  //该管道进行压缩
  			 .pipe(gulp.dest('dist/img/shouyeimg'));
}); 

//复制api
gulp.task('copyapi',function(){
    return gulp.src('src/api/*.php').pipe(gulp.dest('dist/api'));
});
//复制lib
gulp.task('copylib',function(){
    return gulp.src('src/lib/*.js').pipe(gulp.dest('dist/lib'));
});


