class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :sex
      t.date :birthdate
      t.text :address
      t.integer :birth_order
      t.boolean :alive
      t.string :marriage_status

      t.timestamps
    end
  end
end
