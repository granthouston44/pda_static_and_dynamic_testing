### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

#no card.rb required in

class CardGame


  def checkforAce(card)  #improper naming convention on method
    if card.value = 1 # needs == 
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #def not dif, no comman to seperate the parameters
  if card1.value > card2.value
    return card     #card isnt a variable/parameter
  else
    return card2
  end
end #too many ends
end

def self.cards_total(cards) #self wont work since there is no class in scope due to previous end
  total #not declared as a variable
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
```
