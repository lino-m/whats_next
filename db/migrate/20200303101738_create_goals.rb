class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :title
      t.string :motivation
      t.string :category
      t.integer :contribution
      t.boolean :completed, defaul: false

      t.timestamps
    end
  end
end
