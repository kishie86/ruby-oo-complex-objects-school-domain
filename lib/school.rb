require 'pry'
class School
    def initialize(roster)
        @roster = {}
    end

    def roster=(roster)
        @roster = roster
    end

    def roster
        @roster
    end
    
    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        #binding.pry
        @roster[grade].sort
    end

    def sort
        @roster.sort.each do |grade,student_array|
            student_array.sort
            @roster[grade] = student_array.sort 
            #binding.pry
        end
        return @roster
    end
end


#{7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
    


# code here!