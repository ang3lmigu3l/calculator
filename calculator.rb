
puts "Calculator "
puts "please write what youd like to calculate . i.e '4 + 3 * 4'"



cal = gets.chomp.split(" ")

if cal.length > 3
  cal.map!.with_index do |num, i|
    if i.even?
      num.to_i
    else
      num.to_sym
    end
  end

  operand1 = cal[0]
  operand2 = cal[2]
  operator = cal[1] # :+

    case operator
    when :+ then puts operand1 + operand2
    when :- then puts operand1 - operand2
    when :* then puts operand1 * operand2
    when :/ then puts operand1 / operand2
    when :% then puts operand1 % operand2
      else
        puts "invalid input"
      end
  else
    cal = cal.join(" ")
    print eval(cal)
end
