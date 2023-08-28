# Iterate through the numbers 1 to 1000
# For each one, print the output according to the rules of Super Fizz Buzz
def superfizzbuzz(number)
  string = ''
  if number % 7 != 0 && number % 3 != 0 && number % 5 != 0
    string = number
  else
    if number % 7 == 0
      string += 'Super'
    end
    if number % 3 == 0
      string += 'Fizz'
    end
    if number % 5 == 0
      string += 'Buzz'
    end
  end
  string
end

num = 1
array = []
1000.times do
  array << num
  num += 1
end

array.each do |num|
  p superfizzbuzz(num)
end
