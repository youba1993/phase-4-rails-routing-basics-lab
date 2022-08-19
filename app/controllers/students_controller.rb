class StudentsController < ApplicationController
    
@@grades = Student.all.order('grade desc')

    def index 
       students =  Student.all
        render json: students 
    end

    def grades
        render json: @@grades  
    end

    def  highest_grade
         render json: @@grades.first
    end
end
