class AddPriceToMilestones < ActiveRecord::Migration[5.2]
  def change
    add_monetize :milestones, :price, currency: { present: false }
    add_column :milestones, :url, :string
  end
end
