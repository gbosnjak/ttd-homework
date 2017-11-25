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
      hint = ''

      if input.length != 4
        output.puts "Try guessing a number with four digits"
        return
      end

      for number in 0..3
        current_input = input[number]
        current_secret = @secret_number[number]
        if current_input == current_secret
          hint += '+'
        elsif @secret_number.include? current_input
          hint += '-'
        end
      end

      output.puts hint
    end
  end
end
