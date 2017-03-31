class CreatePrivateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :user_me, references: :user
      t.references :user_he, references: :user

      t.timestamps
    end
  end
end
