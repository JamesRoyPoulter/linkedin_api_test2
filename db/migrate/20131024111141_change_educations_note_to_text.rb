class ChangeEducationsNoteToText < ActiveRecord::Migration

  def change
    change_column :educations, :notes, :text, :limit => nil
  end

end
