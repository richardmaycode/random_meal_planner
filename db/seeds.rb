# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

MEALS = %w[breakfast lunch dinner dessert snack].freeze
SOURCES = %w[makayla_thomas_fit jasonalexander.fit].freeze

DINNER_RECIPES = ['parmesan crusted chicken', 'creamy marinara
chicken bowl', 'rasta pasta bowls', 'lemon shrimp
alfredo bowls', 'million dollar
spaghetti bowl', '5 cheese chicken
penne bowls', 'philly cheesesteak
pasta bowls'].freeze

MEALS.each do |meal|
  Meal.create! name: meal
end

SOURCES.each do |source|
  Source.create! username: source
end

source = Source.first

DINNER_RECIPES.each do |recipe|
  Recipe.create! name: recipe, source_id: source.id
end

Recipe.create! name: 'Brisket Breakfast Taco', source_id: 2

Recipe.last.meals << Meal.first

meal = Meal.find(3)
Recipe.where(source_id: 1).each do |recipe|
  recipe.meals << meal
end
