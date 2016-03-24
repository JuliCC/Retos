class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :middle_name
      t.string :lastname
      t.string :identification
      t.datetime :birth_date
      t.string :sex
      t.string :age
      t.string :name_parient
      t.string :blood_type
      t.string :rh
      t.string :cancer
      t.string :diabetes
      t.string :other
      t.string :hepb
      t.string :hepa
      t.string :var
      t.text :diseases

      t.timestamps null: false
    end
  end
end
