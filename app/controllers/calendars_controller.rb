
      wday_num = Date.today.wday
      if wday_num >= 7
        wday_num = wday_num -7
      end
       
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans, wday: wdays[(@todays_date + x).wday]}
