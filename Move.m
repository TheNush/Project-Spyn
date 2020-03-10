global key
InitKeyboard();

Stop;

disp('Where do I go??');

brick.SetColorMode(1, 4);
distances = [];


while 1
    pause(0.1);
    %display(brick.ColorCode(1));
    
    switch key
        case 'uparrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('D', -100);
            pause(0.2);
            Stop;           
            
        case 'downarrow'
            Stop;
            brick.MoveMotor('A', 100);
            brick.MoveMotor('D', 100);
            pause(0.2);
            Stop;
            
        case 'leftarrow'
            disp("LEFT ARROW");
            brick.MoveMotor('A', 100);
            brick.MoveMotor('D', -100);
            distances = collect_dists(brick, distances);
            display(distances)
            pause(0.2);
            Stop;
            %display(brick.ColorCode(1));
            
        case 'rightarrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('D', 100);
            pause(0.2);
            Stop;
            %display(brick.ColorCode(1));
         
            
        case 's'
            Stop;
            break;
            
            
    end
    
end

CloseKeyboard();
            

