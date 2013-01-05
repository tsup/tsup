class RenameMessages < ActiveRecord::Migration
  def up
    rename_table :messages, :tsups
  end

  def down
    rename_table :tsups, :messages
  end
end
