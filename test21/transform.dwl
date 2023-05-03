%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload distinctBy($.department)map(item,index)->{
"department": item.department,
"count":payload countBy ($.department==item.department )
}

/*
here from the given input based i used the map function for used to transform the data contained in an array and to get the department items from the input . now and i used the countBy function to know the how many department items are in the input.then countBY function gives the count of department items 
*/