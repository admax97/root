/**
 * Created by jingxin on 2018/4/27.
 */
jQuery(document).ready(function() {
    goPage(1,pageSize);
    $('input[name=key1]').on('keypress', function(e) {
        if (e.keyCode == 13) {
            goPage(1,pageSize);
        }
    });
});

