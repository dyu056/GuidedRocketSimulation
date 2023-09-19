%Aerodynamic model reference area script

%Simulate a flat plate
open('asbCubeSatForMatlab');

n = 10;
AreaList = linspace(1,2,n); %Reference area
Cd = 1.17; %Drag coefficient
Distance = zeros(1,n);
time = zeros(1,n);

for i = 1:length(AreaList)
    CurrentArea = AreaList(i);
    sim('asbCubeSatForMatlab');
    currentD = CurrentDistance.Data(end,:);
    currentT = t_out.Data(end,:);
    Distance(i) = currentD;
    time(i) = currentT;
end

figure()
plot(AreaList,Distance);
xlabel("Area m^2");
ylabel("Distance from deploy m");

figure()
plot(AreaList,time);
xlabel("Area m^2");
ylabel("Time s");

save("Data_4_4_2021.mat")