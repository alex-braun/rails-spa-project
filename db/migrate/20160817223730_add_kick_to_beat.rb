class AddKickToBeat < ActiveRecord::Migration
  def change
    add_column :beats, :kick, :string
  end
end
