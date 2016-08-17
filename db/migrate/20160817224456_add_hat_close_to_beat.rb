class AddHatCloseToBeat < ActiveRecord::Migration
  def change
    add_column :beats, :hatClose, :string
  end
end
