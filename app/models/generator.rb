class Generator
  def self.plan(sources, number_of_days)
    return_recipes = []
    all_recipes = Recipe.where(source_id: sources)

    

    number_of_days.to_i.times do
      return_recipes << all_recipes.sample.name
    end

    puts return_recipes.inspect
    puts return_recipes.count
  end
end
