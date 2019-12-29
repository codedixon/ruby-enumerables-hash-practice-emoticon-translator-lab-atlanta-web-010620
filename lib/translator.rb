require "yaml"
<<<<<<< HEAD
require 'pry'

def load_library(file)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |key, value|
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
     
   # new_hash = {}
  #new_hash[:get_meaning] = {}
end
return new_hash
end

def get_japanese_emoticon(file, emoticon)
 emoticons = load_library(file)
 if emoticons[:get_emoticon][emoticon]
  return emoticons[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
 emoticons = load_library(file)
 if emoticons[:get_meaning][emoticon]
  return emoticons[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
=======

def load_library(file)
  new_hash = {}
  emoticons = YAML.load_file(file)
     #emoticons.each do |key, value|
       #new_hash[:get_meaning] = {value[1] => key}
    #   new_hash[:get_meaning][key.each] = value
    #new_hash[:get_emoticon] = {}
    # new_hash[:get_emoticon][] = value
 new_hash = emoticons.reduce({}) do |memo, (key,value)|
   memo[:get_meaning] = {value[1] => key}
  memo[:get_emoticon] = {value[0] => value[1]}
  memo
end
puts new_hash
return new_hash
end

def get_japanese_emoticon(file)
  #emoticons = YAML.load_file(file)
  #japanese_translation = emoticons.reduce({}) do |memo, (key,value)|
  #  memo[key] = value[1]
   # memo
  #end
  #return japanese_translation
end

def get_english_meaning(file)
#  emoticons = YAML.load_file(file)
 #  english_translation = emoticons.reduce({}) do |memo, (key,value)|
  #  memo[key] = value[0]
  #end
  #return english_translation
>>>>>>> 729d719fd45b2edf2633d780416a8a682f5caf8d
end