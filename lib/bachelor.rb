def get_first_name_of_season_winner(data, season)
   data.each do |key, value|
     if key == season
      # if key(season) = the season being passed in
       value.each do |contenstant|
        # then iterate over the values...for each value 
         if contenstant.has_value?("Winner")
          # if the value(which is the key now) has a value of "winner"
           return contenstant["name"].split(" ")[0]
          # return the first name
         end
       end
     end
   end
 end		 
 
def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |info|
    if info["occupation"] == occupation
    return info["name"]
      end
    end
  end
end	 

def count_contestants_by_hometown(data, hometown)
  count = 0
   data.each do |season, info|
     info.each do |contestant|
       if contestant["hometown"] == hometown
         count += 1
       end
     end
   end
   count
 end		 
 
def get_occupation(data, hometown)
  data.each do |season, info|
     info.each do |contestant|
       if contestant["hometown"] == hometown
         return contestant["occupation"]
       end
     end
   end
 end		 

 
