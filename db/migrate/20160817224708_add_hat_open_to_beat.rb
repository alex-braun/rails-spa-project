class AddHatOpenToBeat < ActiveRecord::Migration
  def change
    add_column :beats, :hatOpen, :string
  end
end
