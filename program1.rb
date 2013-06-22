=begin
Assignment-1 Dated:07.06.2013
Program-1
Problem Statement:Check An User Input Number Is Pallindrome Or Not
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
This 'checkPallindrome(value)' method will Check Whether The Passed Parameter Is Pallindrome Or Not
Returns True If Pallindrome Else False
=end

def checkPallindrome(value)

i=0
flag=true

  while i<value.length/2 do

      if value[i]!=value[value.length-i-1] then
      flag=false
      break
      end

  i+=1
  end
return flag
end

#Main Part
print"Enter The Integer To Check Pallindrome Number:"
val=gets.chomp

  if checkValidInput(val) then
    if checkPallindrome(val) then
    puts "Pallindrome Number"
    else
    puts "Not A Pallindrome Number"
    end
  end
