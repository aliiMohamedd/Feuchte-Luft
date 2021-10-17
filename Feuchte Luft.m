%% This is a programm to calculate relative humidity & absolute humidity
% inputs
close all
clc
r=461;
Y=66;
fprintf('<strong>Hinweise zur Nutzung des Programm: </strong>\n')
disp('-Das ist ein Programm zur Rechnung der relative Feuchtigkeit von Fünf Punkten.');
disp('-Dieses Programm wird programmiert, das mit jedem Wert der Temperatur die relative Feuchtigkeit zu rechnen, aber Matlab gibt Ihnen eine ');
disp('Nachricht mit Wert der Temperatur, aber Sie können ein Paar der beliebigen Temperaturen für jeden Punkt auswählen.');
disp('-Die relative Feuchtigkeit der gegeben Fünf Punkten werden auch gegeben, die von Graphische Psychrometertafel abgelesen werden müssen. ')
disp('     ');
disp('Bitte geben Sie die folgenden Punkt ein');
fprintf('<strong>Der erste gegebene Punkt ist: Tu=20°C, Tf=10°C </strong>\n')
disp('Bitte geben Sie erste Punkt ein:-');
Tu1 = input('Bitte geben Sie erste Umgebungstemperatur Tu1: ');
tf1 = input('Bitte geben Sie erste die Kühlgrenztemperature Tf1: ');
fprintf(2,'\nBeachte:\n')
fprintf('<strong>Bitte geben Sie die abgelese relative Feuchtigkeit als dezimale Form wie z.B. 0.24 </strong>\n')
read1= input('Bitte geben Sie die erste gelesene relative Feuchtigkeit von der Graphischen Psychrometer Tafel ein: ');
disp('---------------------------------------');
disp (' ');

fprintf('<strong>Der zweite gegebene Punkt ist: Tu=30°C, Tf=18°C </strong>\n')
disp('Bitte geben Sie zweite Punkt ein:-');
Tu2 = input('Bitte geben Sie zweite Umgebungstemperatur Tu2: ');
tf2 = input('Bitte geben Sie zweite die Kühlgrenztemperature Tf2: ');
fprintf(2,'\nBeachte:\n')
fprintf('<strong>Bitte geben Sie die abgelese relative Feuchtigkeit als dezimale Form wie z.B. 0.30  </strong>\n')
read2= input('Bitte geben Sie die zweite gelesene relative Feuchtigkeit von der Graphischen Psychrometer Tafel ein: ');
disp('---------------------------------------')
disp (' ');

fprintf('<strong>Der dritte gegebene Punkt ist: Tu=42°C, Tf=32°C </strong>\n')
disp('Bitte geben Sie dritte Punkt ein:-');
Tu3 = input('Bitte geben Sie dritte Umgebungstemperatur Tu3: ');
tf3 = input('Bitte geben Sie dritte die Kühlgrenztemperature Tf3: ');
fprintf(2,'\nBeachte:\n')
fprintf('<strong>Bitte geben Sie die abgelese relative Feuchtigkeit als dezimale Form wie z.B. 0.50 </strong>\n')
read3= input('Bitte geben Sie die dritte gelesene relative Feuchtigkeit von der Graphischen Psychrometer Tafel ein: ');
disp('---------------------------------------')
disp (' ');

fprintf('<strong>Der vierte gegebene Punkt ist: Tu=40°C, Tf=24°C </strong>\n')
disp('Bitte geben Sie vierte Punkt ein:-');
Tu4 = input('Bitte geben Sie vierte Umgebungstemperatur Tu4: ');
tf4 = input('Bitte geben Sie vierte die Kühlgrenztemperature Tf4: ');
fprintf(2,'\nBeachte:\n')
fprintf('<strong>Bitte geben Sie die abgelese relative Feuchtigkeit als dezimale Form wie z.B. 0.26 </strong>\n')
read4= input('Bitte geben Sie die vierte gelesene relative Feuchtigkeit von der Graphischen Psychrometer Tafel ein: ');
disp('---------------------------------------');
disp (' ');

