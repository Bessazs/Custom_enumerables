require_relative 'enumerables'

  
  arr = [1, 2, 3, 4, 5]
  
  # my_each
  arr.my_each { |num| puts num }
  # Output: 1 2 3 4 5
  
  # my_map
  squares = arr.my_map { |num| num ** 2 }
  puts squares.inspect
  # Output: [1, 4, 9, 16, 25]
  
  # my_select
  evens = arr.my_select { |num| num.even? }
  puts evens.inspect
  # Output: [2, 4]
  
  # my_all?
  all_positive = arr.my_all? { |num| num > 0 }
  puts all_positive
  # Output: true
  
  # my_none?
  none_negative = arr.my_none? { |num| num < 0 }
  puts none_negative
  # Output: true
  
  # my_count
  count_evens = arr.my_count { |num| num.even? }
  puts count_evens
  # Output: 2
  