class CreateMarriages < ActiveRecord::Migration[7.0]
  def change
    create_table :marriages do |t|
      t.date :marriage_date
      t.date :termination_date

      t.timestamps
    end
  end
end
