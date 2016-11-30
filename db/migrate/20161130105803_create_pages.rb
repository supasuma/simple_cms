class CreatePages < ActiveRecord::Migration[5.0]
    def change
        create_table :pages do |t|
            t.integer 'subject_id', null: false
            t.string 'name', null: false
            t.integer 'permalink', null: false
            t.integer 'position', null: false
            t.boolean 'visible', default: false
            t.timestamps
        end
        add_index('pages', 'subject_id')
        add_index('pages', 'permalink')
    end

    def down
        drop_table :pages do |t|
        end
    end
end
