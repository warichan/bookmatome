class CreateSiteDates < ActiveRecord::Migration
  def change
    create_table :site_dates do |t|
      t.string :site_name
      t.string :url

      t.timestamps null: false
    end
  end
end
