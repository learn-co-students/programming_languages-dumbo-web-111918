require 'pry'

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
  new_hash = {}
  languages.each do |stylez, name|
    name.each do |key, value|
      value.each do |one, two|
        if key == :javascript
          new_hash[key] = {
            one => two,
            :style => [:oo, :functional]
          }
        else
          new_hash[key] = {
            one => two,
            :style => [stylez]}
        end
      end
    end
  end
  new_hash
end
