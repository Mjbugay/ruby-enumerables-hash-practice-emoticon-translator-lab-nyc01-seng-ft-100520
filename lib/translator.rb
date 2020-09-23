require 'yaml'
require 'pry'


def load_library(path)
  library = YAML.load_file(path)
  results = Hash.new
  library.each do |key, value|
    results[key] = {
      :english => value[0],
      :japanese => value[1]
    }
  end
  results
end
  
def get_japanese_emoticon

end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  library.each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
end


puts get_english_meaning("./lib/emoticons.yml", "☜(⌒▽⌒)☞")
 
 