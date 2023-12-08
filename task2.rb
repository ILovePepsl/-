def multiply_by(factor)
  #множить переданий аргумент на factor
  return Proc.new { |n| n * factor }
end

#створюємо замикання
multiply_by_3 = multiply_by(3)

#викликаємо замикання
result = multiply_by_3.call(5)
puts result


#----------------------------------------------
def perform_operation(x, y, operation)
  operation.call(x, y)
end

#створюємо
addition = Proc.new { |a, b| a + b }

#викликаємо
result = perform_operation(10, 6, addition)
puts result

#----------------------------------------------
def counter
  count = 0
  #збільшує лічильник при кожному виклику
  Proc.new { count += 1 }
end

# створюємо
my_counter = counter

puts my_counter.call  #1
puts my_counter.call  #2
puts my_counter.call  #3
