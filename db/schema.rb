# encoding: UTF-8

ActiveRecord::Schema.define(version: 20140406085700) do

  create_table "gists", force: true do |t|
    t.text     "snippet"
    t.string   "lang"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
