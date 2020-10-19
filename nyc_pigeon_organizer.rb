require 'pry'

def nyc_pigeon_organizer(data)
  
  #result = {}
  
  data.each_with_object({}) do |(key, values), result|
    values.each do |attributes, names|
      names.each do |name|
        if result[name] == nil
          result[name] = {}
        end
        if !result[name][key]
          !result[name][key] = []
        end
        result[name][key].push(attributes.to_s)
      end
    end
  #result
  #binding.pry
  end
end
 


