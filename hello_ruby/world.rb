# Lets look at some classes and modules in ruby, with some blocks along the way.

class Dog

  # Classes can also have attributes-- a dog might have a tail
  attr_accessor :tail

  # classes can have methods; things they can do.
  def bark
    puts "BowWow rough rough bark!"
  end

  def tail_length
    puts self.tail.length
  end
end

# Of course there are different types of tails
class Tail
  
  # and these tails have their own attributes
  attr_accessor :length

  # Every class has an initialize method that fires when you call #new
  # we can 'override' that functionality with our own. So we want to set the 
  # tail attribute when a new Tail is created? Here we go:
  # (note that we never need to type 'tail_length' again, we just pass it into this function.
  # it's confusing that this is called '.new' when you use it-- just something you have to 
  # remember.
  def initialize(tail_length)
    self.length = tail_length
  end

  # the attr_accessor creates getter and setter methods behind the scenes, so that you
  # can just assign values to attributes without doing any other work.
end

dog = Dog.new
dog.bark

# when we call Tail.new, it really fires Tail.initiialize, which we over-rode above 
# to accept the length of the new tail:
tail = Tail.new('1 foot')
dog.tail = tail

# This is much cleaner looking:
# Questions?
dog.tail_length
