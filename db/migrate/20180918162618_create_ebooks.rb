class CreateEbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :ebooks do |t|
      t.string :title
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
