module ExperimentHelper
  def percentage_bar(start_at, end_at)
    remaining_days = ((end_at.to_date)-(Date.today)).to_i
    total_days = ((end_at.to_date)-(start_at.to_date)).to_i
    to_percentage(100-remaining_days*100/total_days)
  end
end
