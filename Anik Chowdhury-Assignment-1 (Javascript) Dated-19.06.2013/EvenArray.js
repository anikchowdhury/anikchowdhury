function getEvenNumberedArray(arr)
{
    var i,evenArray=[];
    for (i in arr)
	if(!(arr[i]%2))
	    evenArray.push(arr[i]);

    return (evenArray);
}

console.log(getEvenNumberedArray([10,21,22,25,23,26,28,98]));