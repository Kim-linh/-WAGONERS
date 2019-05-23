module ApplicationHelper
  def display_stars(stars_number)
   ("<i class='fas fa-star'></i>" * stars_number + "<i class='far fa-star'></i>" * (5 - stars_number)).html_safe if !stars_number.nil?
  end
end
