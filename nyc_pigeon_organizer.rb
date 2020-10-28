require 'pry'

def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |pigeon_name|
        if(hash[pigeon_name] == nil)
          hash[pigeon_name] = {}
        end
        if(hash[pigeon_name][key] == nil)
          hash[pigeon_name][key] = []
        end
        hash[pigeon_name][key] << inner_key.to_s
    end
    end
  end
  return hash
end
