# = Certainty
#
# Sneaks +Boolean+, an object that represents truth, into Ruby.
module Boolean; end

[TrueClass, FalseClass].each do |klass|
  klass.send :include, Boolean
end

class Object
  # Returns +nil+. The truth of an object, by default, is not knowable.
  def to_bool
    nil
  end
  alias to_b to_bool
end

module Boolean
  # Returns the receiver. The truth of a boolean object is
  # self-referential.
  def to_bool
    self
  end
  alias to_b to_bool
end

class String
  # Returns +true+ if, downcased, the receiver is +"1"+ or +"true"+,
  # +false+ if it is +"0"+ or +"false"+, or +nil+ otherwise.
  def to_bool
    {
      '1'     => true,
      'true'  => true,
      '0'     => false,
      'false' => false
    }[downcase]
  end
  alias to_b to_bool
end

class Numeric
  # Returns + true+ if the receiver, converted to float, is equal to
  # +1.0+, +false+ if it is equal +0.0+, or +nil+ otherwise.
  def to_bool
    {
      1.0 => true,
      0.0 => false
    }[to_f]
  end
  alias to_b to_bool
end

module Kernel
  # Converts _arg_ to a boolean object or +nil+ if its truth is not
  # knowable.
  def Boolean(arg)
    arg.to_bool
  end
end