fprintf('<strong>Der fünfte gegebene Punkt ist: Tu=50°C, Tf=34.5°C </strong>\n')
disp('Bitte geben Sie fünfte Punkt ein:-');
Tu5 = input('Bitte geben Sie fünfte Umgebungstemperatur Tu5: ');
tf5 = input('Bitte geben Sie fünfte die Kühlgrenztemperature Tf5: ');
fprintf(2,'\nBeachte:\n')
fprintf('<strong>Bitte geben Sie die abgelese relative Feuchtigkeit als dezimale Form wie z.B. 0.36 </strong>\n')
read5= input('Bitte geben Sie die fünfte gelesene relative Feuchtigkeit von der Graphischen Psychrometer Tafel ein: ');
fprintf(2,'\n***======================================***======================================***\n')
disp (' ');
fprintf(2,'\nDie Ergebnisse:-\n')
%% Calculating the first point
ps1 = 0.61121*exp((18.678-tf1/234.84)*(tf1/(257.14+tf1)))*1000;
pws1 =  0.61121*exp((18.678-Tu1/234.84)*(Tu1/(257.14+Tu1)))*1000;
pw1 = ps1 - Y*(Tu1-tf1);
reative1= pw1/pws1;
absolute1 = pw1 /(r*Tu1);
Standerd_Dev1=(sqrt((reative1-read1)^2)/read1)*100;
fprintf(' <strong>-Ergebnis des ersten Punktes:</strong>\n')
disp(['Relative Feuchtigkeit des ersten Punktes ist ',num2str(reative1)]);
disp(['Absolute Feuchte des ersten Punktes ist ',num2str(absolute1)]);
disp('---------------------------------------');
disp (' ');

%% Calculatioing the second point
ps2 = 0.61121*exp((18.678-tf2/234.84)*(tf2/(257.14+tf2)))*1000;
pws2 =  0.61121*exp((18.678-Tu1/234.84)*(Tu2/(257.14+Tu2)))*1000;
pw2 = ps2 - Y*(Tu2-tf2);
reative2= pw2/pws2;
absolute2 = pw2 /(r*Tu2);
Standerd_Dev2=(sqrt((read2-reative2)^2)/read2)*100;
fprintf(' <strong>-Ergebnis des zweiten Punktes:</strong>\n')
disp(['Relative Feuchtigkeit des zweiten Punktes ist ',num2str(reative2)]);
disp(['Absolute Feuchte des zweiten Punktes ist  ',num2str(absolute2)]);
disp('---------------------------------------');
disp (' ');


%% Calculatiing the third point
ps3 = 0.61121*exp((18.678-tf3/234.84)*(tf3/(257.14+tf3)))*1000;
pws3 =  0.61121*exp((18.678-Tu3/234.84)*(Tu3/(257.14+Tu3)))*1000;
pw3 = ps3 - Y*(Tu3-tf3);
reative3= pw3/pws3;
absolute3 = pw3 /(r*Tu3);
Standerd_Dev3=(sqrt((read3-reative3)^2)/read3)*100;
fprintf(' <strong>-Ergebnis des dritten Punktes:</strong>\n')
disp(['Relative Feuchtigkeit des dritten Punktes ist ',num2str(reative3)]);
disp(['Absolute Feuchte des dritten Punktes ist ',num2str(absolute3)]);
disp('---------------------------------------');
disp (' ');


%% Calculatiing the fourth point
ps4 = 0.61121*exp((18.678-tf4/234.84)*(tf4/(257.14+tf4)))*1000;
pws4 =  0.61121*exp((18.678-Tu4/234.84)*(Tu4/(257.14+Tu4)))*1000;
pw4 = ps4 - Y*(Tu4-tf4);
reative4= pw4/pws4;
absolute4 = pw4 /(r*Tu4);
Standerd_Dev4=(sqrt((reative4-read4)^2)/read4)*100;
fprintf(' <strong>-Ergebnis des vierten Punktes:</strong>\n')
disp(['Relative Feuchtigkeit des vierten Punktes ist ',num2str(reative4)]);
disp(['Absolute Feuchte des vierten Punktes ist ',num2str(absolute4)]);
disp('---------------------------------------');
disp (' ');


