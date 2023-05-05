class Booking < ApplicationRecord
    before_create :pricing_engine
    before_update :pricing_engine

    enum status: { confirmed: 0, cancled: 1, in_progress: 2, completed: 3 }
    enum animal_type: { dog: 0, cat: 1 }

    def full_name
        self.first_name + " " + self.last_name
    end

    def pricing_engine
        hourly_pricing = { "dog" => 10, "cat" => 5 }
        self.price = 20 + ( self.hours * hourly_pricing[self.animal_type])
    end
end
