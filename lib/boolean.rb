require 'boolean/version'

# = Boolean
#
# An object that represents truth.
module Boolean; end

[TrueClass, FalseClass].each { |klass| klass.send :include, Boolean }

module Kernel
  # Converts +arg+ to a +Boolean+ or +nil+ if its truth is not
  # knowable.
  def Boolean(arg)
    {
      true    => true,
      'true'  => true,
      'TRUE'  => true,
      '1'     => true,
      1       => true,
      1.0     => true,
      false   => false,
      'false' => false,
      'FALSE' => false,
      '0'     => false,
      0       => false,
      0.0     => false
    }[arg]
  end
end
