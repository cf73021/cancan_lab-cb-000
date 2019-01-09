class CreateViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :viewers do |t|

      t.timestamps
    end
  end
end
