% % function [scenario, egoVehicle] = drivingScenarioTrafficExample()
% % % createDrivingScenario Returns the drivingScenario defined in the Designer
% % 
% % % Generated by MATLAB(R) 9.9 (R2020b) and Automated Driving Toolbox 3.2 (R2020b).
% % % Generated on: 28-Apr-2020 15:04:44
% % 
% % % Construct a drivingScenario object.
% % scenario = drivingScenario;
% % 
% % % Add all road segments
% % roadCenters = [0 50 0;
% %     150 50 0;
% %     200 0 0;
% %     0 50 0;
% %     ];
% % laneSpecification = lanespec(4);
% % road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');
% % 
% % % Add the ego vehicle
% % egoVehicle = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [10.7 51.4 0], ...
% %     'Name', 'Car');
% % 
% % % Add the non-ego actors
% % car1 = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [10.7 33.3 0], ...
% %     'Name', ['Carenecccbclhtjfertuvdrbkgrikgvchhbughiuuceiktv' ...
% %     '1']);
% % waypoints = [34.7 33.3 0;
% %     60.1 38.2 0;
% %     84.2 39.9 0;
% %     119 40.3 0;
% %     148.1 41.4 0;
% %     189.6 42.7 0;
% %     230.6 43 0;
% %     272.6 45.7 0;
% %     301.4 47.5 0;
% %     316.7 49.8 0;
% %     332.4 51.2 0;
% %     348.9 52.2 0;
% %     366.2 45.1 0;
% %     379.6 55.6 0];
% % speed = [10;10;10;10;10;10;10;10;10;10;10;10;10;10];
% % trajectory(car1, waypoints, speed);
% % 
% % % car2 = vehicle(scenario, ...
% % %     'ClassID', 1, ...
% % %     'Position', [17.6 46.7 0], ...
% % %     'Name', 'Car2');
% % % waypoints = [17.6 46.7 0;
% % %     43.4 45.5 0;
% % %     71.3 43.8 0;
% % %     102.3 43.5 0;
% % %     123.5 45.5 0;
% % %     143.6 47.4 0;
% % %     162.4 50 0;
% % %     198.5 61 0;
% % %     241.1 70.1 0;
% % %     272.3 74.1 0;
% % %     292 76.6 0;
% % %     312.8 77.2 0;
% % %     350.3 75.2 0;
% % %     362.5 70.4 0;
% % %     375.9 63.3 0;
% % %     390.7 49.9 0;
% % %     401.3 33 0];
% % % speed = [9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9;9];
% % % trajectory(car2, waypoints, speed);
% % 
% % car3 = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [62.6 51.9 0], ...
% %     'Name', 'Car3');
% % waypoints = [62.6 51.9 0;
% %     87.4 51.3 0;
% %     117.7 52.2 0;
% %     147.6 55 0;
% %     174.9 59.7 0;
% %     203.3 65.8 0;
% %     265 69.7 0;
% %     288.3 73.1 0;
% %     314.5 73.1 0;
% %     334.9 70.8 0;
% %     360 59.9 0];
% % speed = [6;6;6;6;6;6;6;6;6;6;6];
% % trajectory(car3, waypoints, speed);
% % 
% % car4 = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [101.7 41.1 0], ...
% %     'Name', 'Car4');
% % waypoints = [101.7 41.1 0;
% %     124.6 42 0;
% %     148.5 43.9 0;
% %     171.9 48.2 0;
% %     197.1 52.8 0;
% %     222.3 58.5 0;
% %     252.4 64.4 0;
% %     281.4 68.5 0;
% %     307.7 69.5 0;
% %     329.9 68.2 0;
% %     352.7 62.8 0];
% % speed = [7;7;7;7;7;7;7;7;7;7;7];
% % trajectory(car4, waypoints, speed);
% % 
% % car5 = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [251.3 75.6 0], ...
% %     'Name', 'Car5');
% % waypoints = [251.3 75.6 0;
% %     255.7 76.7 0];
% % speed = [0.01;0.01];
% % trajectory(car5, waypoints, speed);
% % 
% % % car6 = vehicle(scenario, ...
% % %     'ClassID', 1, ...
% % %     'Position', [60.6 48.9 0], ...
% % %     'Name', 'Car3');
% % % waypoints = [60.6 48.9 0;
% % %     77.4 41.3 0;
% % %     107.7 42.2 0;
% % %     137.6 50 0;
% % %     164.9 55.7 0;
% % %     193.3 59.8 0;
% % %     255 63.7 0;
% % %     278.3 70.1 0;
% % %     304.5 74.1 0;
% % %     324.9 70.8 0;
% % %     350 59.9 0];
% % % speed = [3;3;3;3;3;3;3;3;3;3;3];
% % % trajectory(car6, waypoints, speed);
% % % 
% % % car7 = vehicle(scenario, ...
% % %     'ClassID', 1, ...
% % %     'Position', [62.6 51.9 0], ...
% % %     'Name', 'Car3');
% % % waypoints = [62.6 51.9 0;
% % %     70.4 41.3 0;
% % %     107.7 42.2 0;
% % %     127.6 45 0;
% % %     134.9 49.7 0;
% % %     203.3 55.8 0;
% % %     225 59.9 0;
% % %     258.3 59.9 0;
% % %     304.5 59.9 0;
% % %     324.9 59.9 0;
% % %     350 59.9 0];
% % % speed = [6;6;6;6;6;6;6;6;6;6;6];
% % % trajectory(car7, waypoints, speed);
% % 
% % 
% % car2 = vehicle(scenario, ...
% %     'ClassID', 1, ...
% %     'Position', [52.6 51.9 0], ...
% %     'Name', 'Car2');
% % waypoints = [52.6 51.9 0;
% %     60.4 41.3 0;
% %     97.7 42.2 0;
% %     117.6 45 0;
% %     144.9 49.7 0;
% %     213.3 55.8 0;
% %     225 59.9 0;
% %     248.3 59.9 0;
% %     280.5 59.9 0;
% %     314.9 59.9 0;
% %     380 59.9 0 ;];
% % speed = [7;7;7;7;7;7;7;7;7;7;7];
% % trajectory(car2, waypoints, speed);
% % 
% % 
% 
% 

