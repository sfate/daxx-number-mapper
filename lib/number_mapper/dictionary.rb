class NumberMapper::Dictionary
  MIN_LENGTH = 3
  DEFAULT_DICT_PATH = 'vendor/dict.txt'.freeze

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

  def initialize(dict_path: DEFAULT_DICT_PATH, min_length: MIN_LENGTH)
    @root = NumberMapper::Node.new
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
      add(NumberMapper::Node.new, word)
    end
  end

end

