class CreateLandmarks < ActiveRecord::Migration
  def change

    create_table :landmark do |t|
      t.string :name
      t.integer :figure_id
      t.integer :year_completed
    end

  end

  end
