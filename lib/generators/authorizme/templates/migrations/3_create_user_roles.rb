class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name

      t.timestamps
    end
    
    Authorizme::UserRole.create!(:name => 'member')
  end

  
end