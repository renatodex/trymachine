class CreateExperimentData < ActiveRecord::Migration
  def change
    create_table :experiment_data do |t|
      t.references :experiment, index: true
      t.references :actiontype, index: true

      t.timestamps
    end
  end
end
