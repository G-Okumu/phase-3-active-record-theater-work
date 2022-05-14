class Role < ActiveRecord::Base
    has_many :auditions

    #returns an array of names from the actors associated with this role
    def actors
        return self.auditions.map do | audition |
            audition.actor
        end
    end

    # returns an array of locations from the auditions associated with this role
    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end




end