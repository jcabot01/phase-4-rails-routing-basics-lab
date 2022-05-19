class StudentsController < ApplicationController
  def index 
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    render json: students.order('grade DESC')
  end

  def highest_grade
    students = Student.all
    render json: students.order('grade DESC').first
  end
end
