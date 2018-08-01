class CreateFigureTitles < ActiveRecord::Migration
def change

  create_table :figure_title do |t|
    t.integer :figure_id
    t.integer :title_id
  end


end

end
