window.onload=function(){
    //商家的下拉菜单
    //鼠标移入的时候
    $('.shangjia').mousemove(function(){
        $('.top-r1').css({
            'display':'block',
            'background':'#fff',
            'border':'1px solid #ccc',
            'border-top':'none',
        });
        $('.shangjia').css({
            'background':'#fff',
            'border':'1px solid #ccc',
        });
    });
    //鼠标移出的时候
    $('.shangjia').mouseout(function(){
         $('.top-r1').css({
            'display':'none',
        });
        $('.shangjia').css({
            'background':'#f4f4f4',
            'border':'none',
        });
    });

    //帮助的下拉菜单
    //鼠标移入的时候
    $('.bangzhu').mousemove(function() {
        $('.bangzhu2').css({
            'display':'block',
            'background':'#fff',
        });
        $('.bangzhu').css({
            'background':'#fff',
            'border':'1px solid #ccc',
        });
    });
     //鼠标移出的时候
   $('.bangzhu').mouseout(function() {
         $('.bangzhu2').css({
            'display':'none',
        });
        $('.bangzhu').css({
            'background':'#f4f4f4',
            'border':'none',
        });
   });

   // 关注的下拉菜单鼠标移入的时候
   $('.guanzhu').mousemove(function() {
        $('.guanzhu1').css({
            'display':'block',
            'z-index':'1000',
            'background':'#fff',
        });
        $('.guanzhu').css({
            'background':'#fff',
        });
   });
    //关注的下拉菜单鼠标移出的时候
   $('.guanzhu').mouseout(function() {
        $('.guanzhu1').css({
            'display':'none',
        });
         $('.guanzhu').css({
            'background':'#f4f4f4',
        });
   });

   //我的购物车
   //鼠标移入的时候
   $('.beibei-r1').mouseover(function() {
        $('.gouwuche').css({
            'display':'block',
        })
   });
   //鼠标移出的时候
   $('.beibei-r1').mouseout(function() {
        $('.gouwuche').css({
            'display':'none',
        })
   });

   //侧栏广告回到顶部等。
   //侧边栏的购物车鼠标移入的时候
    $('.cgouwu').mousemove(function(){
        $('.cgouwuche').css({
            'display':'block',
        });
        $('.cgouwu').css({
            'background':'#ff647c'
        });
        
    });
   //侧边栏的购物车鼠标移出的时候
    $('.cgouwu').mouseout(function(){
        $('.cgouwuche').css({
            'display':'none',
        });
        $('.cgouwu').css({
            'background':'#ffffff'
        });
        
    });

    // 侧边栏的手机鼠标移入的时候
    $('.cshouji').mousemove(function() {
        $('.phone1').css({
            'display':'block',
        })
        $('.cshouji').css({
            'background':'#ff647c',
        })
    });
    // 侧边栏的手机鼠标移出的时候
     $('.cshouji').mouseout(function() {
        $('.phone1').css({
            'display':'none',
        })
         $('.cshouji').css({
            'background':'#fff',
        })
    });

     // 侧边栏客服鼠标移入的时候
     $('.gfzx').mousemove(function() {
         /* Act on the event */
         $('.gfzx-img').css({
            'display':'none',
         });
         $('.gfzx-span').css({
            'display':'block',
         });
         $('.gfzx').css({
            'background':'#ff647c',
         });

     });
     //离开的时候
      $('.gfzx').mouseout(function() {
         /* Act on the event */
         $('.gfzx-img').css({
            'display':'block',
         });
         $('.gfzx-span').css({
            'display':'none',
         });
         $('.gfzx').css({
            'background':'#fff',
         });
     });

      //侧边栏回到顶部鼠标移入的时候
      $('.totop').mousemove(function(){
         $('.totop').css({
            'background':'#ff647c',
         });
         $('.totop-img').css({
            'display':'none'
         });
         $('.totop-span').css({
            'display':'block',
         });
      });
      //侧边栏回到顶部鼠标移出的时候
       $('.totop').mouseout(function(){
         $('.totop').css({
            'background':'#fff',
         });
         $('.totop-img').css({
            'display':'block',
         });
         $('.totop-span').css({
            'display':'none',
         });
      });

       //默鸡版回到顶部
        //滚动滑轮到达300px的时候，出现回到顶部按钮。点击可以快速回到顶部

        var backtop = document.querySelector('.totop');
        window.onscroll = function() {
            var scrollTop = window.scrollY;
            //滚动滑轮到达300px的时候，出现回到顶部按钮
            if(scrollTop >= 300) {
                backtop.style.display='block';
            } else {
                backtop.style.display='none';
            }
        }
        //点击回到顶部，缓慢回到顶部
        backtop.onclick=function(){
            var timer=setInterval(function(){
                var scrollTop = window.scrollY;//
                if(scrollTop>0){
                    window.scrollTo(0,scrollTop-20);
                    console.log(scrollTop-20);
                }else{
                    clearInterval(timer);
                }
            },30);      
        }

    //在售分类的下拉菜单部分
    $('.liebiao').mousemove(function(){
        $('.fenkuai').css({
            'display':'block',
        });
    });
     $('.liebiao').mouseout(function(){
        $('.fenkuai').css({
            'display':'none',
        });
    });
     //在售分类的下拉菜单的选项卡部分
     $('.fenlei li').mousemove(function(){
        //排他，清除所有
        $('.fenlei li').attr('class','');
        //当前的高亮显示
        $(this).attr('class','active');   //this是js的方法所以要有$()包起来
        //div跟着切换
        $('.fenlei-r .con').css('display','none');  //事先隐藏所有div
        $('.fenlei-r .con').eq($(this).index()).css('display','block');//点击哪个就显示哪个
     });

     //吸顶菜单
     var hei=document.getElementsByClassName('sub-nav')[0];
        var top=hei.offsetTop;
        window.onscroll=function(){
        //获取滚动距离
            var scrollTop=window.scrollY;
            if(scrollTop>=top){
                hei.classList.add('menu');
                $('.sub-nav .sub-nav-logo').css('display','block');
                $('.sub-nav .yugao').css('display','none');
                $('.sub-nav .feiji').css('display','block');
                $('.sub-nav .dianzan').css('display','block');
            }else{
                hei.classList.remove('menu');
                $('.sub-nav .sub-nav-logo').css('display','none');
                $('.sub-nav .yugao').css('display','block');
                $('.sub-nav .feiji').css('display','none');
                $('.sub-nav .dianzan').css('display','none');
            }
        }

    //轮播图
    //老师封装的轮播图插件只要传两个参数就可以用了
    //参数1):id      参数2)样式名
    sliderImg('slideimg', 'active1');   
    

    // $('#slideimg').mousemove(function(){
    //     $('#pis').css('opacity','1').css('transition','1s');
    // });
    // $('#slideimg').mouseout(function(){
    //     $('#pis').css('opacity','0').css('transition','1s');
    // });
    
       
    //主要内容渲染的封装点击更多加载一片数据      初始化数据
    function xuanlan(arr){
        var res=arr.datalist.map(function(item){
            return`<li>
                        <div class="img-hei">
                            <img src="${item.imgurl}" />
                        </div>
                        <p class="title">${item.title}</p>
                        <div class="price">
                            <p class="cur-price">
                                <span class="currency">￥</span>
                                <span class="price-num">${item.priceint}.</span>
                                <span class="price-little">${item.pricefloat}</span>
                            </p>
                            <p class="old-price">${item.yuanjia}</p>
                            <p class="discount-desc">${item.dazhe}折</p>
                        </div>
                    </li>`;
        }).join('');
        haochi.innerHTML+=res;
    }
    
    var haochi=document.querySelector('.haochi');
    
    var url='api/index.php';
    var data=`page=1&qty=12`;
    ajax('GET',url,data,function(str){
    var arr=JSON.parse(str);
             console.log(arr);
        xuanlan(arr);
    });
    
    //当点击的时候又加载一片。
    var now=1;  //每次点击的时候页娄又加载一片
    
    var morejiazai=document.querySelector('.morejiazai');
    var jiazai=document.querySelector('.jiazai')
        morejiazai.onclick=function(){
        now++
        var url='api/index.php';
        var data=`page=${now}&qty=12`;
        ajax('GET',url,data,function(str){
            var arr=JSON.parse(str);
//                      console.log(arr);
            xuanlan(arr);
            var num=Math.ceil(arr.total/arr.qty)
            console.log(num);
            if(arr.page>=num){
                jiazai.style.display='none';
            }else{
                jiazai.style.display='block';
            }
        });
    }

    //右侧选项卡部分的js
   $('.temai_r2 .J_sort li').mousemove(function(){
       //排他，清除所有
       $('.temai_r2 .J_sort .active2').attr('class','');
       //当前的高亮显示
       $(this).attr('class','active2');
       //div跟着切换
       $('.temai_r2 .con2').css('display','none');
       $('.temai_r2 .con2').eq($(this).index()).css('display','block');
  });

    //获取cookie
    // var name1=document.cookie.split('=')[1]
    var nihao=document.querySelector('.nihao');
    var cookies=document.querySelector('.cookies');
    var name1=Cookie.get('name');
    console.log(name1);
    if(name1){
        
        cookies.innerHTML=name1+'欢迎来到贝贝网';
        cookies.style.color='burlywood'
        nihao.style.display='none';
    }else{
        cookies.style.display='none';
        cookies.innerHTML='还没有设置cookie';
        nihao.style.display='block';
    }
  
}