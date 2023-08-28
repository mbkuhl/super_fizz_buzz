require './lib/super_fizz_buzz'

RSpec.describe 'Super Fizz Buzz' do
  describe 'It will print numbers based on divisibility' do
    it 'will print Fizz if divisible by 3' do
      sfb = superfizzbuzz(3)
      expect(sfb).to eq("Fizz")
    end

    it 'will print Buzz if divisible by 5' do
      sfb = superfizzbuzz(5)
      expect(sfb).to eq("Buzz")
    end
    
    it 'will print Super if divisibl by 7' do
      sfb = superfizzbuzz(7)
      expect(sfb).to eq("Super")
    end
  end

  describe 'It will print some combination if divisible by multiple' do
    it 'will print in the order of SuperFizzBuzz' do
      sfb = superfizzbuzz(105)
      expect(sfb).to eq("SuperFizzBuzz")
    end

    it 'can print just two' do
      sfb = superfizzbuzz(15)
      expect(sfb).to eq("FizzBuzz")
      sfb = superfizzbuzz(35)
      expect(sfb).to eq("SuperBuzz")
      sfb = superfizzbuzz(21)
      expect(sfb).to eq("SuperFizz")
    end
  end

  describe 'It will print the input number if not divisible by 3, 5, or 7' do
    it 'outputs the input number if not divisible by 3, 5, or 7' do
      sfb = superfizzbuzz(4)
      expect(sfb).to eq(4)
    end
  end
end