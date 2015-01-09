class AddFutsalNameToFutsalMain < ActiveRecord::Migration
  def change
    add_column :futsal_mains, :futsal_name, :string
  end
end
