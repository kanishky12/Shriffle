# frozen_string_literal: true

# StudentController starts from here
class StudentsController < ApplicationController
  before_action :set_student, only: %i[edit destroy]
  skip_before_action :verify_authenticity_token

  def index
    @students = Student.all
    render json: @students
  end

  def show
    @student = Student.find(params[:id])
    # @student = Student.find(student_params)
    render json: @student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors
    end
  end

  def destroy
    @student.destroy
    render json: @student
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.permit(:name, :city, :phone, :password)
  end
end
