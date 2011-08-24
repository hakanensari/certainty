# = Certainty
#
# Certainty provides +Boolean+, an object that represents truth.
module Boolean; end

# The library posits three truth values: true, false, or unknown.
[FalseClass, NilClass, TrueClass].each do |klass|
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
  # +false+ if +"0"+ or +"false"+, or +nil+ otherwise.
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
  # Returns +true+ if the receiver, converted to float, is equal to
  # +1.0+, +false+ if +0.0+, or +nil+ otherwise.
  def to_bool
    {
      1.0 => true,
      0.0 => false
    }[to_f]
  end
  alias to_b to_bool
end

module Kernel
  # Converts _arg_ to a boolean object.
  def Boolean(arg)
    arg.to_bool
  end
end
