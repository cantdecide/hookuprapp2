json.array!(@hookups) do |hookup|
  json.extract! hookup, :id, :name, :age, :personality, :level_of_attraction, :intenseness_of_orgasm, :dick, :did_you_cum, :did_you_cuddle_afterwards, :composite_score
  json.url hookup_url(hookup, format: :json)
end
