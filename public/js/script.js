$(function () {
    'use strict';
    $('body').on('click', '.social .like', function (e) {
        e.preventDefault();

        var postId = $(this).attr('id');

        $.ajax({
            url: "/post/like",
            method: "post",
            dataType: "json",
            data: {
                post_id: postId,
                _token: window.Laravel.csrfToken
            },
            success: function (response) {
                $('#' + postId).find('.badge').html(response.likes);
            }
        })
    });

    $("#submitSL").click(function (event) {
        event.preventDefault();

        var dataEmail = $('#email').val();
        var dataPassword = $('#password').val();
        $.ajax({
            url: 'simplelogin',
            method: 'post',
            data: {
                data_email: dataEmail,
                data_password: dataPassword,
                _token: window.Laravel.csrfToken
            },
            success: function (response) {
                if (response === 'success') {
                    var succesLogin = '/home';
                    $( location ).attr("href", succesLogin);
                } else {
                    var problemLogin = '/login';
                    alert('Неправильный email или пароль');
                    $( location ).attr("href", problemLogin);
                }
            }
        });
    });
});