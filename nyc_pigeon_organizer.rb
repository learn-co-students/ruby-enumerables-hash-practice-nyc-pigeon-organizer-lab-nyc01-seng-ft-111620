require 'pry'
pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
# # def nyc_pigeon_organizer(data)
# #   data.each_with_object({}) do |(key, values), result|
# #     values.each do |attributes, names|
# #       names.each do |name|
# #         if result[name] == nil
# #           result[name] = {}
# #         end
# #         if !result[name][key]
# #           !result[name][key] = []
# #         end
# #         result[name][key].push(attributes.to_s)
# #       end
# #     end
# #   end
# # end
 
















# # def nyc_pigeon_organizer(pigeon_hash)
# #   result = {}
# #   pigeon_hash.each do |color_gender_lives, attributes|
# #     attributes.each do |characteristic, array_names|
# #       array_names.each do |name|
# #         if result[name] == nil
# #           result[name] = {}
# #         end
# #         if result[name][color_gender_lives] == nil
# #           result[name][color_gender_lives] = []
# #         end
# #         result[name][color_gender_lives].push(characteristic.to_s)
# #       end
# #     end
# #   end 
# #   #binding.pry
# #   result
# # end








def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(color_gender_lives, attributes), result|
    attributes.each do |specs, names|
      names.each do |name|
        result[name] = {} if !result[name] 
        result[name][color_gender_lives] = [] if !result[name][color_gender_lives]
        result[name][color_gender_lives].push(specs.to_s)
      end
    end
  end
end


















