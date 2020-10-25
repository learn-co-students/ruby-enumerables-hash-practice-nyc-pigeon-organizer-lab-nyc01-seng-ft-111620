def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |c_g_l, values|
    values.each do |info, names|
      names.each do |name|
        if pigeon_list[name] == nil 
          pigeon_list[name] = {}
        end
        if pigeon_list[name][c_g_l] == nil
          pigeon_list[name][c_g_l] = []
        end
        pigeon_list[name][c_g_l] << info.to_s 
      end
    end
  end
  pigeon_list
end
