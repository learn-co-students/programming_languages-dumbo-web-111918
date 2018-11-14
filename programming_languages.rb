require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    # binding.pry
    language.each do |language_name, attribute|
      # binding.pry
      new_hash[language_name] = attribute
      if new_hash[language_name].has_key?(:style) == false
        new_hash[language_name][:style] = Array.new
      end
    end
  end
  languages.each do |style, language|
    # binding.pry
    language.each do |language_name, attribute|
      new_hash[language_name][:style] << style
      # binding.pry
    end
  end
  return new_hash
end

reformat_languages(languages)
