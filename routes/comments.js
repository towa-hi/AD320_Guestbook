var express = require('express');
var router = express.Router();
var db = require('../db');
//if /all is called, return the full results of the db.query. to select what kind of info to return, limit the query.
router.get('/all', function(req, res, next) {
    
    db.query("select * from preferences", (error, result, fields) => {
        if (error) {
            console.log(error);
            res.status(500).send(error);
        }
        //console.log(result);
        var $PK = 1;
        var $dispName = result[0]["DisplayName"];
        var $dispDate = result[0]["DisplayDate"];
        var $dispEmail = result[0]["DisplayEmail"];
        var $numResults = result[0]["TotalResults"];
        
        
        db.query("select * from messages order by PostDate DESC", (error, results, fields) => {
            if (error) {
            res.status(500).send(error);
            }
            console.log(results);
            var index = results.length;
            var clientArray = [];
            for(var i = 0; i < index; i++){
                var inRow = results[i];
                var newRow = createRow($PK, $dispDate, $dispName, $dispEmail,inRow);
                clientArray[i] = newRow;
                //console.log(newRow);
            }
            
            //console.log(clientArray);
            res.send(clientArray);
        });
    });

});

module.exports = router;


function createRow($PK, $dispDate, $dispName, $dispEmail, $inRow){
    var $outRow = {};

    //if PK to be displayed add it to query
    if($PK) {
        $outRow["MessageID"] = $inRow["MessageID"]; 
    }else{
        $outRow["MessageID"] = null;
    }

    //if Name to be displayed add it to query
    if($dispName) {
        $outRow["PostName"] = $inRow["PostName"]; 
    }else{
        $outRow["PostName"] = "Anonymous";
    }

    //if Date to be displayed add it to query
    if($dispDate) {
        $outRow["PostDate"] = $inRow["PostDate"]; 
    }else{
        $outRow["PostDate"] = null;
    }

    //if Email to be displayed add it to query
    if($dispEmail) {
        $outRow["Email"] = $inRow["Email"]; 
    }else{
        $outRow["Email"] = null;
    }

    //Text will always be displayed, add it to query

    $outRow["Message"] = $inRow["Message"];
    return $outRow;

}


