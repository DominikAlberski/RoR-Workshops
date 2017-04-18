class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :nick
      t.string :email
      t.string :social
      t.text :notes

      t.timestamps
    end
  end
end
