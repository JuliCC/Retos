class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :first_name
      t.string :middle_name
      t.string :lastname
      t.string :identification
      t.datetime :birth_date
      t.string :age
      t.string :name_parient
      t.string :civil_status
      t.string :blood_type
      t.string :rh
      t.string :num_children
      t.string :num_abortions
      t.string :ovarian_cancer
      t.string :alzheimer
      t.string :diabetes
      t.text :diseases

      t.timestamps null: false
    end
  end
end
