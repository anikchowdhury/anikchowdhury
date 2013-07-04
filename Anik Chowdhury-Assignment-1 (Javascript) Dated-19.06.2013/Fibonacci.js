function fib(range)
{
    var prevVal=0,nextVal=1,series=[];
    while(range-->0)
    {
	series.push(prevVal);
	prevVal=nextVal;
	nextVal+=series[series.length-1];
    }
    return series;
}

console.log(fib(10));