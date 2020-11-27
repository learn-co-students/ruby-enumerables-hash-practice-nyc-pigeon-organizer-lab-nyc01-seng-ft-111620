def nyc_pigeon_organizer(data)
  new_array = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        
        if !new_array[name]
          new_array[name] = {}
        end

        if !new_array[name][key]
          new_array[name][key] = []
        end

        new_array[name][key] << inner_key.to_s

      end
    end
  end
  new_array
end