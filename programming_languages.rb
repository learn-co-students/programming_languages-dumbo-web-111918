require pry

def reformat_languages
  hash = {}
  language[style].each do |type, lang|
    binding.pry
   #hash[lang] = {style: , type:}
 
   puts hash
  end
end