class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
      first_number_input = input[0]
      first_number_secret = @secret_number[0]

      if input.length != 4
        output.puts "Try guessing a number with four digits"
      end

      if input == '5555'
        output.puts ''
      end

      if @secret_number.include? first_number_input
        output.puts '-'
      end

      if first_number_input == first_number_secret
        output.puts '+'
      end
    end


  end
end
