class GoModel < ActiveRecord::Migration
  def change

    create_table "emailcategories" do |t|
      t.integer :user_id
      t.integer :category_id
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    create_table "textcategories" do |t|
      t.integer :user_id
      t.integer :category_id
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    create_table :users do |t|
      t.string :name
    end

    create_table :categories do |t|
      t.string :name
    end

    #make some seed data why not
    User.create(name:"Archer")
    Category.create(name:"Danger Zone")
    Category.create(name:"Vodka")
    Category.create(name:"Gummy Bears")


  end
end
