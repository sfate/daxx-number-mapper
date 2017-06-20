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

    File.readlines(dict_path).each do |word|
      word.chomp!
      next if word.empty? || word.length <= min_length
      add(@root, word, 0)
    end
  end

  def find_matches(number)
    result = []

    nodes_find(@root, number) do |words, rest_number|
      if rest_number.empty?
        result.concat(words)
      else
        find_matches(rest_number).each do |part|
          words.each do |word|
            result << [word, part]
          end
        end
      end
    end

    result
  end

  private

  def add(node, word, position)
    if word.length == position
      node.words << word
      node
    else
      index = MAPPINGS[word[position]]
      node[index] ||= NumberMapper::Node.new
      add(node[index], word, position + 1)
    end
  end

  def nodes_find(node, number, &block)
    if !node.words.empty?
      block.call(node.words, number)
    end

    if number.empty? || node[number[0]].nil?
      node
    else node[number[0]]
      nodes_find(node[number[0]], number[1..-1], &block)
    end
  end

end
