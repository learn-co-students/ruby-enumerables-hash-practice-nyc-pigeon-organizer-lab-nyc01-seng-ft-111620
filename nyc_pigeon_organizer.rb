require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}

data.each do |color_gender_lives, categories|
  categories.each do |values, array_birds|
    array_birds.each do |name|
      
      if new_hash.has_key?(name)
        if new_hash[name].has_key?(color_gender_lives)
          new_hash[name][color_gender_lives] << values.to_s
        else
          new_hash[name][color_gender_lives] = [values.to_s]
      end
      else
        new_hash[name] = {color_gender_lives => [values.to_s]}
      end
      end
    end
  end
new_hash
end
