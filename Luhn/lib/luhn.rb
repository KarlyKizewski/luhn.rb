module Luhn
  def self.is_valid?(number)
    e = o = 0
    # convert string to integers
    # reverse
    # iterate to the right (which was orig rightmost)
    # perhaps have 2 cases? for even and odd? 
    number.to_s.reverse.chars.each_slice(2) do |odd,even|
      o += odd.to_i
    # double every second digit EVENS n(*2)
    # put n*2 into a value for the comparison above?
    # calculate modulo 10 or % 10
      double = even.to_i * 2
    # if (n*2)>10 subtract 9 
      double -= 9 if double >= 10
      e += double
    end
    # sum all the integers after manipulations
    # if sum % 10 == 0, return true, else return false
    # original below
    #total_sum = (o + e) % 10
    #if total_sum == 0
    #  return true
    #else
    #  return false
    #end
    #refactoring:
    (o + e) % 10 == 0 ? true : false
  end
end

#tested and passes