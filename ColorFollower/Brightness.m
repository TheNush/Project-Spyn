brick = ConnectBrick('EV3');
brick.SetColorMode(4, 0);
target = 8;
deviation = -3;
base_speed = -40;
while 1
    brightness = brick.LightReflect(4);
    calculation = (target - brightness) * deviation;
    display(calculation)
    if calculation <= 25
        if calculation < 18
            %% turn left
            brick.MoveMotor('A', base_speed + calculation);
            brick.MoveMotor('D', base_speed - calculation);
        elseif calculation > 18
            %% turn right
            calculation = calculation/3;
            brick.MoveMotor('A', base_speed - calculation);
            brick.MoveMotor('D', base_speed + calculation);
        end
    end
    if calculation > 25
        %% turn right
        calculation = calculation * 2;
        brick.MoveMotor('A', base_speed - calculation);
        brick.MoveMotor('D', base_speed + calculation);
    end
    %brick.MoveMotor('A', base_speed - calculation);
    %brick.MoveMotor('D', base_speed + calculation);
    %pause(0.1);
end
