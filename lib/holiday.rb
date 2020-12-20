require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter][:christmas] << supply
 holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holiday|
    puts "#{seasons.capitalize}:"
    holiday.each do |holiday, supplies|
  puts "  #{holiday.to_s.split("_").map {|hol_arr| hol_arr.capitalize}.join(" ")}: #{supplies.join(", ")}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_arr = holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday
      end
    end
  end
  new_arr.flatten.compact
end







