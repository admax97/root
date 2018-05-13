
jQuery(document).ready(function() {
    goPage(1,pageSize);
    $('input[name=key1]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
});