scenario = drivingScenario;
v1 = vehicle(scenario,'ClassID',1','Position',[6 0 0],'Velocity',[-3 0 0],'Yaw',180);
v2 = vehicle(scenario,'ClassID',1,'Position',[0 10 0],'Velocity',[0 -4 0],'Yaw',-90);
plot(scenario);
set(gcf,'Name','Scenario Plot')
xlim([-20 20]);
ylim([-20 20]);
ap = actorPoses(scenario);
v2TargetPoses = targetPoses(v2);
chasePlot(v2)
set(gcf,'Name','Chase Plot')
v1.Yaw = 135;
updatePlots(scenario);
scenario = drivingScenario;
roadCenters = ...
    [  0  40  49  50 100  50  49 40 -40 -49 -50 -100  -50  -49  -40    0
     -50 -50 -50 -50   0  50  50 50  50  50  50    0  -50  -50  -50  -50
       0   0 .45 .45 .45 .45 .45  0   0 .45 .45  .45  .45  .45    0    0]';
bankAngles = ...
    [  0   0   9   9   9   9   9  0   0   9   9    9    9    9    0    0];

road(scenario, roadCenters, bankAngles, 'lanes', lanespec(2));
plot(scenario);
rb = roadBoundaries(scenario)
figure

outerBoundary = rb{1};
innerBoundary = rb{2};

plot3(innerBoundary(:,1),innerBoundary(:,2),innerBoundary(:,3),'r', ...
      outerBoundary(:,1),outerBoundary(:,2),outerBoundary(:,3),'g')
axis equal
egoCar = vehicle(scenario,'ClassID',1,'Position',[80 -40 0.45],'Yaw',30);
figure

rb = roadBoundaries(egoCar)
outerBoundary = rb{1};
innerBoundary = rb{2};

plot3(innerBoundary(:,1),innerBoundary(:,2),innerBoundary(:,3),'r', ...
      outerBoundary(:,1),outerBoundary(:,2),outerBoundary(:,3),'g')
axis equal
chasePlot(egoCar);
fastCar = vehicle(scenario,'ClassID',1);

d = 2.7/2;
h = .45/2;
roadOffset = [ 0  0  0  0  d  0  0  0  0  0  0 -d  0  0  0  0
              -d -d -d -d  0  d  d  d  d  d  d  0 -d -d -d -d
               0  0  h  h  h  h  h  0  0  h  h  h  h  h  0  0]';

rWayPoints = roadCenters + roadOffset;
lWayPoints = roadCenters - roadOffset;

% loop around the track four times
rWayPoints = [repmat(rWayPoints(1:end-1,:),5,1); rWayPoints(1,:)];
lWayPoints = [repmat(lWayPoints(1:end-1,:),5,1); lWayPoints(1,:)];

smoothTrajectory(egoCar,rWayPoints(:,:), 30);
smoothTrajectory(fastCar,lWayPoints(:,:), 50);
scenario.SampleTime = 0.02
scenario.StopTime = 4;
while advance(scenario)
  pause(0.001)
end
close all

scenario.StopTime = 0.100;
poseRecord = record(scenario)

r = poseRecord(5)
r.ActorPoses(1)
r.ActorPoses(2)
close all;
hFigure = figure;
hFigure.Position(3) = 900;

hPanel1 = uipanel(hFigure,'Units','Normalized','Position',[0 1/4 1/2 3/4],'Title','Scenario Plot');
hPanel2 = uipanel(hFigure,'Units','Normalized','Position',[0 0 1/2 1/4],'Title','Chase Plot');
hPanel3 = uipanel(hFigure,'Units','Normalized','Position',[1/2 0 1/2 1],'Title','Bird''s-Eye Plot');

hAxes1 = axes('Parent',hPanel1);
hAxes2 = axes('Parent',hPanel2);
hAxes3 = axes('Parent',hPanel3);
% assign scenario plot to first axes and add indicators for ActorIDs 1 and 2
plot(scenario, 'Parent', hAxes1,'ActorIndicators',[1 2]);

% assign chase plot to second axes
chasePlot(egoCar, 'Parent', hAxes2);

% assign bird's-eye plot to third axes
egoCarBEP = birdsEyePlot('Parent',hAxes3,'XLimits',[-200 200],'YLimits',[-240 240]);
fastTrackPlotter = trackPlotter(egoCarBEP,'MarkerEdgeColor','red','DisplayName','target','VelocityScaling',.5);
egoTrackPlotter = trackPlotter(egoCarBEP,'MarkerEdgeColor','blue','DisplayName','ego','VelocityScaling',.5);
egoLanePlotter = laneBoundaryPlotter(egoCarBEP);
plotTrack(egoTrackPlotter, [0 0]);
egoOutlinePlotter = outlinePlotter(egoCarBEP);

restart(scenario)
scenario.StopTime = Inf;

while advance(scenario)
    t = targetPoses(egoCar);
    plotTrack(fastTrackPlotter, t.Position, t.Velocity);
    rbs = roadBoundaries(egoCar);
    plotLaneBoundary(egoLanePlotter, rbs);
    [position, yaw, length, width, originOffset, color] = targetOutlines(egoCar);
    plotOutline(egoOutlinePlotter, position, yaw, length, width, 'OriginOffset', originOffset, 'Color', color);
end
