class NumberMapper::Node < Array
  attr_reader :words

  def initialize
    super
    @words = []
  end
end
