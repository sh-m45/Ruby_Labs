class CustomMath

  def calculate(first_number, second_number, operator)

    begin
      first_number = Integer(first_number)
      second_number = Integer(second_number)
    rescue ArgumentError => error
      p error.message
      return
    end

    case operator
    when "+"
      p first_number + second_number
    when "-"
      p first_number - second_number
    when "*"
      p first_number * second_number
    when "/"
      begin
        p first_number / second_number
      rescue ZeroDivisionError => error
        p error.message
      end
    else
      p "called not supported operator"
    end
  end
end

math = CustomMath.new
math.calculate("1", "5", "+")