var show =function(showee){
    alert(JSON.stringify(showee));
}

var basicUtil = {
    deepCopy: function(input){
        return JSON.parse(JSON.stringify(input));
    },
    objDecode: function (ob) {
        var obAfter ={};
        for (var key in ob) {
            obAfter[key] = JSON.parse(ob[key]);
        }
        return obAfter;
    },
    Limit : function(num){
        return Number(parseFloat(num).toFixed(2));
    },
    getTuple : function(start,end){
        var returnee =[];
        for(var i=start; i<end;i++){
            returnee.push(i);
        }
        return returnee;
    },
    array2Object: function (key,data) {
        var returnee = {};
        for (var i = 0; i < data.length; i++ ){
            returnee[data[i][key]] = data[i];
        }
        return returnee;
    },
    anyInObject: function (obj) {
        for (var key in obj){
            return obj[key];
        }
    }
};

