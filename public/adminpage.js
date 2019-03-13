
//var db = require('../db');
//var t = form.nameInput.value;
//var a = form.comment1.value;
// 
// console.log(t);
// console.log(a);
// db.connect(function(err) { 
//  if (err) throw err; 
//
//  var sql =`UPDATE PREFERENCES 
//            SET PostName=0, PostEmail=0, PostMessage=0, DisplayDate=0, DisplayName=1, DisplayEmail=0, PageResults =4, TotalResults = 12 
//            WHERE PreferenceID =1`;
//  db.query(sql, function (err, result, fields) { 
//  
//    if (err) throw err; 
//  }); 
//}); 


//---------------------Delete Message--------------------


document.getElementById("lookupDelete").addEventListener("click", getDelete);

function getDelete(){
    document.getElementById('deleteMessage').submit();

}

























/*function makeCahnge(){
var fontSize = document.getElementById('fontSize');
var fontColor = document.getElementById('fontColor');
var divColor = document.getElementById('divColor');
var boxColor=  document.getElementById('boxColor');

function setThemeVar(name, value, unit) {
  var rootStyles = document.styleSheets[0].cssRules[0].style;
  rootStyles.setProperty('--theme-' + name, value + (unit || ''));
}

fontColor.addEventListener('input', function (e) {
  setThemeVar('font-color', e.target.value);
});

divColor.addEventListener('input', function (e) {
  setThemeVar('div-color', e.target.value);
});

boxColor.addEventListener('input', function (e) {
  setThemeVar('box-color', e.target.value);
});

fontSize.addEventListener('input', function (e) {
  setThemeVar('font-size', e.target.value, '%');
});
setThemeVar('font-color',fontColor.value);
setThemeVar('box-color', boxColor.value);
setThemeVar('div-color', divColor.value);
setThemeVar('font-size', fontSize.value, '%');
}
*/