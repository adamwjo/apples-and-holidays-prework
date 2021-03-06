require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.collect do |key, value|
    if key == :winter
      value.collect do |key, value|
        value.push(supply)
      end
    end
  end
end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays




def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.collect do |key, value|
    if key == :spring
      value.collect do |key, value|
        value.push(supply)
      end
    end
  end


  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = holiday_hash[:winter].values
  array.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |key, value|
    puts key.to_s.capitalize + ":"
    value.collect do |key, value|
      new_word = key.to_s.split("_").collect do |item|
        item.capitalize
      end.join(" ")

      puts "  " + new_word + ": " + value.join(", ")
    end
  end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.collect do |key, value|
    value.collect do |key, value|
      if value.include?("BBQ")
        arr.push(key)
      end
    end
  end
  arr   
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
