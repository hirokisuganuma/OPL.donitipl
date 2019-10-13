class AddColumnQuestions < ActiveRecord::Migration[5.2]
  def change
     add_column :questions, :answer_id, :integer
  end
end
