def reformat_languages(languages)
  new_hash = {}
  languages[:oo].each do |name, type|
    new_hash[name] = type 
    new_hash[name][:style] = [:oo] 
  end  
    languages[:functional].each do |name, type|
      if name == :javascript 
        new_hash[name] = type
        new_hash[name][:style] = [:oo, :functional]
      else
      new_hash[name] = type 
      new_hash[name][:style] = [:functional] 
      end
  end  
  return new_hash
end
