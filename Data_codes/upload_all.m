upload_data %uploads rh, sd, sf, ws
addpath 'C:\Users\sarah\Desktop\Project\Files\Downloaded_Data\saved from edited'
%%
% temp_1979_1989_upload
% temp_1990_2002_upload
% temp_2003_2009_upload
% temp_2010_2021_upload
% 
% % %%
%  RH_1979_1984_upload
%  RH_1985_1990_upload
%  RH_1991_1996_upload
%   RH_1997_1902_upload
%    RH_2003_2008_upload
%     RH_2009_2014_upload
%     RH_2015_2020_upload
%     RH_2021_2021_upload
%% 
load('RH_min.mat')
% RH_min = zeros(129,49,516);
% RH_min(:,:,1:72) = rhmean_min_monthly_84;
% RH_min(:,:,73:144) = rhmean_min_monthly_90;
% RH_min(:,:,145:216) = rhmean_min_monthly_96;
% RH_min(:,:,217:288) = rhmean_min_monthly_02;
% RH_min(:,:,289:360) = rhmean_min_monthly_08;
% RH_min(:,:,361:432) = rhmean_min_monthly_14;
% RH_min(:,:,433:504) = rhmean_min_monthly_20;
% RH_min(:,:,505:516) = rhmean_min_monthly_21;

load('RH_max.mat')
% RH_max = zeros(129,49,516);
% RH_max(:,:,1:72) = rhmean_max_monthly_84;
% RH_max(:,:,73:144) = rhmean_max_monthly_90;
% RH_max(:,:,145:216) = rhmean_max_monthly_96;
% RH_max(:,:,217:288) = rhmean_max_monthly_02;
% RH_max(:,:,289:360) = rhmean_max_monthly_08;
% RH_max(:,:,361:432) = rhmean_max_monthly_14;
% RH_max(:,:,433:504) = rhmean_max_monthly_20;
% RH_max(:,:,505:516) = rhmean_max_monthly_21;
%%
load('T_min.mat')
% T_min = zeros(129,49,516);
% T_min(:,:,1:132) = tmean_min_monthly_89;
% T_min(:,:,133:288) = tmean_min_monthly_02;
% T_min(:,:,289:372) = tmean_min_monthly_09;
% T_min(:,:,373:516) = tmean_min_monthly_21;

load('T_max.mat')
% T_max = zeros(129,49,516);
% T_max(:,:,1:132) = tmean_max_monthly_89;
% T_max(:,:,133:288) = tmean_max_monthly_02;
% T_max(:,:,289:372) = tmean_max_monthly_09;
% T_max(:,:,373:516) = tmean_max_monthly_21;


%%cities from paper, approx lon lat rounded to nearest .25
peaceriver = [-117.25 56.25];
calgary = [-115 51];
coronation = [-111.5 52];
medicinehat = [-110.75 50];
northbattleford = [-108.25 52.75];
swiftcurrent = [-107.75 50.25];
moosejaw = [-105.5 50.5];
princealbert = [-105.75 53];
wynyard = [-104 51.75];
regina = [-104 50.5];
estevan = [-103 49];
broadview = [-102.5 50.25];
yorkton = [-102.5 51];
dauphin = [-100 51];
portlaprairie = [-98.25 49.75];
winnipeg = [-97.25 50];


lon_locations = [find(lon==peaceriver(1)) find(lon==coronation(1)) find(lon==medicinehat(1)) find(lon==northbattleford(1)) find(lon==swiftcurrent(1))...
    find(lon==moosejaw(1)) find(lon==princealbert(1)) find(lon==wynyard(1)) find(lon==regina(1)) find(lon==estevan(1)) find(lon==broadview(1)) ...
    find(lon==yorkton(1)) find(lon==dauphin(1)) find(lon==portlaprairie(1)) find(lon==winnipeg(1)) find(lon==calgary(1)) ]'

lat_locations = [find(lat==peaceriver(2)) find(lat==coronation(2)) find(lat==medicinehat(2)) find(lat==northbattleford(2)) find(lat==swiftcurrent(2))...
    find(lat==moosejaw(2)) find(lat==princealbert(2)) find(lat==wynyard(2)) find(lat==regina(2)) find(lat==estevan(2)) find(lat==broadview(2)) ...
    find(lat==yorkton(2)) find(lat==dauphin(2)) find(lat==portlaprairie(2)) find(lat==winnipeg(2)) find(lat==calgary(2)) ]'
    

% hold on
% plot(lon(lon_locations), lat(lat_locations),'ko')

