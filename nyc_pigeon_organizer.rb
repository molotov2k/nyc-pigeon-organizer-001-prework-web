def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = []
  
  data.each do |key, att_lvl1|
    att_lvl1.each do |att_lvl2, pigeons|
      pigeon_names << pigeons
    end
  end
  
  pigeon_names.flatten.uniq.each do |name|
    pigeon_list[name] = {}
    data.each do |key, att_lvl1|
      pigeon_list[name][key] = []
      att_lvl1.each do |att_lvl2, pigeons|
        pigeon_list[name][key] << att_lvl2.to_s if pigeons.include?(name)
      end
    end
  end

  pigeon_list
end