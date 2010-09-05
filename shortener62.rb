module Shortener62
  CHARSET = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a
  
  def decode(str)      
    str = str.to_s.reverse.split('')

    total = 0
    str.each_with_index do |char, index|
      if val = CHARSET.index(char)
        total += val * (62 ** index)
      else
        raise ArgumentError, "String '#{str}' has an invalid character '#{char}'"
      end
    end
    
    total
  end
  
  def encode(num)
    raise ArgumentError unless Numeric === num
    return '0' if num == 0
    
    str = ''
    while num > 0
      str << CHARSET[num % 62]
      num /= 62
    end
    
    str.reverse
  end
  
  module_function :encode, :decode
end 