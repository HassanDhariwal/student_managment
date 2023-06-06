# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1st 
# student = Student.new(:name =>"hassan", :age => "23",:father_name => "Riaz",:phone_number => "090078601",:email => "hassan@2625",
# :blood_group => "B-" )

# student.save

# 2nd 
# Student.create(:name =>"Ali", :age => "48",:father_name => "Hamza",:phone_number => "0080",:email => "aliahmed@625",:blood_group =
# > "B-" )

# 3rd 
# student = Student.create(:name =>"ABR", :age => "28",:father_name => "Riaz",:phone_number => "233480",:email => "abr@625",:blood_
# group => "A-" )

# StudentClass Table 2
# First recode  
# s_class = ap StudentClass.create(section_name: "B", teach  er_name: "Ahmed", student_name: "Ali" )
# 2nd recode
# s_class = StudentClass.new(section_name: "A", teacher_name: "Ali", student_name: "abubakr" )
# 3rd recode
# s_class = StudentClass.create(section_name: "C", teacher_name: "ZAiN", student_name: "ABR" )
# 4th recode
# s_class = StudentClass.create(section_name: "A", teacher_name: "farooq", student_name: "ali" )
# 5th recode
# s_class = StudentClass.new(section_name: "A", teacher_name: "farooq_ali", student_name: "ali" )
# 2.7.1 :043 > s_class.save
# 5th recode not Write this 
# s_class = ap StudentClass.new(section_name: "A", teacher_
# #<StudentClass:0x00005589c1319408> {
#               :id => nil,
#     :section_name => "A",
#     :teacher_name => "Ali",
#       :updated_at => nil
# }
# 2.7.1 :011 > s_class.save
# Traceback (most recent call last):
#         1: from (irb):11
# NoMethodError (undefined method `save' for nil:NilClass)
# 6th recode 
# s_class = StudentClass.new(section_name: "A", teacher_name: "farooq_ali", student_name: "ali", grade: 12 )
