class Customer

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter_obj, total, tip)
    Meal.new(waiter_obj, self, total, tip)
  end

  def meals
    Meal.all.select{|meal| meal.customer == self}
  end

  def waiters
    meals.collect {|meal| meal.waiter}

    # waiters = []
    # Meal.all.each do |meal|
    #   if meal.customer == self
    #     waiters << meal.waiter
    #   end
    # end
    # waiters
  end


end
