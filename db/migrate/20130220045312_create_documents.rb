class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|

    	t.integer :user_id , null:false
    	t.integer :attachfile_id
    	t.integer :groupid
    	t.integer :version
    	t.boolean :published , default:false
    	t.string :title , null:false
    	t.text :content 
    	t.integer :readcount , default:0

      t.timestamps
    end
  end
end
