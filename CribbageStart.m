% Start a round by dealing

fprintf('<Press any key to start cribbage>')
pause;

dealCards;

fprintf('<Hands are dealt>\n')
fprintf('<Press any key to continue>')
clc;
pause;

% Create dealer hand, player hand, and top card
getHands;

clc;
fprintf('<Now dealer and player will select two>\n')
fprintf('<cards each to add to the crib>\n')
fprintf('<Press any key to continue>')
pause;

% Dealer chooses two cards to place in crib
dealerSelectCrib;

% Player chooses two cards to place in crib
clc;
playerSelectCrib;

clc;
fprintf('<Now we begin the play, starting with player first>\n')
fprintf('<Press any key to continue>')
pause;
clc;

% Logic for each player playing four cards
%cribbageCount31;
cribbageCount31;