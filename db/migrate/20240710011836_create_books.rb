class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover_image
      t.integer :status
      t.string :pdf
      t.string :review

      t.timestamps
    end
  end
end
