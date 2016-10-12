class CreateFlight < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer  :no_Vuelo
      t.date     :date
      t.datetime :departs
      t.string  :from
      t.string  :to
      t.time   :duration
      t.decimal :precio
      t.integer :passangers
    end

    create_table :booking do |u|
      u.integer    :no_Vuelo
      u.string     :from
      u.string     :to
      u.date       :date
      u.string     :name
      u.string     :email
    end
  end
end
