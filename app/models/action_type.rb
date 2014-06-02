class ActionType < ActiveRecord::Base
  def self.view
    self.find_by_name('view')
  end

  def self.action
    self.find_by_name('action')
  end
end
