$(document).ready(function() {
    /* Convenience for forms or links that return HTML from a remote ajax call.
    The returned markup will be inserted into the element id specified.
     */
    $('form[search-result-target]').bind('ajax:success', function(evt, data) {
        $('#search-results').html(data);
    });
});

 