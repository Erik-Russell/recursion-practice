def fibs(num)
  fib_array = []
  fib0 = 0
  fib1 = 1
  fib_array << fib0
  fib_array << fib1 if num > 1
  while num > 2
    fib_n = fib0 + fib1
    fib_array << fib_n
    fib0 = fib1
    fib1 = fib_n
    num -= 1
  end
  fib_array
end

def fibs_rec(num)
  # puts 'recursion'
  return [0] if num == 1
  return [0, 1] if num == 2

  prev_fibs = fibs_rec(num - 1)
  fib_next = prev_fibs[-1] + prev_fibs[-2]
  prev_fibs << fib_next
  prev_fibs
end

def sort(numbers)
  # puts 'sort'
  num_elements = numbers.length
  return numbers if num_elements <= 1

  half_of_elements = (num_elements / 2).round
  left = numbers.take(half_of_elements)
  right = numbers.drop(half_of_elements)

  sorted_left = sort(left)
  sorted_right = sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left_array, right_array)
  # puts 'merge'
  return left_array if right_array.empty?

  return right_array if left_array.empty?

  smallest_number = if left_array.first <= right_array.first
                      left_array.shift
                    else
                      right_array.shift
                    end

  recursive = merge(left_array, right_array)

  [smallest_number].concat(recursive)
end
