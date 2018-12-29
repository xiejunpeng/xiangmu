window.onload=function(){
    // console.log(123)
    var phonenum=document.querySelector('.phonenum');
    var phonenum1=document.querySelector('.phonenum1'); 
    var isok1=false;

    //验证用户名是否存在
    phonenum.onblur=function(){
        var val=phonenum.value.trim();  
        if(val){ //第一层非空验证  如果通过则执行第二层代码
            if(checkReg.tel(val)){  //第二层正则验证  1)准备连接php的网址  2)做data带数据过去  3)然后通接过ajax连
                var url=`../api/checkname.php`;  //连接php
                var data=`use=${val}`;   //带数先要给一个名字use这个数据,再赋值给data
                ajax('GET',url,data,function(str){   //老师封装好的函数 1)参数1请求方式  2)参数2连接网址  3)参数3网址?带的参数  4)参数4回调函数 
                    console.log(str);  //测试是否接收到php传回来的数据
                    if(str.trim() =='yes'){
                        phonenum1.innerHTML='该用户名可以注册';
                        phonenum1.style.color='green';
                        isok1=true;
                    }else{
                        phonenum1.innerHTML='用户太受欢迎了';
                        phonenum1.style.color='red';
                    }
                })
            }
        }else{
            phonenum1.innerHTML='用户名不符合规则';
            phonenum1.style.color='red';
        }
        
    }

    //滑动条
    var inner = document.getElementsByClassName('inner')[0];
    var outer=document.querySelector('#outer');
    var flex = document.getElementsByClassName('flex_box')[0];
    var span = outer.getElementsByTagName('span')[0];
    var isok2=false;
    inner.onmousedown = function(e) {
    // console.log('sss');
        var e_x = e.offsetX;
        //鼠标按下然后移动
        document.onmousemove = function(e) {
            var x = e.clientX - outer.offsetLeft - e_x;
            var max = outer.offsetWidth - inner.offsetWidth;
            if(x < 0) {
                x = 0;
            }
            if(x >= max) {
                x = max;
            }

            inner.style.left = x + 'px';
            flex.style.width = x + 'px';
            if(x == max) { //如果拖动到底
                span.className = 'pass';
                span.innerHTML = '验证通过!';
                inner.innerHTML = "&radic;";
                isok2 = true;
    //inner.onmousedown = null;
                document.onmousemove = null;
            }
        }
        //鼠标松开
        document.onmouseup = function() {
            if(isok2) {
                return;
            } else {
                inner.style.transition = 'left 0s linear';
                inner.style.left = 0;
                flex.style.transition = 'width 0s linear';
                flex.style.width = 0;
            }
            document.onmousemove = null;
        }
    }

    //随机验证码
        //随机验证码
        
    var suiji=document.querySelector('.suiji');
    var suijiyanz=document.querySelector('.suijiyanz');
    var suijiyanztishi=document.querySelector('.suijiyanztishi')
    var isok3=false;
    
    
    suijiyanz.onclick=function(){
            suijiyanz.innerHTML=randomNum();
        }
    //封装一个函数生成随机数
            function randomNum(){
                var num='';
                for(var i=0;i<4;i++){
                    num+=parseInt(Math.random()*10);//0-9之间的随机数
                }
                return num;
            }
    
    suiji.onblur=function(){
        var val=suiji.value.trim();
        var spa=suijiyanz.innerText;
        if(val){
            if(val==spa){
                isok3=true;
                suijiyanztishi.innerHTML='您输入的验证码正确';
                suijiyanztishi.style.color='green';
            }else{
                suijiyanztishi.innerHTML='请您输入正确的验证码';
                suijiyanztishi.style.color='red';
            }
        }
    }

    //密码的正则
    var pass=document.querySelector('.pass');
    var mima3=document.querySelector('.mima3')
    var isok4=false;
        pass.onblur=function(){
            var val=pass.value.trim();
            if(val){
                //非空
                if(checkReg.psweasy(val)){
                    mima3.innerHTML='密码格式正确';
                    mima3.style.color='green';
                    isok4=true;
                }else{
                    mima3.innerHTML='密码格式不正确';
                    mima3.style.color='red';
                }
            }
        }

    //注册功能的实现
    var zhuce=document.querySelector('.zhuce')
    
    zhuce.onclick=function(){
        if(isok1 && isok2 && isok3&&isok4){
                var  name=phonenum.value.trim();
                var  pasw=pass.value.trim();
                var  val=suiji.value;
                var  url='../api/reg.php';
                var  data=`username=${name}&psw=${pasw}`;
                        name='';
                        pasw='';
                        val='';
                ajax('POST',url,data,function(str){
                    if(str=='yes'){
                        alert('注册成功即将跳转页面')
                        location.href='login.html';
                    
                    }else{
                        alert('注册失败');
                    }
                });
        }else{
            alert('请填入完整信息');
        }
    }    
};