require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def cubed(number)
    return number * number * number
  end

  def remainder(number_one, number_two)
    return number_one % number_two
  end

end

# Tests below:

RSpec.describe Calculator do
  describe 'add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      expect(calc.add(1, 3)).to eq(4)
    end
  end

  describe 'subtract' do 
    it 'should return the difference of two numbers' do 
      calc = Calculator.new
      expect(calc.subtract(4,3)).to eq(1)
    end
  end

  describe 'multiply' do 
    it 'should return the product of two numbers' do 
      calc = Calculator.new
      expect(calc.multiply(4,2)).to eq(8) 
    end    
  end

  describe 'divide' do 
    it 'should return the quotient of two numbers' do
      calc = Calculator.new
      expect(calc.divide(8,2)).to eq(4)
    end
  end

  describe 'square' do
    it 'should return the square of a given number' do
      calc = Calculator.new
      expect(calc.square(3)).to eq(9)
    end
  end

  describe 'power' do
    it 'should return the first number to the power of the second number' do
      calc = Calculator.new
      expect(calc.power(4,3)).to eq(64)
    end
  end

  describe 'cubed' do
    it 'should return the cube of a given number' do
      calc = Calculator.new
      expect(calc.cubed(5)).to eq(125)
    end
  end

  describe 'remainder' do
    it 'should return the remainder of first number divided by second number' do
      calc = Calculator.new
      expect(calc.remainder(25,4)).to eq(1)
    end
  end

end