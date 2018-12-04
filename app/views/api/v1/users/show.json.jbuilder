json.user do
  json.extract! @user, :id, :open_id, :nickName, :avatarUrl, :gender

  json.challenges @user.challenges.uniq.reverse do |challenge|
    if challenge.team_for(@user)
      # json.assignments challenge.assignments.sort do |a|
      #   json.extract! a, :id, :date, :status, :user_id
      # end
      team = challenge.team_for(@user)
      team.each do |t|
        json.team do
          json.extract! challenge, :id, :name, :description
          json.team_id t, :id
          json.teams challenge.team_hash(t)
        end
      end
    else
      json.dashboard do
        json.extract! challenge, :id, :name, :description, :challenge_tag_list
        json.assignments challenge.assignments.sort do |a|
          json.extract! a, :id, :date, :status
        end
      end
    end
  end
end



# 1) Make @assignment.journal_hash
# ==>  {avatar: "url.jpg", journal: "some sentence", color: "red"}

# 2) Make @challenges.team_hash(team)
# ====> a) get assignments from @challenges.assignments.select{} (get ones where user_id is in team)
# ===> look at .group_by{|x| x.date} (for array?)
# ---> b) {date => [assignments of date], date2=> [ass of date2]}
# ====> c) you want to go through each key,value pair, and replace value
#        with value.map  using assignment.journal_hash


