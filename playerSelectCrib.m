% Player choose first crib card
fprintf('<Player, which card would you like to remove first?>\n')
fprintf('1)%s\n', playersStringHand(1))
fprintf('2)%s\n', playersStringHand(2))
fprintf('3)%s\n', playersStringHand(3))
fprintf('4)%s\n', playersStringHand(4))
fprintf('5)%s\n', playersStringHand(5))
fprintf('6)%s\n', playersStringHand(6))
fprintf('<Press 1-6 then enter to continue>  >>')
removeFirstCard = input('','s');



switch (removeFirstCard)
    case '1'
        fprintf('Putting %s in the crib\n', playersStringHand(1,1));
        cribCards(3,:) = playersStringHand(1,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(1,:) = [];
    case '2'
        fprintf('Putting %s in the crib\n', playersStringHand(2,1));
        cribCards(3,:) = playersStringHand(2,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(2,:) = [];
    case '3'
        fprintf('Putting %s in the crib\n', playersStringHand(3,1));
        cribCards(3,:) = playersStringHand(3,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(3,:) = [];
    case '4'
        fprintf('Putting %s in the crib\n', playersStringHand(4,1));
        cribCards(3,:) = playersStringHand(4,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(4,:) = [];
    case '5'
        fprintf('Putting %s in the crib\n', playersStringHand(5,1));
        cribCards(3,:) = playersStringHand(5,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(5,:) = [];
    case '6'
        fprintf('Putting %s in the crib\n', playersStringHand(6,1));
        cribCards(3,:) = playersStringHand(6,:);
        fprintf('%s is in the crib\n', cribCards(3,1));
        playersStringHand(6,:) = [];
    otherwise
        fprintf('Try entering a number from 1 to 6');
end
fprintf('<Press any key to continue>')
pause;
playersStringHand;



% Player removes second crib card
clc;
fprintf('<Player, which final card would you like to remove?>\n')
fprintf('1)%s\n', playersStringHand(1))
fprintf('2)%s\n', playersStringHand(2))
fprintf('3)%s\n', playersStringHand(3))
fprintf('4)%s\n', playersStringHand(4))
fprintf('5)%s\n', playersStringHand(5))
fprintf('<Press 1-5 then enter to continue>  >>')
removeSecondCard = input('','s');

switch (removeSecondCard)
    case '1'
        fprintf('Putting %s in the crib\n', playersStringHand(1,1));
        cribCards(4,:) = playersStringHand(1,:);
        fprintf('%s is in the crib\n', cribCards(4,1));
        playersStringHand(1,:) = [];
    case '2'
        fprintf('Putting %s in the crib\n', playersStringHand(2,1));
        cribCards(4,:) = playersStringHand(2,:);
        fprintf('%s is in the crib\n', cribCards(4,1));
        playersStringHand(2,:) = [];
    case '3'
        fprintf('Putting %s in the crib\n', playersStringHand(3,1));
        cribCards(4,:) = playersStringHand(3,:);
        fprintf('%s is in the crib\n', cribCards(4,1));
        playersStringHand(3,:) = [];
    case '4'
        fprintf('Putting %s in the crib\n', playersStringHand(4,1));
        cribCards(4,:) = playersStringHand(4,:);
        fprintf('%s is in the crib\n', cribCards(4,1));
        playersStringHand(4,:) = [];
    case '5'
        fprintf('Putting %s in the crib\n', playersStringHand(5,1));
        cribCards(4,:) = playersStringHand(5,:);
        fprintf('%s is in the crib\n', cribCards(4,1));
        playersStringHand(5,:) = [];
    otherwise
        fprintf('Try entering one number from 1 to 5');
end
fprintf('<Press any key to continue>')
pause;
playersStringHand;
clc;
fprintf('Player has put %s and %s into the crib.\n', cribCards(3,1), cribCards(4,1));
fprintf('The crib is holding %s, %s, %s, and %s.\n', cribCards(1,1), cribCards(2,1), cribCards(3,1), cribCards(4,1));
fprintf('<Press any key to continue>')
pause;