(function() {
    $(function() {
        $('#fill-by-isbn').on('click', 'button', function(e) {  // click on search button
            e.preventDefault();
            console.log('hello');
            var isbn = $(this).siblings('input').val();  //save field in isbn variable
            isbn = isbn.replace(/-/g, '');
            console.log('you asked me to search', isbn); //printi it
            var $btn = $(this).button('loading');
            setTimeout(function () { // will make a loading button that times out after 2 secs
                $btn.button('reset');
            }, 2000);
            $.ajax({   // makes the request without leaving your page!
                method: 'GET',
                url: '/books/' + isbn + '/info',
                success: function(data) {  // if success it will send you back the data with the response from google
                    console.log('data from server', data);
                    //  loop and use jquery to put info on page
                    var title = data.title;
                    var author = data.author;
                    var description = data.description;
                    var url = data.picture_url;
                    $('#new-book #title').val(title);
                    $('#new-book #author').val(author);
                    $('#new-book #description').val(description);
                    $('#new-book #url').val(url);
                    $('#new-book #isbn').val(isbn);
                    $btn.button('reset');
                }
            });
        });
    });
})();
