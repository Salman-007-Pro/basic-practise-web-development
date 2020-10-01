            function colorgenerator(){
                var letter='0123456789ABCDEF'
                var colr="#";
                var i=1;
                for(i=1;i<=6;i++){
                    colr+=letter[Math.floor(Math.random()*16)];
                }
                return colr.toString();
            }
            var start= new Date().getTime();
            function appershape(){
                var size=Math.random()*300+100;
                document.getElementById("box").style.color=colorgenerator();
                document.getElementById("box").style.width=size+"px";
                document.getElementById("box").style.height=size+"px";
                document.getElementById("box").style.marginTop=((Math.random() * 400)+10)+"px";
                document.getElementById("box").style.marginLeft=((Math.random() * 400)+10)+"px";
                if(Math.random()>=0.5){
                    document.getElementById("box").style.borderRadius="100%";
                }
                else{
                    document.getElementById("box").style.borderRadius="0";
                }
                document.getElementById("box").style.display="block";
                document.getElementById("box").style.backgroundColor=colorgenerator();
                start= new Date().getTime();
            }
            function delay(){
                setTimeout(appershape,Math.random()*2000);
            }
            delay();
            document.getElementById("box").onclick=function(){
                var end=new Date().getTime();
                document.getElementById("box").style.display="none";
                delay();
                var timertaken=(end-start)/1000;
                document.getElementById("sp").innerHTML=timertaken+" sec";
            }