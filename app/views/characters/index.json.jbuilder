json.array!(@characters) do |character|
  json.extract! character, :id, :first_name, :last_name, :nick_name, :title, :description, :traits, :skills, :history, :strength, :vitality, :agility, :dexterity, :intelligence, :mind
  json.url character_url(character, format: :json)
end
