class CreateAmis < ActiveRecord::Migration[6.0]
  def change
    create_table :amis do |t|

      t.timestamps
    end
  end
end
