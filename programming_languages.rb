require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, lang_data|
    lang_data.each do |language, v|
      new_hash[language] = { type: v.values.first, style: []}
    end
  end

  new_hash.map do |lang, data|
    languages.each do |type, lang_data|
      if lang_data.include?(lang)
        new_hash[lang][:style].push(type)
        #binding.pry
      end
    end
  end
  new_hash
end
