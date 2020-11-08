def nyc_pigeon_organizer(data)
new_hash = {}
  data.each do |color_gender_lives, values|
    values.each do |value, array|
      array.each do |name|
  if new_hash[name] == nil
      new_hash[name] = {}
  end 
  if new_hash[name][color_gender_lives] == nil
     new_hash[name][color_gender_lives] = [] 
  end 
  new_hash[name][color_gender_lives].push(value.to_s)
    
    
        
end 
end
end
new_hash
end
