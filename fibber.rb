
  # starts w/ 0 and 1
  # adds the first 2 numbers together
  # the sum gets added to the last number added to the array
  # repeat 15 times
  # format elements to have the correct number of spaces
  # print out
class Fibber
  def position_assignment(fib_nums)
    @second_to_last_element = fib_nums[-2]
    @last_element = fib_nums[-1]
  end

  def fib_generator(quantity, fib_nums)
    quantity.times do
      fib_nums << @second_to_last_element + @last_element
      position_assignment(fib_nums)
    end
  end


def fib_sequence(quantity)
  fib_nums = [0,1]
  position_assignment(fib_nums)
  fib_generator(quantity, fib_nums)

  fib_nums = fib_nums[0...15]
  fib_nums.map! { |num| num.to_s }
  char_length = fib_nums[-1].length + 1
  fib_nums.map! {|num| num.rjust(char_length," ")}

  print fib_nums[0...5]
  print fib_nums[5...10]
  print fib_nums[10...15]
end
end
fibber = Fibber.new
fibber.fib_sequence(15)
