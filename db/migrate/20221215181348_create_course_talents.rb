class CreateCourseTalents < ActiveRecord::Migration[6.1]
  def change
    create_table :course_talents do |t|
      t.integer :course_id
      t.integer :talent_id
      t.timestamps
    end
  end
end
