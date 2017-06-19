module PhoneMapper
end

class PhoneMapper::Node < Array
  attr_reader :words

  def initialize
    super
    @words = []
  end
end

class PhoneMapper::Dictionary
  MAPPINGS = {
    'A' => 2, 'B' => 2, 'C' => 2,
    'D' => 3, 'E' => 3, 'F' => 3,
    'G' => 4, 'H' => 4, 'I' => 4,
    'J' => 5, 'K' => 5, 'L' => 5,
    'M' => 6, 'N' => 6, 'O' => 6,
    'P' => 7, 'Q' => 7, 'R' => 7, 'S' => 7,
    'T' => 8, 'U' => 8, 'V' => 8,
    'W' => 9, 'X' => 9, 'Y' => 9, 'Z' => 9,
  }.freeze

  def initialize
    @root = PhoneMapper::Node.new
  end

  def call(array)
    # TODO: Alexey Bobyrev 20 June 2017
    # Add search functionality through dictionary nodes
    ['stub']
  end

  private

  def add(node, word)
    if word.length == position
      node.words << word
      node
    else
      add(PhoneMapper::Node.new, word)
    end
  end

end

class PhoneMapper::Processor
  def initialize
    @dictionary = PhoneMapper::Dictionary
  end

  def call(phone_number:)
    number_array = phone_number.to_s.split('').map(&:to_i)
    puts @dictionary.call(number_array).inspect
  end
end

# TODO: Alexey Bobyrev 20 June 2017
# Place initial call to bin exectutable from engine in future
PhoneMapper::Processor.new.call(phone_number: 6686787825)
