class CreateNote < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :user_id
    end
  end
end
