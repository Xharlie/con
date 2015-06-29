/**
 * Created by charlie on 4/30/15.
 */
var serviceUtil = {
    getter: function (returnee){
        return{
            // unify the call back
            success: function(exec){
                exec(returnee);
            }
        }
    },
    structuralize: function (data) {
        var typesNCombos = {};
        for (var i = 0; i < data.length; i++ ){
            var combo = data[i];
            if(combo.SRVC_TP_ID in typesNCombos){
                typesNCombos[combo.SRVC_TP_ID].push(combo);
            }else{
                typesNCombos[combo.SRVC_TP_ID] = [combo];
            }
        }
        return typesNCombos;
    },
    obj2Insertion: function(obj){
        var insertion = "";
        for(var key in obj){
            insertion = insertion + " `"+key+"` = " + obj[key] +",";
        }
        return insertion.substring(0,insertion.length-1)+";"
    }
}

