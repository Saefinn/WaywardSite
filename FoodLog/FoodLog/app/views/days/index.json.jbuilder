json.array!(@days) do |day|
  json.extract! day, :id, :title, :breakfast, :b_syns, :lunch, :l_syn, :dinner, :d_syns, :snacks, :s_syns, :date
  json.url day_url(day, format: :json)
end
