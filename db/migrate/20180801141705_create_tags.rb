class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title
    end

    create_table :gossips_tags do |t|
      t.belongs_to :tag
      t.belongs_to :gossip
    end
  end
end
