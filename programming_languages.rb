require 'pry'

def reformat_languages(languages)
  hash = {}
  languages.each{|key, value|
    value.each{|key1, value1|
    if hash[key1]
      hash[key1][:style].push(key)
    else
      value1.each{|key2, value2|
      hash[key1] = {key2=>value2, :style => [key]}}
    end
      }}
    hash
end
