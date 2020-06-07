% logic for game play


playersFourCards = playersStringHand; % create player card object to manipulate.
dealersFourCards = dealersStringHand; % create dealer card object to manipulate.

count = 0; % set count to 0
cardsPlayed = 0;
playerCardsPlayed = 0;
dealerCardsPlayed = 0;
wentLast = false;
playerWentLast = false;
playerCannotPlay = false;
dealerWentLast = false;
dealerCannotPlay = false;


clc;
% Player plays first card

while (numel( (playersFourCards(:,2)) ) + numel( (dealersFourCards(:,2)) )) > 0
    if (numel( (playersFourCards(:,2)) ) + numel( (dealersFourCards(:,2)) )) == 0
        break;
    end
    count = 0;
    
    while count <= 31
    
    
        if ( (playerWentLast == false)||(dealerWentLast == true)||(dealerCannotPlay == true) ) &&  ( numel(playersFourCards(:,2))  > 0 )
        
            playerNumValidCards = 0; % number of "moves" player has, given current count
            for i = 1:numel(playersFourCards(:,2))
                if count + str2num( (playersFourCards(i,2)) ) < 32
                    fprintf('%d) You may play %s to make count %d\n', i, playersFourCards(i,1), count + str2num( (playersFourCards(i,2)) ));
                    playerNumValidCards = playerNumValidCards + 1;
                    cardsPlayerCanPlay(i,:) = playersFourCards(i,:);
                else 
                    fprintf('[!%d] You may not play %s, since %d > 31\n',i, playersFourCards(i,1), count + str2num( (playersFourCards(i,2)) ));
                    cardsPlayerCannotPlay(i,:) = playersFourCards(i,:);
                end % end if
            end % end for
        
            if playerNumValidCards > 0
                fprintf('<Player, choose a card from your hand, count is at %d>\n', count);
                fprintf('<Press 1-%d then enter to continue>  >>', playerNumValidCards)
                playerChooseCard = input('','s');

                switch (playerChooseCard)
                    case '1'
                        count = count + str2num( (cardsPlayerCanPlay(1,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsPlayerCanPlay(1,1), count);
                        playersFourCards(1,:) = [];
                        playerWentLast = true;
                        playerCardsPlayed = playerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '2'
                        count = count + str2num( (cardsPlayerCanPlay(2,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsPlayerCanPlay(2,1), count);
                        playersFourCards(2,:) = [];
                        playerWentLast = true;
                        playerCardsPlayed = playerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '3'
                        count = count + str2num( (cardsPlayerCanPlay(3,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsPlayerCanPlay(3,1), count);
                        playersFourCards(3,:) = [];
                        playerWentLast = true;
                        playerCardsPlayed = playerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '4'
                        count = count + str2num( (cardsPlayerCanPlay(4,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsPlayerCanPlay(4,1), count);
                        playersFourCards(4,:) = [];
                        playerWentLast = true;
                        playerCardsPlayed = playerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    otherwise
                        disp('error in playerChooseCard loop');
                        if count == 31
                            fprintf('<Nice, player, you hit 31!>\n');
                            fprintf('<Press any key to continue>')
                            pause;
                            clc;
                            break;
                        end
                end % end switch
                fprintf('<Press any key to continue>')
                pause;
                clc;
            end % end if playerNumValidCards
        else
            playerCannotPlay = true;
            %if playerCannotPlay == true
                %playerWentLast = true;
            %end
            fprintf('<Since player cannot play, let''s see if dealer can>\n');
            fprintf('<Press any key to continue>')
            pause;
            clc;
        end % end player if
    
        % dealer logic
        if ((playerWentLast == true) || (playerCannotPlay == true)) && ( numel(dealersFourCards(:,2))  > 0 )
        
            dealerNumValidCards = 0; % number of "moves" player has, given current count
            for i = 1:numel(dealersFourCards(:,2))
                if count + str2num( (dealersFourCards(i,2)) ) < 32
                    fprintf('%d) You may play %s to make count %d\n', i, dealersFourCards(i,1), count + str2num( (dealersFourCards(i,2)) ));
                    dealerNumValidCards = dealerNumValidCards + 1;
                    cardsDealerCanPlay(i,:) = dealersFourCards(i,:);
                else 
                    fprintf('[!%d] You may not play %s, since %d > 31\n', i, dealersFourCards(i,1), count + str2num( (dealersFourCards(i,2)) ));
                    cardsDealerCannotPlay(i,:) = dealersFourCards(i,:);
                end % end if
            end % end for
    
            if dealerNumValidCards > 0
               
                fprintf('Dealer, choose a card from your hand, count is at %d\n', count);
                fprintf('<Press 1-%d then enter to continue>  >>', dealerNumValidCards)
                dealerChooseCard = input('','s');

                switch (dealerChooseCard)
                    case '1'
                        count = count + str2num( (cardsDealerCanPlay(1,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsDealerCanPlay(1,1), count);
                        dealersFourCards(1,:) = [];
                        dealerWentLast = true;
                        dealerCardsPlayed = dealerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '2'
                        count = count + str2num( (cardsDealerCanPlay(2,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsDealerCanPlay(2,1), count);
                        dealersFourCards(2,:) = [];
                        dealerWentLast = true;
                        dealerCardsPlayed = dealerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '3'
                        count = count + str2num( (cardsDealerCanPlay(3,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsDealerCanPlay(3,1), count);
                        dealersFourCards(3,:) = [];
                        dealerWentLast = true;
                        dealerCardsPlayed = dealerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    case '4'
                        count = count + str2num( (cardsDealerCanPlay(4,2)) );
                        fprintf('Playing %s to make the count %d\n', cardsDealerCanPlay(4,1), count);
                        dealersFourCards(4,:) = [];
                        dealerWentLast = true;
                        dealerCardsPlayed = dealerCardsPlayed + 1;
                        cardsPlayed = cardsPlayed + 1;
                    otherwise
                        disp('error in dealerChooseCard loop');
                end % end switch
                        if count == 31
                            fprintf('<Nice, dealer, you hit 31!>\n');
                            fprintf('<Press any key to continue>')
                            pause;
                            clc;
                            break;
                        end
                fprintf('<Press any key to continue>')
                pause;
                clc;
            end % end if dealerNumValidCards
            else
            dealerCannotPlay = true;
                %if dealerCannotPlay == true
                    %dealerWentLast = true;
                %end
            fprintf('<Since dealer cannot play, let''s see if player can>\n');
            fprintf('<Press any key to continue>')
            pause;
            clc;
            end % end dealer elseif
        
            % logic for not being able to play
            if (playerNumValidCards == 0) || (dealerNumValidCards == 0)
                if (playerWentLast == true)
                    dealerWentLast = true;
                end
                if (dealerWentLast == true)
                    playerWentLast = true;
                end
                count = 0;
                fprintf('<Since no one can play, resetting count to %d>\n', count);
                fprintf('<Press any key to continue>')
                pause;
                clc;
                break;
            end % end no play logic   
        if (numel( (playersFourCards(:,2)) ) + numel( (dealersFourCards(:,2)) )) == 0
            break;
        end
    end % end while
    
end % end while


playersStringHand
dealersStringHand
cribCards
fprintf('<One last thing to do...>\n');
fprintf('  ...score our hands ^^\n');
fprintf('  ...and the crib ^\n');