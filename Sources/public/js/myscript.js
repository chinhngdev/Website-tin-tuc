
function showManager(id) {
        var objHTTP = new XMLHttpRequest();
        objHTTP.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200)
            {
                $(".container-fluid").html(this.responseText);
            }
        }
        objHTTP.open('GET', 'contrManager.php?code=' +id, true);
        objHTTP.send();
}
