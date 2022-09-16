class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :contact_no
      t.date :dob
      t.string :email_id,unique: :true

      t.timestamps
    end

  end
end
