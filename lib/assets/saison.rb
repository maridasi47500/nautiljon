  require 'date'
  class Date

      def season
              year_day = Date.today.yday().to_i
                    year = Date.today.year.to_i
                          is_leap_year = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
                                if is_leap_year and year_day > 60
                                         # if is leap year and date > 28 february 
                                           year_day = year_day - 1
                                                 end
                                  
                                                       if year_day >= 355 or year_day < 81
                                                               result = :winter
                                                                     elsif year_day >= 81 and year_day < 173
                                                                             result = :spring
                                                                                   elsif year_day >= 173 and year_day < 266
                                                                                           result = :summer
                                                                                                 elsif year_day >= 266 and year_day < 355
                                                                                                        result = :autumn
                                                                                                              end
                                  
                                                                                                                    return result
                                                                                                                        end
  end
