class AddDeathdateToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :deathdate, :date
  end
end
