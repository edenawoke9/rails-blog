class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :genra
      t.string :author
      t.integer :date

      t.timestamps
    end
  end
end
