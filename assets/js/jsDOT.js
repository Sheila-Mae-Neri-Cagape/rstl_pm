$(document).ready(function(){
   $(document).ajaxStart(function(){
        $("#wait").css("display", "block");
      });
      $(document).ajaxComplete(function(){
        $("#wait").css("display", "none");
      });

    $("#farms").click(function(){
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getFarm");
       
    });

     //$("#farms").click();
 
    $("#tspots").click(function(){
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getTspots");
        
    });

    $("#tspots").click();

    $("#feeds").click(function(){
        // alert("feeds");

        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getFeeds");


    });

    $("#oprof").click(function(){
        // alert("feeds");
        //$("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/profile/allprofile");

        var today = new Date();

        var year = today.getFullYear();
        //console.log(year);
        //console.log(today);

        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getFeeds",{date:year});
    });

    // $("#uprof").click(function(){
    //     // alert("feeds");
    //     $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/profile/userProfile");
    // });

    $("#mforms").click(function(){
        // alert("feeds");
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getForms");
    });

    $("#routes").click(function(){
        // alert("feeds");
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/route/routes");
    });

    $("#acuchart").click(function(){
        // alert("stats");
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getCharts");
    });

    $("#trash").click(function(){
        // alert("trash");
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getTrash");
    });

    $('.nav-list').on('click','a',function(){
        $('.nav-list a.active').removeClass('active');
        $(this).addClass('active');
     });

     $("[data-fancybox]").fancybox();
    
});

$(document).ready(function(){
    const firstFarm = document.querySelector('.farmSite').getAttribute('id').split("_")[0];
    // alert(firstFarm);
    $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getonefarm",{id:firstFarm});

    $('.farmSite').on('click', function(){
        farm_id = $(this).attr("id");
        const splitString = farm_id.split("_")[0];
        // alert(splitString);

        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getonefarm",{id:splitString});

    });

    $("#trashh").click(function(){
         // alert("trash");
        $("#reloadDiv").load("http://"+window.location.host+"/rstl_pm/main/getTrash");
    });
     
});
