global key
InitKeyboard();

brick.MoveMotor('B', 50);
brick.MoveMotor('C', -50);

Stop;

disp('Where do I go??');

while 1
    pause(0.1);
    
    switch key
        case 'uparrow'
            Stop;
            brick.MoveMotor('B', 50);
            brick.MoveMotor('C', 50);
            
        case 'downarrow'
            Stop;
            brick.MoveMotor('B', -50);
            brick.MoveMotor('C', -50);
            
        case 'leftarrow'
            brick.MoveMotor('B', -50);
            brick.MoveMotor('C', 50);
            
        case 'rightarrow'
            brick.MoveMotor('B', 50);
            brick.MoveMotor('C', -50);
            
        case 's'
            break;
            
    end
    
end

CloseKeyboard();
            

