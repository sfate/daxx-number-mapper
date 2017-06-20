require 'optionparser'
require 'number_mapper'

class NumberMapper::CLI
  def self.run(args)
    options = {}
    printers = Array.new

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: number_mapper -n NUMBER [options]\n"

      opts.on("-n", "--phone-number=", String, "Phone number in 10-digit format (1-800-1234567890 or 1234567890)") do |phone_number|
        options[:phone_number] = phone_number
      end

      opts.on("-l", "--min-length=", Integer, "Minimum word length for mapped variants") do |min_length|
        options[:min_length] = min_length
      end

      opts.on("-d", "--dictionary-path=", String, "Path to the text file with a list of words separated by new line") do |dict_path|
        options[:dict_path] = dict_path
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(args)

    if options[:phone_number].nil?
      opt_parser.parse(%w[--help])
      exit(1)
    end

    phone_number = options.delete(:phone_number)

    NumberMapper::Processor
      .new(options)
      .call(phone_number: phone_number)
  end
end
