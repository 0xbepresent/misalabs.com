    var par = false;
    var refreshIntervalId = setInterval('parpadeo(true)',800);
    function parpadeo(activo){
        document.getElementById("txt").style.visibility=(par) ? 'visible': 'hidden';
        par = !par;
    }
    $(document).ready(function(){
        var mySound = new buzz.sound("/static/son_of_flynn.ogg");
        mySound.load();
        /*if(!buzz.isSupported() || !buzz.isMP3Supported())
            alert("Your browser don't support my feeling!!");*/
        $("#link-about").click(function(){
            var mov = $("#txt").css('margin-top');
            var margin = 0;
            if(mov == '-200px'){
                margin = "-420px";
                clearInterval(refreshIntervalId);
                //Manejador de la musica background
                //mySound.play().fadeIn().loop();
                $(".contenido:first").toggle(1500);
            }else{
                margin="-200px";
                //mySound.pause().fadeOut();
                refreshIntervalId = setInterval('parpadeo(true)',800);
                 $(".contenido").hide(); 
            }

            $("#txt").animate({
                'margin-top': margin
            }, 1500);
            //Mostar/ocultar div
            //$("#acerca").toggle(1500);
            $("#menuid").toggle(1500);
        });

        //Manejadores de control de audio
        $("#musicPlay").click(function(){
            mySound.togglePlay();
        });
        $("#musicMas").click(function(){
            mySound.increaseVolume(30); 
        });
        $("#musicMen").click(function(){
            mySound.decreaseVolume(30);
        });

        //Manejador de tabs
        $(".contenido").hide(); //Ocultar capas
        // Sucesos al hacer click en una pestaña
        $("div.tabs div").click(function() {
            $("div.tabs div").removeClass("activa"); //Borrar todas las clases "activa"
            $(this).addClass("activa"); //Añadir clase "activa" a la pestaña seleccionada
            $(".contenido").hide(); //Ocultar todo el contenido de la pestaña
            var activatab = $(this).find("a").attr("href"); //Leer el valor de href para identificar la pestaña activa 
            $(activatab).fadeIn(); //Visibilidad con efecto fade del contenido activo
            return false;
        });

    });
