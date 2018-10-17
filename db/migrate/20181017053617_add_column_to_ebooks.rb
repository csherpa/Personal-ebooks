class AddColumnToEbooks < ActiveRecord::Migration[5.2]
  def change
    add_column :ebooks, :user_id, :integer
  end
end
