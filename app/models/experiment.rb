class Experiment < ActiveRecord::Base
  has_many :experiment_data
  has_many :experiment_variants
  belongs_to :user
end
