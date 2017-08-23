def get_first_name_of_season_winner(data, season)
  data.each do |seas, array|
    if seas == season
      array.each do |hash|
        hash.each do |subject, trait|
          if trait == 'Winner'
            return hash['name'].split(' ').shift
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seas, array|
    array.each do |hash|
      hash.each do |subject, trait|
        if trait == occupation
          return hash['name']
        end
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seas, array|
    array.each do |hash|
      hash.each do |subject, trait|
        if trait == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |seas, array|
    array.each do |hash|
      hash.each do |subject, trait|
        if trait == hometown
          return hash['occupation']
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data.each do |seas, array|
    if seas == season
      array.each do |hash|
        ages.push(hash['age'].to_f)

      end
    end
  end
  avg = ages.inject{ |sum, el| sum + el} / ages.size
  return avg.round
end
