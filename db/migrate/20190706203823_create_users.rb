class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps 
    end

    create_table :tasks do |t|
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end