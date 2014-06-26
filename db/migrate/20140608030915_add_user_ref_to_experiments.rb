class AddUserRefToExperiments < ActiveRecord::Migration
  def change
    add_reference :experiments, :user, :index => true
  end
end
