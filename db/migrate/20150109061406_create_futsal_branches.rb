class CreateFutsalBranches < ActiveRecord::Migration
  def change
    create_table :futsal_branches do |t|
      t.string :name
      t.string :location
      t.integer :phone_number
      t.references :futsal_main

      t.timestamps
    end
    add_index :futsal_branches, :futsal_main_id
  end
end
