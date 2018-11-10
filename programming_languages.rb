def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, info|
    info.each do |name, stats|
      if new_hash[name]
        new_hash[name][:style] << type
      else
        new_hash[name] = stats
        new_hash[name][:style] = [type]
      end
    end
  end
  new_hash
end