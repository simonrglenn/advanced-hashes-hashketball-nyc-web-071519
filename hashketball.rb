require "pry"

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end


def num_points_scored (mister_player = "Jeff Adrien")
  game_hash.each do |team, team_attributes|
    team_attributes.each do |team_attribute, player_list|
      if player_list.is_a?(Hash)
        player_list.each do |player_name, player_attributes|
          if player_name == mister_player
            player_attributes.each do |player_attribute, data|
              
              if player_attribute == "score".to_sym

                return data
              end
            end
          end
        end
      end
    end
  end
end


# hash = game_hash
# hash.each do |location, info|
#   info.each do |attribute, stuff|
#     if stuff.include?(name)
#      return hash[location][attribute][name][:points]
#     end
#   end
# end
# end
    #players_list is the only array ,
    # team, team_attributes, players_list, player_attributes
    #if mister_player.to_sym =
    #  return game_hash[team][team_attributes][players_list][player_attributes]
    #end
    #
# num_points_scored("Jeff Adrien") # =10
# def num_points_scored (mister_player)
#   game_hash.each do |locale, team_attributes|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     team_data.each do |attribute, data|
#       #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#       #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
#       data.each do |data_item|
#         if data_item.include?(mister_player)
#           return game_hash[location][team_data][attribute]
#         end
#       end
#     end
#   end
# end
#
#
# def num_points_scored(name)
#   hash = game_hash
#   hash.each do |location, info|
#     info.each do |attribute, stuff|
#       if stuff.include?(name)
#        return hash[location][attribute][name][:points]
#       end
#     end
#   end
# end
#
#     #    players_access = team_attributes.keys[2]
#     #     player_list.each do |sir_player, value|
#     #     if sir_player == mister_player
#     #       points = sir_player[:points]
#     #     end
#     #   end
#     #
#     # end
#     # end
