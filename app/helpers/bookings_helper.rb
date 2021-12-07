module BookingsHelper
  def register_link(play)
    if play.sold_out?
      content_tag(:strong, 'Sold Out!')
    else
      link_to 'Register!', new_play_booking_path(play)
    end
  end
end
