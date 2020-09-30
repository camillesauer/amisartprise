class AddColumnAmis < ActiveRecord::Migration[6.0]
  def change
    add_column :amis, :adresse, :string
    add_column :amis, :mail, :text
    add_column :amis, :nom, :string
    add_column :amis, :prenom, :string
    add_column :amis, :telephone, :string
    add_column :amis, :adhesion, :string
    add_column :amis, :category_id, :string
  end
end
