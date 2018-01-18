



def rot13_char(char)
  c = char.ord
  
  # Ignore all that isn't letters
  if c >= 65 # code of letters 
    new_char_code = c + 13
  else
    new_char_code = c
  end

  # Adjust A/a code for upcase or downcase
  if char == char.upcase
    a_code = "A".ord
  else
    a_code = "a".ord
  end
  

  # Check if is a letter after M ou m (code 77 or 109)
  if( c > (a_code + 12) )
    new_char_code = c - 13
  end
  
  return new_char_code.chr
end


def rot13(secret_messages)
    rot13_messages = []
    secret_messages.each do |message|
       rot13_messages << message.chars.map{ |c| rot13_char(c)}.join("")
    end
    return rot13_messages
end

secret_messages = ["Why did the chicken cross the road?","Gb trg gb gur bgure fvqr!", ]
#puts "Why did the chicken cross the road?".chars.map{ |c| rot13_char(c)}.join("")
#puts "Gb trg gb gur bgure fvqr!".chars.map{ |c| rot13_char(c)}.join("")
puts rot13(secret_messages).flatten(1).map{ |c| puts c}