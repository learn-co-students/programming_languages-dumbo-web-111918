def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, type|
      if new_hash[name] == nil
          new_hash[name] = type
        end
      new_hash[name][:style] = []
      new_hash[name][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end