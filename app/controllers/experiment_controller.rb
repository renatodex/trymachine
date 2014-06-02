class ExperimentController < ApplicationController
  def new
    experiment = Experiment.find_by_id(params[:id])

    if Date.today < experiment.run_until
      experiment_variants = experiment.experiment_variants
      selected_key = (0..experiment_variants.count-1).to_a.sample
      selected_variant = experiment_variants[selected_key]

      render :json => {
        experiment_variant_id: selected_variant.id,
        experiment_variant_slug: selected_variant.name.parameterize,
        token_view: SecureRandom.uuid,
        token_action: SecureRandom.uuid
      }
    end
  rescue
    render :json => { error: 'Could not retrieve the Experiment.' }
  end

  def index
    @experiments = Experiment.where("run_until > '#{DateTime.now}'")
  end
end
