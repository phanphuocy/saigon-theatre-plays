def play_attributes(overrides = {} )
  {
      name: "Cậu Đồng",
      from_price: 12.00,
      starts_at: 10.day.from_now,
      description: "Lorem Ipsum"
  }.merge(overrides)
end