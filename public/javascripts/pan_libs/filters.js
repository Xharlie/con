/**
 * Created by charlie on 6/2/15.
 */
var filterAlert = {
    isNotEmpty: function(input) {
        if(input != null && input !== "") return null;
        return "不能空";
    }
    ,isNumber: function(input) {
        if(isNaN(input))  return "仅数字";
        return null;
    }
    ,isInt: function(input) {
        if(Math.round(input) == input )  return null;
        return "仅整数";
    }
    ,isNotNumber: function(input) {
        if(isNaN(input)) return null;
        return "不能是数字";
    }
    ,noSpaceBetween: function(input) {
        if(/\s/.test(input)) return "有空格";
        return null;
    }
    ,isDate: function(input) {
        if(input instanceof Date) return null;
        return "日期或时间不合法";
    }
    ,isChinese: function(input) {
        if(!(/^[\u4E00-\u9FA5]+$/.test(input))) return "仅中文";
        return null;
    }
    ,isEnglish: function(input) {
        if(!(/^([a-z]|[A-Z])+$/.test(input))) return "仅英文";
        return null;
    }
    ,isChineseOrEnglishOrSpace: function(input) {
        if(!(/^([\u4E00-\u9FA5]|[a-z]|[A-Z]|\s)+$/.test(input))) return "仅中英文";
        return null;
    }

    //,isValidName: function(input) {
    //    return true;
    //}
    ,isNlength: function(input,len) {
        if(input.length!=len) return "输入长度应为"+len.toString();
        return null;
    }
    ,isPhoneNum: function(input) {
        if(input == null || input == "") return null;
        if(input.length != 11 && input.length != 8) return "位数不对";
        if(!(/^([0-9])+$/.test(input)))  return "仅数字";
        return null;
    }
    ,isLessEqualThan100: function(input) {
        if(parseFloat(input)>100) return "不可大于100";
        return null;
    }
    ,isLargerEqualThan0: function(input) {
        if(parseFloat(input)<0) return "不可小于0";
        return null;
    }
    ,isLargerEqualThan1: function(input) {
        if(parseFloat(input)<1) return "不可小于0";
        return null;
    }
    ,
    isSSN : function(Num){
        var SNum = Num.toString();
        if((SNum.length == 18) && (!isNaN(SNum.substring(0,17))) &&
            (!isNaN(SNum.substring(17,18)) || (SNum.substring(17,18)).toUpperCase() == 'X')) return null;
        return "身份证不合法";
    }  // all 18 are number or only last digit is X
    ,
    isName : function(Name){
        var SName = Name.toString();
        return (isNaN(SName)) && (SName.search(/\d+/) == -1 || !isNaN(SName.substring(SName.search(/\d+/))));
    }  // only number shown at the trail is allowed, but not all numbers for every char
}

var filterAlert2 ={
    isLessEqualThan: function(input,comparer) {
        if(input>comparer) return "输入过大";
        return null;
    }
    ,isLargerEqualThan: function(input, comparer) {
        if(input<comparer) return "输入过小";
        return null;
    }
}