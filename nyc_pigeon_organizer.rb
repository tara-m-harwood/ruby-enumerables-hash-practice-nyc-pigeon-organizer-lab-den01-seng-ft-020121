def nyc_pigeon_organizer(data)
  # write your code here!
  
  new_hash = {}
  
  data.each do | outer_key, outer_value |
    
    outer_value.each do | inner_key, inner_array |
      
      inner_array.each do | element |
        
        element = element.to_s
        outer_key = outer_key.to_sym
        inner_key = inner_key.to_s
        
        
        # check if the element has already been added to the hash
        if new_hash[element]
          
          #if the element was already added, check if the outer key was already added
          if new_hash[element][outer_key]
            
            # if the outer key was already there, shovel the inner_key into the array
            new_hash[element][outer_key] << inner_key
          else
            
            # if the outer key hasn't been added, create the outer_key and assign to the inner_key
            new_hash[element][outer_key] = [inner_key]
          end  
          
        else
          # if the element hasn't been added, create the record with the outer and inner keys
          new_hash[element] = {outer_key => [inner_key]}
         
        end
      
       end
       
      end  
 
    end
  
  puts new_hash
  new_hash
end

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

      
nyc_pigeon_organizer(pigeon_data)
