require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  thing=""
  
  holiday_hash.each do |season, stuff|
    
    if season == :summer
      
      stuff.each do |stuff, things|
        
        if stuff == :fourth_of_july
          
          thing=things[1]
          
        end
        
      end
      
    end
    
  end
  return thing
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, list|
        list.push(supply)
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holidays, things|
        if holidays == :memorial_day
          things.push(supply)
        end
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holidays[holiday_name]=supply_array
    end
  end



end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  winter_things=[]
  
  holiday_hash.each do |season, holidays|
    if season==:winter
      holidays.each do |holiday,supplies|
        supplies.each do |stuff|
          winter_things.push(stuff)
        end
      end
    end
  end

return winter_things
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |x,y|
    puts x.to_s.capitalize
    y.each do |a,b|
      a.each_key do |l|
        puts l
      end
      puts "#{new_a}:#{b.join(", ")}"
    end
  end

  

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  bbq_holidays=[]
  

  
end







