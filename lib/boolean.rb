# = Boolean
#
# Boolean is an object that represents truth.
module Boolean; end

[TrueClass, FalseClass].each { |klass| klass.send :include, Boolean }

# == Conversion methods.
#
# The truth of an object, by default, is not knowable.
class Object
  def to_bool
    nil
  end
  alias to_b to_bool
end

# The truth of a boolean object is self-referential.
module Boolean
  def to_bool
    self
  end
  alias to_b to_bool
end

# We evaluate the truth of a string based on the following convention:
#
# If it is _1_ or a lower- or upper-cased _true_, it evaluates to
# +true+. If it is a _0_ or a lower- or upper-cased _false_, it
# evaluates to +false+.
#
# Otherwise its truth is not knowable.
class String
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

# We evaluate the truth of a number based on the following convention:
#
# If it is equal to _1_, it evaluates to +true+. If it is equal to _0_,
# it evaluates to +false+.
#
# Otherwise its truth is not knowable.
class Numeric
  def to_bool
    {
      1.0 => true,
      0.0 => false
    }[to_f]
  end
  alias to_b to_bool
end

module Kernel
  # Converts _arg_ to a +Boolean+ or +nil+ if its truth is not
  # knowable.
  def Boolean(arg)
    arg.to_bool
  end
end
