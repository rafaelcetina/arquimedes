$.ajaxSetup({
  headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}
});

$('a.link').click(function(e){
	e.preventDefault();
	console.log($(this).attr('href'));
    var str = document.location.href;
    if(str!= $(this).attr('href')){
	   ajaxLoad($(this).attr('href'));
    }

    // console.log($(this).context.text);
    breadcrumb = $(this).context.text;
});

function ajaxLoad(filename, content) {
    NProgress.start();
    content = typeof content !== 'undefined' ? content : 'content';
    
    $.ajax({
        type: "GET",
        url: filename,
        contentType: false,
        success: function (data) {
            
            $(".mega-menu").removeClass('open');

            $("#breadcrumb").html(breadcrumb);

            $("#" + content).html(data);
            
            //window.history.pushState(data, "Menu::P", filename);
            NProgress.done();
        },
        error: function (xhr, status, error) {
            alert(xhr.responseText);
            NProgress.done();
        }
    });
}