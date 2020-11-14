one to one
  classroom has one teacher
  one teacher belongs to one classroom
    put a foreign key on the teachers table
      
      has_one, belongs_to
      class Teacher < ApplicationRecord
        has_one: classroom
      
      class Classroom < ApplicationRecord
        belongs_to :teacher
      

one to many
  teacher teaches many courses
  course belongs to one teacher
    put a foreign key on the courses table
      
      has_many, belongs_to
      class Teacher < ApplicationRecord
        has_many: courses #:dependent => :destroy #remove the all the comments (so no orphaned record) when a teacher is deleted

      class Course < ApplicationRecord
        belongs_to :teacher  # , optional: true to turn off the validation that there has to be a relationship to courses


many to many
  course has many students and belongs to many students
  student has many courses and belongs to many courses
    there is a join table that has two foreign keys in the table (but the join table does not have a model)
      
      has_and_belongs_to_many
      for when an object has many objectts that belong to it but not exclusively
      class BlogPost < ApplicationRecord
         has_and_belongs_to_many :categories
      class Category < ApplicationRecord
      Category has_and_belongs_to_many :blogposts


rich join associations
  class Course < ApplicationRecord
    has_many :course_enrollments

  class Student < ApplicationRecord
    has_many :course_enrollments

  class CourseEnrollment < ApplicationRecord
    belongs_to :course #has foreign keys
    belongs_to :student #has foreign keys
  

