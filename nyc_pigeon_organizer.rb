require 'pry'
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def nyc_pigeon_organizer(data)

  new_hash = {}
    data.each do |property, options|
         options.each do |option, pigeons| #returns :purple & other keys etc. pigeons = returns array of pigeon names
          pigeons.each do |name| #iterate over pigeons to call out only the name
            new_hash[name] ||= {} #or else operation -- if it already has a name, it'll move on and be assigned the next name
              #name is set first in the hash as the format goes
                new_hash[name][property] ||= [] #each name iterates and points to property that has an array
                  new_hash[name][property][option]
  binding.pry

                #binding.pry
                # if new_hash[name].has_key? (property)
                #     new_hash[name][property] = []
                #
                #     if new_hash[name][property].include?(attribute)
                #     new_hash[name][property]<< attribute.to_s

                  #end
                end
              end
            end
        new_hash
      end
