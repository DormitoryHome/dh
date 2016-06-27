var ScrollPhoto= (function(){
    var index=0;
    return {
        Switch:function(change){
            if(index%4==change%4){
                return index=change; 
            }
            if(index==0&&change==3){
                $("ul.PhotoLoop").css({left: -4000});
            }
            if(index==4&&change==1){
                $("ul.PhotoLoop").css({left: 0});
            }
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).addClass("ScrollPhotoIndex");
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).removeClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).addClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).removeClass("ScrollPhotoIndex");
            $("ul.PhotoLoop").animate({left: -change*1000});
            return index=change;       
        },
        Next:function(){
            change=index+1;
            if(change>4)
            {
                change=change%4;
            }
            if(index==0&&change==3){
                $("ul.PhotoLoop").css({left: -4000});
            }
            if(index==4&&change==1){
                $("ul.PhotoLoop").css({left: 0});
            }
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).addClass("ScrollPhotoIndex");
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).removeClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).addClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).removeClass("ScrollPhotoIndex");
            $("ul.PhotoLoop").animate({left: -change*1000});
            return index=change;       
        },
        Pre:function(){
            change=index-1;
            if(change<0)
            {
                change=4+change;
            }
            if(index==0&&change==3){
                $("ul.PhotoLoop").css({left: -4000});
            }
            if(index==4&&change==1){
                $("ul.PhotoLoop").css({left: 0});
            }
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).addClass("ScrollPhotoIndex");
            $("ul.PhotoIndex").children("li").children("a").eq(index%4).removeClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).addClass("ScrollPhotoIndexOn");
            $("ul.PhotoIndex").children("li").children("a").eq(change%4).removeClass("ScrollPhotoIndex");
            $("ul.PhotoLoop").animate({left: -change*1000});
            return index=change;       
        }
    }
})();


$(document).ready(function(){
    $(".ScrollPhotoPreIndex").click(ScrollPhoto.Pre);
    $(".ScrollPhotoNextIndex").click(ScrollPhoto.Next);
    $("ul.PhotoIndex").children("li").children("a").eq(0).click(function(){ScrollPhoto.Switch(0)});
    $("ul.PhotoIndex").children("li").children("a").eq(1).click(function(){ScrollPhoto.Switch(1)});
    $("ul.PhotoIndex").children("li").children("a").eq(2).click(function(){ScrollPhoto.Switch(2)});
    $("ul.PhotoIndex").children("li").children("a").eq(3).click(function(){ScrollPhoto.Switch(3)});
});