class ListKlassStudentsController < ApplicationController
  def index
  end

  def search
    @klass = Klass.includes(:school).find(params[:klass_id])
  @students = @klass.students
  end

  def choose_school
    @school = School.find(params[:school_id])
    @klasses = @school.klasses
  end
end
