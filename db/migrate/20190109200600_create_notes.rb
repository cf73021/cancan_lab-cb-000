class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
