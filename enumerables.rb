
# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in self do
      yield i
    end    
    
  end

  def my_each_with_index
    a = []
    for i in 0...self.size do
      a<<self[i]
      yield self[i], i
    end  
    a
  end

  def my_select
    a = []
    self.my_each do |elem|
      a.push(elem) if yield(elem)
    end
    a
  end

  def my_all?
    condition = true
    self.my_each do |elem|
      condition = false unless yield(elem)
    end
    condition
  end

  def my_any?
    condition = false
    self.my_each do |elem|
      condition = true if yield(elem)
    end
    condition
  end

  def my_none?
    condition = true
    self.my_each do |elem|
      condition = false if yield(elem)
    end
    condition
  end

  def my_count
    count = 0
    if block_given?
      self.my_each do |elem|
        count += 1 if yield(elem)
      end
    else
      count = self.size
    end

    count
  end

  def my_map
    a = []
    for i in self do
      a.push(yield(i))
    end    
    a
  end

  def my_inject(total)
    self.my_each do |elem|
       total = yield total, elem
    end
    total


  end
end
