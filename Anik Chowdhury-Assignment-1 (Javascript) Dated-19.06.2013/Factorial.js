function factorial(num)
{
    if(num===0 || num===1)
	return 1;
    var i,fact;
    fact=1;
    for(i=2;i<=num;fact*=i,i++);

    return fact;
}

console.log(factorial(6));