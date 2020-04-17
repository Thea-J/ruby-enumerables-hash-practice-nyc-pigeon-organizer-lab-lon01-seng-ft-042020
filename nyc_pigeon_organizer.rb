def nyc_pigeon_organizer(data)
hash = {}
data.each do |tier1_attributes, values|
values.each do |value, array|
  array.each do |name|
    if hash[name] == nil
      hash[name] = {}
      hash[name][tier1_attributes] = []
    else 
      hash[name][tier1_attributes] = []
end
end
end
end
hash.each do |name, values|
  values.each do |hashvalue, array|
   data.each do |tier1_attributes, values|
    values.each do |value, array|

      array.each do |element|
        if element == name && hashvalue == tier1_attributes
          hash[name][hashvalue] << value.to_s
        end
      end
    end
  end
end
end
hash
end