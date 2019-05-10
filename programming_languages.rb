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
  languages.each do |functional_type, info|
    info.each do |language_name, language_facts|
      if new_hash.has_key?(language_name) == false
        new_hash[language_name] = language_facts
        new_hash[language_name][:style] = []
      end
        new_hash[language_name][:style] << functional_type 
    end 
  end 
  new_hash
end
