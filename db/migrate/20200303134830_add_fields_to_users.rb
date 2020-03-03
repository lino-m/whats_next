class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :achievement_score, :integer, default: 0
    add_column :users, :impressions, :integer, default: 0
  end
end
