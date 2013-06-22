=begin
Assignment-1 Dated:07.06.2013
Program-3
Problem Statement:Find Factorial Of Number Using inject
=end

#Program Starts

=begin
This 'checkValidInput(value)' Method Will Check Whether Valid I/P is given i.e. Not A Positive Integer Or Empty I/P
Return true If Valid I/P Else false
=end
def checkValidInput(value)

flag=true

  if value[0]==nil						#To Check Empty Input
  puts "No Input Given"
  flag=false
  elsif (value.match(/\d*/)[0]<=>value)!=0 then  	#To Check The Input Is An Positive Integer
  puts "Not A Positive Integer Number"
  flag=false
  end

return flag
end

=begin
This 'factorialUsingInject(value)' method Will Return The Factorial Value Of The Passed Parameter
Return integer
=end

def factorialUsingInject(value)
return (2..value).inject(1) {|val,n| val*n}				#inject(1)=>here 1 is initial value,helping to 
									#avoid checking value=0 or value=1
end

#Main Part
print "\nEnter Integer Value To Find Factorial:\t"
value=gets.chomp

  if checkValidInput(value) then
  puts "Factorial Of Number #{value} Is: #{factorialUsingInject(value.to_i)}"
  end
