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

def get_english_meaning
 
end

load_library('emoticons.yml')