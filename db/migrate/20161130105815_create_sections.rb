class CreateSections < ActiveRecord::Migration[5.0]
    def change
        create_table :sections do |t|
            t.integer 'page_id', null: false
            t.string 'name', null: false
            t.integer 'position', null: false
            t.boolean 'visible'
            t.string 'content_type'
            t.text 'content'
            t.timestamps
        end
        add_index('sections', 'page_id')
    end

    def down
        drop_table :sections do |t|
        end
    end
end
