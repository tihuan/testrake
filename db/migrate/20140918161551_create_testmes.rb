class CreateTestmes < ActiveRecord::Migration
  def change
    create_table :testmes do |t|

      t.timestamps
    end
  end
end
