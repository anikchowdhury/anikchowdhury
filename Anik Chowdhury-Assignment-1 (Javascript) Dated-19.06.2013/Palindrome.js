function palindrome(num)
{
    var temp,i;
    sum=0;temp=num;

    while(temp)
    {
	sum=(sum*10)+(temp%10);
	temp=Math.floor(temp/10);
    }
    return(num==sum);
}

console.log(palindrome(12321));