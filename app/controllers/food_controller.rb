class FoodController < ApplicationController


def index
  @foods = Food.all
end

def show
  @food = Food.find(params[:id])
end

def max_foods
  @max_foods = []
  @max_foods << @food.meal
  @max_foods.count
end


private

def food_params
  params.require(:food).permit(:name)
end

end
