/**
 * Created by charlie on 5/11/15.
 */
var dateUtil = {
    tstmpFormat: function (date) {
        var YYYY = (date.getFullYear()).toString();
        var MM = (date.getMonth() + 1).toString();
        var DD = date.getDate().toString();
        var hh = (date.getHours()).toString();
        var mm = (date.getMinutes()).toString();
        var ss = (date.getSeconds()).toString();
        return (YYYY + "-" + (MM[1] ? MM : "0" + MM[0]) + "-" + (DD[1] ? DD : "0" + DD[0]) + " " + (hh[1] ? hh : "0" + hh[0]) + ":" + (mm[1] ? mm : "0" + mm[0]) + ":" + (ss[1] ? ss : "0" + ss[0]));
    }
}