class CreateExperimentVariants < ActiveRecord::Migration
  def change
    create_table :experiment_variants do |t|
      t.string :name
      t.references :experiment, index: true

      t.timestamps
    end
  end
end
