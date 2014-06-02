class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.datetime :run_until
      t.string :description_a
      t.string :description_b

      t.timestamps
    end
  end
end
