class CreateManyManyTables < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.string :name, null: false
      t.string :website
    end

    create_table :organisation_contacts do |t|
      t.string :country
      t.string :city
      t.string :city_code
      t.string :street
      t.belongs_to :organisation, index: true
    end

    create_table :tags do |t|
      t.string :name
      t.integer :tag_type
    end

    create_table :biographies do |t|
      t.text :description
      t.belongs_to :user, index: true
    end

    create_table :roles do |t|
      t.integer :role_type
    end

    create_table :projects do |t|
      t.integer :status
      t.string :name
      t.text :description
      t.integer :score
      t.belongs_to :organisation, index: true
    end

    create_table :feedback do |t|
      t.integer :score
      t.text :description
      t.belongs_to :project, index: true
      t.belongs_to :user_id , index: true
      t.integer :from
    end


    create_join_table :tags, :users
    create_join_table :organisations, :tags
    create_join_table :projects, :tags
    create_join_table :roles, :users
    create_join_table :projects, :users
    create_join_table :organisations, :users do |t|
      t.index :organisation_id
      t.index :user_id
      t.integer :relation_type
    end
  end
end
