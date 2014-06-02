class ExperimentVariantController < ApplicationController

  def create_data
    ExperimentDatum.create_for_variant(params[:variant_id], params[:action_name], params[:token])
    render_success
  rescue
    render_error
  end

  private
  def render_success
    render :json => {
      message: 'Success'
    }
  end

  def render_error
    render :json => {
      message: 'Could not register variant'
    }
  end
end