%% Calculatiing the fivth point
ps5 = 0.61121*exp((18.678-tf5/234.84)*(tf5/(257.14+tf5)))*1000;
pws5 =  0.61121*exp((18.678-Tu5/234.84)*(Tu5/(257.14+Tu5)))*1000;
pw5 = ps5 - Y*(Tu5-tf5);
reative5= pw5/pws5;
absolute5 = pw5 /(r*Tu5);
Standerd_Dev5=(sqrt((reative5-read5)^2)/read5)*100;
fprintf(' <strong>-Ergebnis des fünften Punktes:</strong>\n')
disp(['Relative Feuchtigkeit des vierten Punktes ist ',num2str(reative5)]);
disp(['Absolute Feuchte des vierten Punktes ist ',num2str(absolute5)]);
disp('---------------------------------------');
disp (' ');



%% The Table
Points = {'Erste Punkt';'Zweite Punkt';'Dritte Punkt';'Vierte Punkt';'Fünfte Punkt'};
Tu = [Tu1;Tu2;Tu3;Tu4;Tu5];
Tf = [tf1;tf2;tf3;tf4;tf5];
Relative_Feuchtigkeit = [reative1;reative2;reative3;reative4;reative5];
Abgelesene_Feuchtigkeit = [read1 ; read2; read3 ; read4 ; read5 ];
Standerd_Dev= [Standerd_Dev1;Standerd_Dev2;Standerd_Dev3;Standerd_Dev4;Standerd_Dev5];

T = table(Tu,Tf,Relative_Feuchtigkeit,Abgelesene_Feuchtigkeit,Standerd_Dev,...
    'RowNames',Points)

%% Plotting the Chart

x = [5 10 15 20 25 30 35 40 45 50 55 60 60 55 50 45 40 35 30 25 20 15 10 5 5 10 15 20 25 30 35 40 45 50 55 60 60 55 50 45 40 35 30 25 20 15 10 5 5 10 15 20 25 30 35 40 45 50 55 60 60 55 50 45 40 35 30 25 20 15 10 5 5 10 15 20 25 30 35 40 45 50 55 60 60 55 50 45 40 35 30 25 20 15 10 5 5 10 15 20 25 30 35 40 45 50 55 60 60 55 50 45 40 35 30 25 20 15 10 5 ];
y = [-2.754 0.279 3.078 5.662 8.049 10.259 12.309 14.215 15.993 17.657 19.217 20.684 28.574 25.975 23.396 20.827 18.249 15.644 12.991 10.265 7.439 4.486 1.379 -1.907 -1.076 2.449 5.84 9.124 12.332 15.493 18.631 21.77 24.926 28.114 31.342 34.616 39.501 35.78 32.104 28.472 24.882 21.326 17.793 14.266 10.724 7.141 3.489 -0.262 0.536 4.499 8.393 12.245 16.079 19.917 23.775 27.664 31.59 35.556 39.561 43.603 47.141 42.856 38.598 34.371 30.177 26.017 21.888 17.783 13.692 9.598 5.482 1.318 2.085 6.436 10.759 15.071 19.389 23.723 28.081 32.466 36.878 41.316 45.777 50.257 53.043 48.402 43.774 39.162 34.567 29.993 25.439 20.906 16.387 11.877 7.365 2.836 3.572 8.267 12.955 17.644 22.341 27.05 31.773 36.509 41.258 46.019 50.789 55.566 57.873 52.977 48.085 43.197 38.314 33.437 28.567 23.704 18.847 13.996 9.146 4.293 ];

c = x-y;
figure();
yticks([0 10])
plot(x,c);
hold on
X = [Tu1 Tu2 Tu3 Tu4 Tu5];
Y = [tf1 tf2 tf3 tf4 tf5];
M=X-Y;
plot(X,M,'+','LineWidth',2);
txt = strcat('Punkt',num2str((1:numel(X)).'));
text(X+0.4,M-0.4,txt)
grid on
grid minor
axis([10 60 0 40]);
yticks([0 0.8 1.8 2.7 3.65 4.6 5.6 6.6 7.7 8.75 9.8])
yticklabels({'100%','90%','80%','70%','60%','50%','40%','30%','20%','10%','0%'})
xlabel({'Temperatur des trockenen Thermometers →';'Graphic psyschrometer table for strongly moving air (air speed ≥ 2m/s)'})
yyaxis right
ylabel('Psychrometrische Differenz')
yticks([0 0.138  0.28 0.41 0.56 0.7 0.87 1])
yticklabels({'0°C','5°C','10°C','15°C','20°C','25°C','30°C','35°C'})
XGrid = 'on';
YGrid = 'on';
hold on
