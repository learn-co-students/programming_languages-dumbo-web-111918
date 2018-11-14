def reformat_languages(languages)
  hash = {}
  languages.each do |styl, lang_hash|
    lang_hash.each do |language, attributes|
      if hash[language]
        hash[language][:style].push(styl)
      else
        hash[language] = attributes
        hash[language][:style] = [styl]
      end
    end
  end 
  hash 
end
