=begin
Assignment-1 Dated:07.06.2013
Program-4
Problem Statement:Fibonacci Series
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
This 'fibonacci(value)' Method Will Print Fibonacci Series Upto The Limit Starting From 0,1
=end

def fibonacci(value)
prevVal=0
nextVal=1
count=0
puts "First #{value} Fibonacci Numbers Are"
  while count<value do
  print "#{prevVal}   "
  temp=prevVal+nextVal
  prevVal=nextVal
  nextVal=temp
  count+=1
  end
end

#main part
print "Enter Limit To Find Fibonacci Series:\t"
value=gets.chomp

  if checkValidInput(value) then
  puts fibonacci(value.to_i)
  end
