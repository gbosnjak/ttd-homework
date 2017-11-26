class Codebreaker
  class Game
    attr_reader :output

    LENGTH_OF_SECRET_NUMBER = 4
    INDEX_START = 0
    INDEX_END = 3

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
      hint = ''
      @matched_numbers = []

      if input.length != LENGTH_OF_SECRET_NUMBER
        output.puts "Try guessing a number with four digits"
        return
      end

      for number in INDEX_START..INDEX_END
        current_input = input[number]
        current_secret = @secret_number[number]
        if exact_match(current_input, current_secret)
          hint += '+'
        elsif number_match(current_input, current_secret)
          hint += '-'
        end
        @matched_numbers << current_input
      end

      print(hint)
    end

    private

    def exact_match(current_input, current_secret)
      current_input == current_secret
    end

    def number_match(current_input, current_secret)
      (@secret_number.include? current_input) && (!@matched_numbers.include? current_input)
    end

    def print(hint)
      output.puts hint.split('').sort.join
    end

  end
end
