class NumberMapper::Processor
  NUMBER_PATTERN = /\d{10}/

  def initialize(options)
    @dictionary = NumberMapper::Dictionary.new(options)
  end

  def call(phone_number:)
    number = phone_number.to_s[NUMBER_PATTERN]
    number_array = number.to_s.split('').map(&:to_i)
    puts @dictionary.call(number_array).inspect
  end
end
