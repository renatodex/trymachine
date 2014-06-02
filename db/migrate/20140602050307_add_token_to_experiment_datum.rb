class AddTokenToExperimentDatum < ActiveRecord::Migration
  def change
    add_column :experiment_data, :token, :string
    add_index :experiment_data, :token, unique: true
  end
end
