require './lib/super_fizz_buzz'
require './lib/iteration_2'

RSpec.describe 'Super Fizz Buzz' do
  describe '#initialize' do
    it 'is an instance of SuperFizzBuzz' do
      super_fizz = SuperFizzBuzz.new
      expect(super_fizz).to be_an_instance_of(SuperFizzBuzz)
    end
  end

  describe '#output' do
    it 'will output appropriate Super/Fizz/Buzz/input' do
      super_fizz = SuperFizzBuzz.new
      input = super_fizz.output(8)
      fizzbuzz = super_fizz.output(15)

      expect(input).to eq(8)
      expect(fizzbuzz).to eq("FizzBuzz")
    end
  end

  describe '#output_range' do
    it 'will return the output of all numbers between arguments' do
      super_fizz = SuperFizzBuzz.new
      outputs = super_fizz.output_range(8)

      expect(outputs).to eq(["8", "Fizz", "Buzz", "11", "Fizz", "13", "Super", "FizzBuzz"])
    end
  end
end
 