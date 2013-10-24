class AddAccessToMentorSearchToUser < ActiveRecord::Migration
  def change
    add_column :users, :mentor_search, :boolean, :default => false
  end
end
