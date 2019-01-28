class StudentsController < ApplicationController
    before_action :load_student, only: [:show, :edit, :update]

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def show
    end

    def edit
    end

    def update
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private
        def load_student
            @student = Student.find_by_id(params[:id])
        end
        
		def student_params(*args)
			params.require(:student).permit(*args)
		end
end
