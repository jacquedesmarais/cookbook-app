recipe = Recipe.new(
                    title: "Hand Sandwich",
                    chef: "Josh",
                    ingredients: "Left hand, right hand, lettuce, tomato, mayo, cheese",
                    directions: "Place ingredients on left hand, put right hand on top, enjoy"
                    )

recipe.save

recipe = Recipe.new(
                    title: "Garbage Lagsana",
                    chef: "Bad Josh",
                    ingredients: "Old chinese food, socks, banana peel, hot pepper",
                    directions: "Layer ingredients in a pan, preheat oven to 350, cook for 5 hours, let cool"
                    )

recipe.save