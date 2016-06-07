
#conditional opperator ||= if left is true leave alone if not do right
def nyc_pigeon_organizer(data)
  #get all the variables you need
  #use pry to check
  #set up what will be taking in your values
  #then use conditionals "if this is the case give it if not ignore it"
  new_hash = {}
  data.each do |attribute,attribute_hash|
    attribute_hash.each do |key, array_names|
      #info = purple..,male...,subway...
        array_names.each do |name|
          #array_names = ["Alex", "Theo"]
          new_hash[name] ||= {} #returns true if you already have a value assigned
          #does this name exist for a particular attribute if so set up its array?
### We've made the list of bird names with empty hashes
###those hashes will contain keyvalue pairs of color gender and lives
### now we need to update new hash at each name with their value pairs
          new_hash[name][attribute] ||= []
          if array_names.include?(name)
             new_hash[name][attribute] << key.to_s

          end
        end
    end
  end
    return new_hash
end
