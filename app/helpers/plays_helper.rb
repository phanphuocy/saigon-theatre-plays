module PlaysHelper
  def format_price(play)
    if play.from_price.blank? || play.free?
      content_tag(:strong, "Free!")
    else
      number_to_currency(play.from_price)
    end
  end

  def poster_for(play)
    if play.image_file_name.blank?
      image_tag 'placeholder.png', :style => "max-width: 25%"
    else
      image_tag play.image_file_name
    end
  end
end
