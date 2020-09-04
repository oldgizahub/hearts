# hearts

The card game hearts.
Written in Lazarus/Free Pascal.
Author: Geoff Gigg


July 27, 2020
-------------

Initial commit of working program.

July 31, 2020
-------------

Changes to accommodate Windows.

Updated icons.


September 1, 2020
-----------------

Improvements to computer players' strategy:

- When passing, do not vacate suits if the cards to be passed are very low.

- Do not drop, or force, the queen of spades onto a player that is in danger of breaking 100 if that might give the win to a third player.

- Same for hearts: do not give hearts to a player in danger of ending the game and giving the win to a third player.

- If you have the Queen of Spades and the King and/or Ace of Spades, and are not playing last, do not play the King or Ace if possible, because that signals you probably have the Queen because you have no fear of getting it from subsequent players in the trick.

- If you have the lead, and all the cards you have to lead are for suits no one else has, do not lead the Queen of Spades. It may be that control is not broken, it might break on this lead, and you can then lead a heart if you have one and give up the lead and find an opportunity to give the Queen of Spades to someone else.

- Add some randomness to choices of playing a card so the computer player's actions do not become predictable to the human player.

Additional changes:

- The initial play is too slow with the timer slider in the middle. Set it more to the right so initial play is faster.

- Some program tidying up.
