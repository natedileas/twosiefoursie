for rank in ace 2 3 4 5 6 7 8 9 10 jack queen king; do
    for suit in hearts spades clubs diamonds; do
        nrank=$(echo $rank | sed 's/ace/1/' | sed 's/jack/11/' | sed 's/queen/12/' | sed 's/king/13/')
        echo "<img id=\"card-${suit}-${nrank}\" src=\"cards/${suit}_${rank}.svg\" class=\"cardsrc\"></img>"
    done
done
echo "<img id=\"card-cardback\" src=\"cards/cardback.svg\" class=\"cardsrc\"></img>"