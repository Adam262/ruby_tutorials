def translate(str)
  
  vowel_pool = "aeiou"
  strArr = str.scan(/\w+/) #str.split

  strArr.each do |el| 
    #el[0] is vowel
    if vowel_pool.include?(el[0])
      first_con = ""
    # 'qu' edge case
    elsif el[0..1] == "qu"
      first_con = el.slice!(0..1)
    #el[0] is consonant
    elsif !vowel_pool.include?(el[0])
        # 1 consonant only
        if vowel_pool.include?(el[1])
          first_con = el.slice!(0,1)
        # 'consonant' + 'qu' edge case 
        elsif el[1..2] == "qu"
          first_con = el.slice!(0..2)
        elsif !vowel_pool.include?(el[1]) && vowel_pool.include?(el[2])
          first_con = el.slice!(0..1)
        # 3 consonants
        elsif !vowel_pool.include?(el[1]) && !vowel_pool.include?(el[2])
          first_con = el.slice!(0..2)
        end
    end
    el = el<<first_con<<"ay" #string concat
  end

  strArr.join(" ")
end

