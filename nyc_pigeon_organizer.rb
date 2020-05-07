def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key,val| 
    collect_attr(new_hash, key, val)
  end 
  new_hash
end

def collect_attr(new_hash, key, val)
  val.each do |attr_val, names| 
    for name in names
      new_hash[name] = {}
  end 
  