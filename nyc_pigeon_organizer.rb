def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.map do |k1,kv|
    kv.each do |k, v|
      v.map do |x|
        hash[x] ||= {}
        hash[x][k1] ||= []
        hash[x][k1] << k.to_s
      end
    end
  end
  return hash
end
