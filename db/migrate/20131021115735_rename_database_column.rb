class RenameDatabaseColumn < ActiveRecord::Migration

  def change
    rename_column :skills, :name, :skill
  end

end
