class RenameTableExperimentData < ActiveRecord::Migration
  def change
    rename_table :experiment_variants, :experiment_data
  end
end
