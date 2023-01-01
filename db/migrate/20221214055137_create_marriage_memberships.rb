class CreateMarriageMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :marriage_memberships do |t|
      t.references :person, null: false, foreign_key: true
      t.references :marriage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
