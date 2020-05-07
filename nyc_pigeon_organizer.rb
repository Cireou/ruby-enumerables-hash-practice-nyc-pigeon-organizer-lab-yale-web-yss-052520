def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each {|key,val| collect_attr(new_hash, key, val)}
  new_hash
end

def collect_attr(new_hash, key, val)
  val.each {|
  
  
  