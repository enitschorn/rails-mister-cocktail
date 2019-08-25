module ReviewsHelper
  def rating_display(review)
    display = ""
    review.rating.times do
      display += '<i class="fas fa-star"></i>'
    end
    (5 - review.rating).times do
      display += '<i class="far fa-star"></i>'
    end
    display.html_safe
  end
end
