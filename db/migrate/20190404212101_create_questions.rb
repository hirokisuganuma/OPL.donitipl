class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :questions, [:user_id, :created_at]
  end
end
