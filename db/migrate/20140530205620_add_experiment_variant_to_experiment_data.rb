class AddExperimentVariantToExperimentData < ActiveRecord::Migration
  def change
    add_reference :experiment_data, :experiment_variant, index: true
  end
end
