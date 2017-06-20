class NumberMapper::Processor
  def initialize(**options)
    @dictionary = NumberMapper::Dictionary.new(options)
  end

  def call(phone_number:)
    number_array = phone_number.to_s.split('').map(&:to_i)
    @dictionary.find_matches(number_array)
  end
end
