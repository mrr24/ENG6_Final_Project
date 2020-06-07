% Dealer choose first crib card
clc;
fprintf('<Dealer, which card would you like to remove first?>\n')
fprintf('1)%s\n', dealersStringHand(1))
fprintf('2)%s\n', dealersStringHand(2))
fprintf('3)%s\n', dealersStringHand(3))
fprintf('4)%s\n', dealersStringHand(4))
fprintf('5)%s\n', dealersStringHand(5))
fprintf('6)%s\n', dealersStringHand(6))
fprintf('<Press 1-6 then enter to continue>  >>')
removeFirstCard = input('','s');


switch (removeFirstCard)
    case '1'
        fprintf('Putting %s in the crib\n', dealersStringHand(1,1));
        cribCards(1,:) = dealersStringHand(1,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(1,:) = [];
    case '2'
        fprintf('Putting %s in the crib\n', dealersStringHand(2,1));
        cribCards(1,:) = dealersStringHand(2,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(2,:) = [];
    case '3'
        fprintf('Putting %s in the crib\n', dealersStringHand(3,1));
        cribCards(1,:) = dealersStringHand(3,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(3,:) = [];
    case '4'
        fprintf('Putting %s in the crib\n', dealersStringHand(4,1));
        cribCards(1,:) = dealersStringHand(4,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(4,:) = [];
    case '5'
        fprintf('Putting %s in the crib\n', dealersStringHand(5,1));
        cribCards(1,:) = dealersStringHand(5,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(5,:) = [];
    case '6'
        fprintf('Putting %s in the crib\n', dealersStringHand(6,1));
        cribCards(1,:) = dealersStringHand(6,:);
        fprintf('%s is in the crib\n', cribCards(1,1));
        dealersStringHand(6,:) = [];
    otherwise
        fprintf('Try entering a number from 1 to 6');
end
fprintf('<Press any key to continue>')
pause;
clc;

dealersStringHand;

% Dealer removes second crib card
fprintf('<Dealer, which final card would you like to remove?>\n')
fprintf('1)%s\n', dealersStringHand(1))
fprintf('2)%s\n', dealersStringHand(2))
fprintf('3)%s\n', dealersStringHand(3))
fprintf('4)%s\n', dealersStringHand(4))
fprintf('5)%s\n', dealersStringHand(5))
fprintf('<Press 1-5, then enter>  >>')
removeSecondCard = input('','s');


switch (removeSecondCard)
    case '1'
        fprintf('Putting %s in the crib\n', dealersStringHand(1,1));
        cribCards(2,:) = dealersStringHand(1,:);
        fprintf('%s is in the crib\n', cribCards(2,1));
        dealersStringHand(1,:) = [];
    case '2'
        fprintf('Putting %s in the crib\n', dealersStringHand(2,1));
        cribCards(2,:) = dealersStringHand(2,:);
        fprintf('%s is in the crib\n', cribCards(2,1));
        dealersStringHand(2,:) = [];
    case '3'
        fprintf('Putting %s in the crib\n', dealersStringHand(3,1));
        cribCards(2,:) = dealersStringHand(3,:);
        fprintf('%s is in the crib\n', cribCards(2,1));
        dealersStringHand(3,:) = [];
    case '4'
        fprintf('Putting %s in the crib\n', dealersStringHand(4,1));
        cribCards(2,:) = dealersStringHand(4,:);
        fprintf('%s is in the crib\n', cribCards(2,1));
        dealersStringHand(4,:) = [];
    case '5'
        fprintf('Putting %s in the crib\n', dealersStringHand(5,1));
        cribCards(2,:) = dealersStringHand(5,:);
        fprintf('%s is in the crib\n', cribCards(2,1));
        dealersStringHand(5,:) = [];
    otherwise
        fprintf('Try entering one number from 1 to 5');
end
fprintf('<Press any key to continue>')
pause;
dealersStringHand
fprintf('Dealer has put %s and %s into the crib.\n', cribCards(1,1), cribCards(2,1));
fprintf('<Press any key to continue>')
pause;