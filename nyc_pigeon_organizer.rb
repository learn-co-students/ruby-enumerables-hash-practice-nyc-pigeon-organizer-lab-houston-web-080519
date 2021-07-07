def nyc_pigeon_organizer(data)
	 pigeon_list = {}
   data.each do |property, property_hash|
    property_hash.each do |prop_spec, pigeon_array|
      pigeon_array.each do |pigeon|
        if pigeon_list.include?(pigeon)
          if !pigeon_list[pigeon].include?(property)
            pigeon_list[pigeon][property] = []
          end
          pigeon_list[pigeon][property].push(prop_spec.to_s)

         else
          pigeon_list[pigeon] = {}
          pigeon_list[pigeon][property] = []
          pigeon_list[pigeon][property][0] = prop_spec.to_s
        end
      end
    end
  end
   return pigeon_list
end