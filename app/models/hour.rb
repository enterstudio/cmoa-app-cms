class Hour < ActiveRecord::Base

  def print_dow(dow, fmt = "%I:%M %P")

    if dow == 1
      start_time = self.sunday_start
      end_time = self.sunday_end
    elsif dow == 2
      start_time = self.monday_start
      end_time = self.monday_end
    elsif dow == 3
      start_time = self.tuesday_start
      end_time = self.tuesday_end
    elsif dow == 4
      start_time = self.wednesday_start
      end_time = self.wednesday_end
    elsif dow == 5
      start_time = self.thursday_start
      end_time = self.thursday_end
    elsif dow == 6
      start_time = self.friday_start
      end_time = self.friday_end
    elsif dow == 7
      start_time = self.saturday_start
      end_time = self.saturday_end
    else
      return ''
    end
    if start_time.blank? || end_time.blank?
      return 'Closed'
    end

    return start_time.strftime(fmt) + " to " + end_time.strftime(fmt)
  end

  def self.dow(dow)
    days_of_week = ['', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

    if dow in 1..7
      return days_of_week[dow]
    end

    return nil
  end
end