function dists = collect_dists(brick, dists)

dist = brick.UltrasonicDist(2);
display(dist);
dists(end+1) = dist;
pause(0.2);