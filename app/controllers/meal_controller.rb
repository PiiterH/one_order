class MealController < ApplicationController
def index
  @meals = Meal.all
end

def @meal = Meal.find(params[:id])

def no_food_meal
  @no_food_meal = @meals.foods.name.empty?
end

def other_food
  @food_head = @food
  @other_food = @meal.foods.name - @food_head
end

private

def meal_params
  params.require(:meal).permit(:name)
end

end
