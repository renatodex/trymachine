class RenameColumnFromExperimentVariant < ActiveRecord::Migration
  def change
    rename_column :experiment_variants, :actiontype_id, :action_type_id
  end
end
