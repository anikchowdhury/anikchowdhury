require './calculatormodules.rb'
class Practice

#This portion will be executed first when the class is loading in memory
#This is just a simple message containig the methods available in the class
#used for user convenient

puts "\n\n\t\t\tMethods In the Class Practice are:"
puts "\t\t\tisSubstring?(<String>,<String>)"
puts "\t\t\tsortArray(<Integer Array>)"
puts "\t\t\tgetGcd(<Integer>,<Integer>)"
puts "\t\t\tcalcResult(<Integer>,<Integer>)"
  
#To find the 2nd string is present or not in the first string
#Return boolean
  def self.isSubstring?(*arr)
  sourceString,compareString=arr[0],arr[1]
    unless sourceString.nil? || compareString.nil?
    sourceString.include?compareString
    end
  end

#To sort an array
#Return array
  def self.sortArray(arr)
    unless arr.nil?
    i,swapped=0,true
      while i<arr.length and swapped
        swapped=false
          for j in (0...arr.length-i-1)
            if(arr[j].to_i>arr[j+1].to_i) then
            temp,arr[j]=arr[j],arr[j+1]
            arr[j+1],swapped=temp,true
            end
          end
          i+=1
        end      
    arr
    end
  end

#To find the gcd of two numbers
#Return gcd(Integer)

  def self.getGcd(*arr)
  a,b=arr[0],arr[1]
    unless a.nil? || b.nil?
      if b.to_i>a.to_i then
      temp,a=a,b
      b=temp
      end
      while(1) do
        begin
        temp,b=b,a.to_i%b.to_i
        a=temp
        rescue ZeroDivisionError
        break
        end
      end
    end  
  a
  end
 
#To calculate addition,subtraction,multiplication and division of two numbers
#Return array
  def self.calcResult(*arr)
  num1,num2=arr[0],arr[1]
    unless num1.nil? || num2.nil?
      a=[Calc.sum(num1,num2),
         Calc.sub(num1,num2),
         Calc.mul(num1,num2),
         Calc.div(num1,num2)]
    end
  end
end
