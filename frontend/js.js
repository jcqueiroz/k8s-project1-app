$("#button-blue").on("click", function() {
    
    var txt_name = $("#name").val();
    var txt_email = $("#email").val();
    var txt_comments = $("#comments").val();

    $.ajax({
        url: "http://192.168.59.104:30733",
        
        type: "post",
        data: {name: txt_name, comments: txt_comments, email: txt_email},
        beforeSend: function() {
        
            console.log("Try sending the files....");

        }
    }).done(function(e) {
        alert("Data Saved");
    })

});