module ReviewsHelper
  def rating_display(cocktail)
    display = ""
    cocktail.average_rating.times do
      display += '<i class="fas fa-cocktail" style="margin: 0 2px" ></i>'
    end
    (5 - cocktail.average_rating).times do
      display += ''
    end
    display.html_safe
  end
end
