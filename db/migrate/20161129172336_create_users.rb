class CreateUsers < ActiveRecord::Migration[5.0]
    # def change
    #   create_table :users do |t|
    #
    #     t.timestamps
    #   end

    def up
        create_table :users do |t|
            # below first two are equivalent, second is shorthand
            t.column 'first_name', :string, limit: 25
            t.string 'last_name', limit: 50
            t.string 'email', default: '', null: false
            t.string 'password', limit: 40

            t.timestamps
            # t.datetime 'created_at'  this is what timestamps is doing
            # t.datetime 'updated_at'
        end
    end

    def down
        drop_table :users do |t|
        end
    end
end
