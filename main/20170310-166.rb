# Given two integers representing the numerator and denominator of a fraction, return the fraction in string format.
# If the fractional part is repeating, enclose the repeating part in parentheses.
# For example,
# Given numerator = 1, denominator = 2, return "0.5".
# Given numerator = 2, denominator = 1, return "2".
# Given numerator = 2, denominator = 3, return "0.(6)".


# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  result = ''
  remainders = []

  if numerator*denominator < 0
    result = '-'
    numerator = numerator.abs
    denominator = denominator.abs
  end

  result += (numerator/denominator).to_s
  remainder = numerator%denominator
  return result if remainder.zero?

  remainders.push(remainder)
  numerator = remainder*10

  result += '.'
  point_index = result.size

  while remainder != 0
    result += (numerator/denominator).to_s
    remainder = numerator%denominator
    numerator = remainder*10

    if remainders.include?(remainder)
      index = remainders.rindex(remainder)
      result.insert(index+point_index, '(')
      result += ')'
      break
    end

    remainders.push(remainder)
  end

  result
end


# def fraction_to_decimal(numerator, denominator)
#   result = ''
#   remainders = []

#   if numerator*denominator < 0
#     result = '-'
#     numerator = numerator.abs
#     denominator = denominator.abs
#   end

#   add_point = true
#   while 1
#     result += (numerator/denominator).to_s
#     remainder = numerator%denominator
#     numerator = remainder*10

#     break if remainder.zero?

#     if add_point
#       result += '.'
#       point_index = result.size
#       add_point = false
#     end

#     if remainders.include?(remainder)
#       index = remainders.rindex(remainder)
#       result.insert(index+point_index, '(')
#       result += ')'
#       break
#     end

#     remainders << remainder
#   end

#   result
# end
