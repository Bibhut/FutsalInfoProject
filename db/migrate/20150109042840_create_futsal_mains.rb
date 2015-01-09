class CreateFutsalMains < ActiveRecord::Migration
  def change
    create_table :futsal_mains do |t|

      t.timestamps
    end
  end
end
