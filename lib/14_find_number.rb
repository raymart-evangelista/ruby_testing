# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  # returns the average of the min and max values
  def make_guess
    (@min + @max) / 2
  end

  # returns true when guess equals the value of random_number
  def game_over?
    guess.equal?(answer)
  end

  # updates range
  def update_range
    if @guess < @answer
      puts @answer
      @min = @guess + 1
    elsif @guess > @answer
      puts @guess
      puts @answer
      puts @max
      @max = @guess - 1
    end
  end
end
