require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key,val| 
    binding.pry
    collect_attr(new_hash, key, val)
  end 
  new_hash
end

def collect_attr(new_hash, key, val)
  val.each do |attr_val, names| 
    for name in names do
      new_hash[name] = {} if !new_hash[name]
      binding.pry
      new_hash[name][key] = [] if !new_hash[name][key]
      binding.pry
      new_hash[name][key].push(attr_val.to_s)
      binding.pry
    end 
  end 
  binding.pry
end 
  
# pigeon_data = {
#   :color => {
#     :brown => ["Luca"],
#     :black => ["Lola"],
#   },
#   :gender => {
#     :male => ["Luca"],
#     :female => ["Lola"]
#   },
#   :lives => {
#     "Central Park" => ["Lola"],
#     "Library" => ["Luca"]
#   }
# }