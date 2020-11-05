require 'pry'

# def nyc_pigeon_organizer(data)
#   data.each_with_object({}) do |(key, values), result|
#     values.each do |attributes, names|
#       names.each do |name|
#         if result[name] == nil
#           result[name] = {}
#         end
#         if !result[name][key]
#           !result[name][key] = []
#         end
#         result[name][key].push(attributes.to_s)
#       end
#     end
#   end
# end
 
















def nyc_pigeon_organizer(pigeon_hash)
  result = {}
  pigeon_hash.each do |color_gender_lives, attributes|
    attributes.each do |characteristics, array_names|
      array_names.each do |name|
        if result[name] == nil
          result[name] = {}
        end
        if result[name][color_gender_lives] == nil
          result[name][color_gender_lives] = []
        end
        result[name][color_gender_lives].push(characteristics.to_s)
      end
    end
  end 
  result
end






