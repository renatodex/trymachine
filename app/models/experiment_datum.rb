class ExperimentDatum < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :action_type
  belongs_to :experiment_variant

  def self.create_for_variant(variant_id, action_type_name, token)
    variant = ExperimentVariant.find_by_id(variant_id)
    ExperimentDatum.create(
      experiment_id: variant.experiment.id,
      experiment_variant_id: variant_id,
      token: token,
      action_type_id: (ActionType.find_by_name(action_type_name)).id,
    )
  end
end
