
$(document).ready(function () {
    
   
    var i = 1;
    var j = 1;
    
    
    //when the Add Field button is clicked
    $("#addMore").click(function () {
         var trIndex = $("#tbApp").find('input:text').last().closest('tr').index();
        i=trIndex-1;
        j=trIndex-1;
        //Append a new row of code to the "#items" div
        $("#tbApp").append('<tr><td><input type="text" name="applications[' + i++ + '].applicationName" id="applications[' + j++ + '].applicationName" class="form-control"/></td> </tr> ');

    });

    $("#delete").click(function () {
        var trIndex = $("#tbApp").find('input:text').last().closest('tr').index();
        if (trIndex < 3) {
            alert("Sorry!! Can't remove first row!");
        } else {
            $("#tbApp").find('input:text').last().closest('tr').remove();

            i--;
            j--;
        }
    });
});
    