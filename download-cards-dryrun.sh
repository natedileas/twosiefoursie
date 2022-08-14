echo mkdir -p cards
for rank in ace 2 3 4 5 6 7 8 9 10 jack queen king; do
    for suit in hearts spades clubs diamonds; do
        url=$(wget -q "https://commons.wikimedia.org/wiki/File:Atlas_deck_${rank}_of_${suit}.svg" -O - | grep -Eo "https://upload.wikimedia.org/wikipedia/commons/.*?/Atlas_deck_${rank}_of_${suit}.svg" | grep -v 'thumb' | head -n 1)
        echo wget -q "$url" -O "cards/${suit}_${rank}.svg"
        echo sleep 1
    done
done