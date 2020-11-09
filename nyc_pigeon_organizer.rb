require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object ({}) do |(key, value), final_arrray|
    #binding.pry
    value.each do |inner_key, names|
      names.each do |name|
        # binding.pry
        if !final_arrray[name]
          final_arrray[name] = {}
        end
        if !final_arrray[name][key]
          !final_arrray[name][key]= []
        end
        final_arrray[name][key].push(inner_key.to_s) 
      end
    end
  end
  # binding.pry
end

