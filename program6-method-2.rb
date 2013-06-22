=begin
Assignment-1 Dated:07.06.2013
Program-6
Problem Statement:WAP To List All The Prime Numbers Using Two Methods
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
It Will Show The Prime Numbers Upto The Given Limit
=end
def showPrimeNumber(num)
print "\nPrime Numbers Upto #{num} Is:\n"
  for i in 2..num
    if isPrime(i) then
    print i,"   "
    end
  end
print "\n"
end

=begin
Will Check Whether A Number Is Prime Or Not
Return true if Yes Else false
=end
def isPrime(num)
flag=true
  for i in 2..num/2
    if num%i==0 then
    flag=false
    break
    end
  end
return flag
end

#Main Part
print "Enter Limit To Find Prime Number:\t"
num=gets.chomp
  if checkValidInput(num) then
    if num.to_i<=1 then
    puts "Prime Number Starts From 2"
    else
    showPrimeNumber(num.to_i)
    end
  end
