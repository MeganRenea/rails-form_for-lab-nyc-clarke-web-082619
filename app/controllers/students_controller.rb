class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]

    def show

    end

    def new
        @student = Student.new
    end

    def edit
    
    end

    def create
        @student = Student.create(student_params)
        redirect_to @student

    end

    def update
        @student.update(student_params)
        redirect_to @student

    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end



end
