class CalendarsController < ApplicationController
  # １週間のカレンダーと予定が表示されるページ
  def index
    get_week
    @plan = Plan.new
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan)
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']

      wday_num = Date.today.wday
      if wday_num >= 7
        wday_num = wday_num -7
      end
       
      days = { month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans, wday: wdays[(@todays_date + x).wday]}
      @week_days.push(days)
    end
  end
end
