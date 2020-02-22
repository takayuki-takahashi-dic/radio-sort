100.times do |n|
  radio_ids = (1..700).to_a.sample(21)
  20.times do |i|
    if i >= 5
      point = 1
    else
      point =  10 - (i * 2)
    end

    Like.create!(user_id: n + 1,
               radio_id: radio_ids[i],
               row_order: i + 1,
               point: point
  )
  end
end