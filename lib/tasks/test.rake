@main_variable = "I'm main_variable"

def call_main
  @main_variable
  "instance method here"
end

# def self.call_main
#   @main_variable + " class method"
# end

class A
  attr_reader :hi
  @@class_var = "class_var called!"
  p @main_variable
  def initialize
    @hi = "hi"
    @instance_var = "instance var called!"
    p @main_variable
  end

  def callme
    @instance_var
  end

  def self.callme
    @@class_var
  end
end

class B < A
  def tryme
    p @hi
  end

  def self.class_tryme
    @@class_var
  end
end

p A.class.class
p A.new.hi
B.new.tryme
p "callme?"
p A.new.callme
p "class callme?"
p A.callme
p A.instance_variables
p B.class_tryme
# p self.call_main
p "instance call_main worked?"
p call_main
