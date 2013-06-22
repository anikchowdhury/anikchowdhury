=begin
Assignment-1 Dated:07.06.2013
Program-2
Problem Statement:Count The Number Of Vowels In A String Using yield
=end

#Program Starts

=begin
This 'checkValidInput(value)' Method Will Check Whether Valid I/P is given i.e. Not An Empty I/P
Return true If Valid I/P Else false
=end

def checkValidInput(value)

flag=true

  if value[0]==nil						#To Check Empty Input
  puts "No Input Given"
  flag=false
  end

return flag
end


def vowelCount(inputText)
i=0

  while inputText[i]!=nil do

    if inputText[i].upcase=='A' or inputText[i].upcase=='E' or 
    inputText[i].upcase=='I' or inputText[i].upcase=='O' or 
    inputText[i].upcase=='U' then
    yield
    end
  i+=1
  end
end

count=0
print "Enter The String To Check Number Of Vowels:\t"
inputString=gets.chomp
  if checkValidInput(inputString) then
  vowelCount(inputString) {count+=1}				#Every Time yield is Evoked From 'vowelCount' Method The Control
								# Comes To The Block And count Is Incremented
  puts "\n\t\t\tNumber Of Vowels In The String Is: #{count}\n\n"
  end

