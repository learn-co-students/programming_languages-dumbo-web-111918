require 'pry'

def reformat_languages(language)
  new_hash = {}
  language.each do |style, attributes|
    
    attributes.each do |language_name, type|
      
      new_hahs[language_name] << type
      new_ahsh[language_name] << style
     
    end
  end
  puts new_hash
end
