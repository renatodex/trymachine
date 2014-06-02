class ExperimentVariant < ActiveRecord::Base
  belongs_to :experiment
  has_many :experiment_data

  def conversion_rate
    (self.interactions.to_f/self.views.to_f)*100
  end

  def views
    view = ActionType.find_by_name('view')
    self.experiment_data.where(action_type_id:view).count
  end

  def interactions
    action = ActionType.find_by_name('action')
    self.experiment_data.where(action_type_id:action).count
  end
end
