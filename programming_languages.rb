def reformat_languages(languages)
  language_new = {}

  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_new[language].nil?
          language_new[language] = {}
        end
        language_new[language][:style] ||= []
        language_new[language][:style] << oo_or_functional
        if language_new[language][attribute].nil?

          language_new[language][attribute] = str_value
        end
      end
    end
  end
  language_new
end
