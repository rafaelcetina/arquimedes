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
});

function ajaxLoad(filename, content) {
    //NProgress.start();
    content = typeof content !== 'undefined' ? content : 'content';
    
    $.ajax({
        type: "GET",
        url: filename,
        contentType: false,
        success: function (data) {
            $("#" + content).html(data);
            
            window.history.replaceState(data, "Menu::P", filename);
            //NProgress.done();
        },
        error: function (xhr, status, error) {
            alert(xhr.responseText);
            //NProgress.done();
        }
    });
}