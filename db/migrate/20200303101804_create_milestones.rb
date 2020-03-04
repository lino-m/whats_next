class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.references :goal, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :done

      t.timestamps
    end
  end
end
