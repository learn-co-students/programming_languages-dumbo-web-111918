require 'pry'

def reformat_languages(language)
  new_hash = {}
  language.each do |style, attributes|
    attributes.each do |language_name,type|
      new_hash[language_name] = type
      new_hash[language_name][:style] = [style]
    
    end
  end
  puts new_hash
end
 
