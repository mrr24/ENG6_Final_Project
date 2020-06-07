

% Card Deck
% aces
card.name(1) = "Ace of Clubs";
card.value(1) = 1;
card.uid(1) = 1;
card.name(2) = "Ace of Diamonds";
card.value(2) = 1;
card.uid(2) = 2;
card.name(3) = "Ace of Hearts";
card.value(3) = 1;
card.uid(3) = 3;
card.name(4) = "Ace of Spades";
card.value(4) = 1;
card.uid(4) = 4;
% 2s
card.name(5) = "Two of Clubs";
card.value(5) = 2;
card.uid(5) = 5;
card.name(6) = "Two of Diamonds";
card.value(6) = 2;
card.uid(6) = 6;
card.name(7) = "Two of Hearts";
card.value(7) = 2;
card.uid(7) = 7;
card.name(8) = "Two of Spades";
card.value(8) = 2;
card.uid(8) = 8;
% 3s
card.name(9) = "Three of Clubs";
card.value(9) = 3;
card.uid(9) = 9;
card.name(10) = "Three of Diamonds";
card.value(10) = 3;
card.uid(10) = 10;
card.name(11) = "Three of Hearts";
card.value(11) = 3;
card.uid(11) = 11;
card.name(12) = "Three of Spades";
card.value(12) = 3;
card.uid(12) = 12;
% 4s
card.name(13) = "Four of Clubs";
card.value(13) = 4;
card.uid(13) = 13;
card.name(14) = "Four of Diamonds";
card.value(14) = 4;
card.uid(14) = 14;
card.name(15) = "Four of Hearts";
card.value(15) = 4;
card.uid(15) = 15;
card.name(16) = "Four of Spades";
card.value(16) = 4;
card.uid(16) = 16;
% 5s
card.name(17) = "Five of Clubs";
card.value(17) = 5;
card.uid(17) = 17;
card.name(18) = "Five of Diamonds";
card.value(18) = 5;
card.uid(18) = 18;
card.name(19) = "Five of Hearts";
card.value(19) = 5;
card.uid(19) = 19;
card.name(20) = "Five of Spades";
card.value(20) = 5;
card.uid(20) = 20;
% 6s
card.name(21) = "Six of Clubs";
card.value(21) = 6;
card.uid(21) = 21;
card.name(22) = "Six of Diamonds";
card.value(22) = 6;
card.uid(22) = 22;
card.name(23) = "Six of Hearts";
card.value(23) = 6;
card.uid(23) = 23;
card.name(24) = "Six of Spades";
card.value(24) = 6;
card.uid(24) = 24;
% 7s
card.name(25) = "Seven of Clubs";
card.value(25) = 7;
card.uid(25) = 25;
card.name(26) = "Seven of Diamonds";
card.value(26) = 7;
card.uid(26) = 26;
card.name(27) = "Seven of Hearts";
card.value(27) = 7;
card.uid(27) = 27;
card.name(28) = "Seven of Spades";
card.value(28) = 7;
card.uid(28) = 28;
% 8s
card.name(29) = "Eight of Clubs";
card.value(29) = 8;
card.uid(29) = 29;
card.name(30) = "Eight of Diamonds";
card.value(30) = 8;
card.uid(30) = 30;
card.name(31) = "Eight of Hearts";
card.value(31) = 8;
card.uid(31) = 31;
card.name(32) = "Eight of Spades";
card.value(32) = 8;
card.uid(32) = 32;
% 9s
card.name(33) = "Nine of Clubs";
card.value(33) = 9;
card.uid(33) = 33;
card.name(34) = "Nine of Diamonds";
card.value(34) = 9;
card.uid(34) = 34;
card.name(35) = "Nine of Hearts";
card.value(35) = 9;
card.uid(35) = 35;
card.name(36) = "Nine of Spades";
card.value(36) = 9;
card.uid(36) = 36;
% 10s
card.name(37) = "Ten of Clubs";
card.value(37) = 10;
card.uid(37) = 37;
card.name(38) = "Ten of Diamonds";
card.value(38) = 10;
card.uid(38) = 38;
card.name(39) = "Ten of Hearts";
card.value(39) = 10;
card.uid(39) = 39;
card.name(40) = "Ten of Spades";
card.value(40) = 10;
card.uid(40) = 40;
% Js
card.name(41) = "Jack of Clubs";
card.value(41) = 10;
card.uid(41) = 41;
card.name(42) = "Jack of Diamonds";
card.value(42) = 10;
card.uid(42) = 42;
card.name(43) = "Jack of Hearts";
card.value(43) = 10;
card.uid(43) = 43;
card.name(44) = "Jack of Spades";
card.value(44) = 10;
card.uid(44) = 44;
% Qs
card.name(45) = "Queen of Clubs";
card.value(45) = 10;
card.uid(45) = 45;
card.name(46) = "Queen of Diamonds";
card.value(46) = 10;
card.uid(46) = 46;
card.name(47) = "Queen of Hearts";
card.value(47) = 10;
card.uid(47) = 47;
card.name(48) = "Queen of Spades";
card.value(48) = 10;
card.uid(48) = 48;
% Ks
card.name(49) = "King of Clubs";
card.value(49) = 10;
card.uid(49) = 49;
card.name(50) = "King of Diamonds";
card.value(50) = 10;
card.uid(50) = 50;
card.name(51) = "King of Hearts";
card.value(51) = 10;
card.uid(51) = 51;
card.name(52) = "King of Spades";
card.value(52) = 10;
card.uid(52) = 52;

% create dealer's hand for the round
indexArray = dealerHand(1:end);
for i = 1:length(indexArray)
    dealersStringHand(i,1:3) = [card.name(indexArray(i)),card.value(indexArray(i)),card.uid(indexArray(i))];
end
dealersStringHand;

% create player's hand for the round
indexArray = playerHand(1:end);
for i = 1:length(indexArray)
    playersStringHand(i,1:3) = [card.name(indexArray(i)),card.value(indexArray(i)),card.uid(indexArray(i))];
end
playersStringHand;
%str2num(playersStringHand(1,2))

% create top card for the round
index = 13;
topCardString(1,1:3) = [card.name(index),card.value(index),card.uid(index)];



fprintf('<The top card is a %s>\n', topCardString(1,1));
fprintf('<Press any key to continue>')
pause;

clc;
fprintf('<Dealer, these are your six cards:>\n')
fprintf('%s\n', dealersStringHand(1))
fprintf('%s\n', dealersStringHand(2))
fprintf('%s\n', dealersStringHand(3))
fprintf('%s\n', dealersStringHand(4))
fprintf('%s\n', dealersStringHand(5))
fprintf('%s\n', dealersStringHand(6))

fprintf('<Press any key to continue>')
pause;

clc;
fprintf('<Player, these are your six cards:>\n')
fprintf('%s\n', playersStringHand(1))
fprintf('%s\n', playersStringHand(2))
fprintf('%s\n', playersStringHand(3))
fprintf('%s\n', playersStringHand(4))
fprintf('%s\n', playersStringHand(5))
fprintf('%s\n', playersStringHand(6))

fprintf('<Press any key to continue>')
pause;