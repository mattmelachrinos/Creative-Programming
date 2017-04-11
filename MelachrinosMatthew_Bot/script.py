teamArray = []
with open('football_players','r') as players:
    for line in players:
        line  = line.split(",")
        teamArray.append(line[0].strip())
print teamArray

with open('player_names','w') as teams:
    for item in teamArray:
        teams.write(item + "\n")
