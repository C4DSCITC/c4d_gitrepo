var $button         = $('.button'),
    $modalContainer = $('#modal-container'),
    $body           = $('body'),
    $content        = $('.content'),
    btnId;

$button.on('click', function () {
    btnId = $(this).attr('id');
    
    $modalContainer
            .removeAttr('class')
            .addClass(btnId);
    $content
            .removeAttr('class')
            .addClass('content');
    
    $body.addClass('modal-active');
    
    if (btnId == 'two' || btnId == 'three'|| btnId == 'four') {
        $content.addClass(btnId);
    }
    
});

$modalContainer.on('click', function () {
    $(this).addClass('out');
    $body.removeClass('modal-active');
    if ($(this).hasClass(btnId)) {
        
        $content.addClass('out');
        
    }
});