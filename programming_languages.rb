#=begin
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
#=end


def reformat_languages(languages)
  # your code here
  hash_new = {}
    languages.each do |style, style_hash|
      style_hash.each do | name, name_hash|
        name_hash.each do |type, type_value|
          hash_new[name] = {type: type_value, :style => []} unless hash_new.include?(name)
          hash_new[name][:style] << style
      end
    end
  end
  hash_new
end
