=begin
Assignment-1 Dated:07.06.2013
Program-5
Problem Statement:Take An Array And Print All The Even Numbers In It
=end

#Program Starts

=begin
This 'checkValidInput(value)' Method Will Check Whether Valid I/P is given i.e. Not An Integer Or Empty I/P
Return true If Valid I/P Else false
=end

def checkValidInput(value)					

flag=true

  if value[0]==nil
  puts "No Input Given"
  flag=false
  elsif value.match(/-?\d+/)==nil or (value.match(/-?+\d+/)[0]<=>value)!=0 then
  puts "Not An Integer Number"
  flag=false
  end

return flag
end

=begin
This 'takeInputInArray' Method Will Take Integer Input In An Array And Will Return The Integer Array
Return Integer Array
=end

def takeInputInArray
arr=[]
print "Enter Integer Value To Store In Array (Press s To Stop):\t"
input_given=gets.chomp

  while input_given.upcase!='S' do
    if checkValidInput(input_given) then
    arr<<input_given.to_i
    end
  print "Enter Integer Value To Store In Array (Press s To Stop):\t"
  input_given=gets.chomp
  end

return arr
end

=begin
This 'printWholeArray(arr)' will Print The Elements Of The Array Passed As Parameter
=end

def printWholeArray(arr)
puts "\n\n\t\tThe Values Stored In Array Are:"
print "\t\t"
  for i in 0...arr.length
  print arr[i],"   "
  end
puts
end

=begin
This 'printEvenNumbersFromArray(arr)' Will Print The Even Numbers Of The Array Passed As Parameter
=end

def printEvenNumbersFromArray(arr)
puts "\n\n\t\tEven Numbers In The Array Are:"
print "\t\t"
  for i in 0...arr.length
    if arr[i].even? then
    print arr[i],"   "
    end
  end
puts
end

#Main Part
arr=takeInputInArray
printWholeArray(arr)
printEvenNumbersFromArray(arr)
