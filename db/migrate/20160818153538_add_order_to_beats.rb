class AddOrderToBeats < ActiveRecord::Migration
  def change
    add_column :beats, :order, :integer
  end
end
