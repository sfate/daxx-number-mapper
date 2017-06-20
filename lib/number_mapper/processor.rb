class NumberMapper::Processor
  def initialize
    @dictionary = NumberMapper::Dictionary.new
  end

  def call(phone_number:)
    require 'pry'
    binding.pry
    number_array = phone_number.to_s.split('').map(&:to_i)
    puts @dictionary.call(number_array).inspect
  end
end
