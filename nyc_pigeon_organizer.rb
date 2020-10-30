
 def nyc_pigeon_organizer(data)
  
  final = data.each_with_object({}) do |(key,value), new_list|
    value.each do |attributes, names|
      names.each do |name|
        if !new_list[name]
          new_list[name] = {} 
        end 
        if !new_list[name][key]
           !new_list[name][key] = []
        end 
        new_list[name][key].push(attributes.to_s)
      end 
    end 
  end
end



# new hash = names => color, gender, location  