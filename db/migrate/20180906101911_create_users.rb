class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :e
      t.string :f
      t.string :g
      t.string :h
      t.string :i
      t.string :j
      t.string :k
      t.string :l
      t.string :m
      t.string :n
      t.string :o
      t.string :p
      t.string :q
      t.string :r
      t.string :s
      t.string :t
      t.string :u
      t.string :v
      t.string :w
      t.string :x
      t.string :y
      t.string :z

      t.timestamps
    end
  end
end
