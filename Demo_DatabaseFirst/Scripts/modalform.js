// modalform.js

$(function () {
    $.ajaxSetup({ cache: false });

    $("a[data-modal]").on("click", function (e) {
        // hide dropdown if any (this is used wehen invoking modal from link in bootstrap dropdown )
        //$(e.target).closest('.btn-group').children('.dropdown-toggle').dropdown('toggle');

        $('#myModalContent').load(this.href, function () {
            $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            }, 'show');
            bindForm(this);
        });
        return false;
    });

    $("a[data-modal-lg]").on("click", function (e) {
        // hide dropdown if any (this is used wehen invoking modal from link in bootstrap dropdown )
        //$(e.target).closest('.btn-group').children('.dropdown-toggle').dropdown('toggle');

        $('#myModalContent_lg').load(this.href, function () {
            $('#myModal_lg').modal({
                backdrop: 'static',
                keyboard: false
            }, 'show');
            bindForm_lg(this);
        });
        return false;
    });
});

function bindForm(dialog) {
    $('BeginForm', dialog).submit(function () {
        $.ajax({
            url: this.action,
            type: this.method,
            data: $(this).serialize(),
            success: function (result) {
                if (result.success) {
                    $('#myModal').modal('hide');
                    $('body')[0].classList.remove('modal-open');
                    // $('body').load(result.Url); // Load data from the server and place the returned HTML into the matched element
                    window.location.reload();
                } else {
                    $('#myModalContent').html(result);
                    bindForm(dialog);
                }
            }
        });
        return false;
    });
}

function bindForm_lg(dialog) {
    $('form', dialog).submit(function () {
        $.ajax({
            url: this.action,
            type: this.method,
            data: $(this).serialize(),
            success: function (result) {
                if (result.success) {
                    $('#myModal_lg').modal('hide');
                    $('body')[0].classList.remove('modal-open');
                    // $('body').load(result.Url); // Load data from the server and place the returned HTML into the matched element
                    window.location.reload();
                } else {
                    $('#myModalContent_lg').html(result);
                    bindForm(dialog);
                }
            }
        });
        return false;
    });
}




function DeleteItem(id, url, msgConfirm) {
    //if (confirm("@Html.Raw(@message.msgXacNhanXoaBanGhi)") == true) {
    if (confirm(msgConfirm) === true) {
        $.ajax({
            type: 'UPDATE',
            url: url,
            data: { id: id },
            success: function (response) {
                window.location.reload();
            },
            error: function (request, status, error) {
                //alert("@Html.Raw(@message.msgCoLoiKhiXoaBanGhi)");
                alert(request.responseText);
            },
        });
    }
    else {
        return;
    }
}

function getParameter(theParameter) {
    var params = window.location.search.substr(1).split('&');

    for (var i = 0; i < params.length; i++) {
        var p = params[i].split('=');
        if (p[0] === theParameter) {
            return decodeURIComponent(p[1]);
        }
    }
    return false;
}