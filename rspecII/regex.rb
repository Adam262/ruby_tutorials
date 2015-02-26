class Regex 
  def match_any_one(regex, str)
    /#{regex}/.match(str).to_s 
  end  

  def match_greedy(str)
    /.*/.match(str).to_s
  end

  def match_lazy(str)
    /.?/.match(str).to_s
  end

  def match_word(str)
    /\w{6}/.match(str).to_s
  end

  def match_digits(str)
    str.scan(/\d+/)
  end

  def match_start(str)
    /^\w{2,4}/.match(str).to_s
  end

  def match_end(str)
    /\w{2,4}$/.match(str).to_s
  end

  def match_hex(str)
    /[A-F1-9]{6}/.match(str).to_s
  end

  def match_hex_posix(str)
    /[[:xdigit:]]{6}/.match(str).to_s
  end

  def match_token(length, str)
    /[a-zA-Z1-9]{#{length}}/.match(str).to_s
  end

  def match_password(str)
    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&]).{8,16}$/
    .match(str).to_s
  end

  def match_phone_number(str)
    /\(?\d{3}\)?\s?\d{3}(\-?|\s?)\d{4}/
    .match(str).to_s
  end
  
  def match_html(tag, str)
    /(?<=<#{tag}>).*(?=<\/#{tag}>)/
    .match("<#{tag}>#{str}</#{tag}>").to_s
  end
end