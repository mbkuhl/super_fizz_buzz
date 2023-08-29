class SuperFizzBuzz
  def initialize
  end
  def output(number)
    string = ''
    if number % 7 != 0 && number % 3 != 0 && number % 5 != 0
      string = number.to_s
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

  def output_range(begining, ending)
    array = Array((begining .. ending))
    array.map { |num| output(num)}
  end
end


