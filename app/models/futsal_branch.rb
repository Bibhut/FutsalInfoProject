class FutsalBranch < ActiveRecord::Base
  belongs_to :FutsalMain
  attr_accessible :location, :name, :phone_number, :futsal_main_id
end
