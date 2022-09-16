class CreateUserEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_educations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :degree
      t.date :start_date
      t.date :end_date
      t.string :grade
      t.float :percentage
      t.string :university_name

      t.timestamps
    end
  end
end
