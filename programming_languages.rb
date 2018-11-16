require "pry"

def languages 
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
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, details|
    details.each do |lang, values|
      values.each do |type, typeval|
        if lang == :javascript 
        new_hash[:javascript] = {type => typeval, :style => [:oo, :functional]}
        else
        new_hash[lang] = {type => typeval, :style => [key]}
        end
      end
    end
  end
  new_hash
end

reformat_languages(languages)
