class FutsalMain < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :futsal_name
   has_many :futsal_branches, dependent: :destroy
end
