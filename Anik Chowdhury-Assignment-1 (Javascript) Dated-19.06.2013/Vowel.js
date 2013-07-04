function isVowel(val)
{
    return "aeiou".indexOf(val.toLowerCase())!=-1;
}

function callFunctionAsArgument(val,functionVal)
{
    return functionVal(val);
}

console.log(callFunctionAsArgument("I",isVowel));