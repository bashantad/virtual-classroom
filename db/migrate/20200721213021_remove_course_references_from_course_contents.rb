class RemoveCourseReferencesFromCourseContents < ActiveRecord::Migration[6.0]
  def change
    remove_reference :course_contents, :course, null: false, foreign_key: true
  end
end
