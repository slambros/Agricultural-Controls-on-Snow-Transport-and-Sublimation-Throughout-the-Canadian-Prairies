%ave tran and sub across all years monthly
%left y tran diff, right y sub diff
no_nans_tran_diff_nov = tran_diff_novs_ave;
no_nans_tran_diff_nov(isnan(no_nans_tran_diff_nov))=[];
mean_nov_tran  = mean(no_nans_tran_diff_nov);
std_nov_tran = std(no_nans_tran_diff_nov);
above_std_nov_tran = mean_nov_tran + std_nov_tran;
below_std_nov_tran = mean_nov_tran - std_nov_tran;

no_nans_tran_diff_dec = tran_diff_decs_ave;
no_nans_tran_diff_dec(isnan(no_nans_tran_diff_dec))=[];
mean_dec_tran = mean(no_nans_tran_diff_dec);
std_dec_tran = std(no_nans_tran_diff_dec);
above_std_dec_tran = mean_dec_tran + std_dec_tran;
below_std_dec_tran = mean_dec_tran - std_dec_tran;

no_nans_tran_diff_jan = tran_diff_januarys_ave;
no_nans_tran_diff_jan(isnan(no_nans_tran_diff_jan))=[];
mean_jan_tran = mean(no_nans_tran_diff_jan);
std_jan_tran = std(no_nans_tran_diff_jan);
above_std_jan_tran = mean_jan_tran + std_jan_tran;
below_std_jan_tran = mean_jan_tran - std_jan_tran;

no_nans_tran_diff_feb = tran_diff_febs_ave;
no_nans_tran_diff_feb(isnan(no_nans_tran_diff_feb))=[];
mean_feb_tran = mean(no_nans_tran_diff_feb);
std_feb_tran = std(no_nans_tran_diff_feb);
above_std_feb_tran = mean_feb_tran + std_feb_tran;
below_std_feb_tran = mean_feb_tran - std_feb_tran;

no_nans_tran_diff_march = tran_diff_marchs_ave;
no_nans_tran_diff_march(isnan(no_nans_tran_diff_march))=[];
mean_march_tran = mean(no_nans_tran_diff_march);
std_march_tran = std(no_nans_tran_diff_march);
above_std_march_tran = mean_march_tran + std_march_tran;
below_std_march_tran = mean_march_tran - std_march_tran;


no_nans_tran_diff_april = tran_diff_aprils_ave;
no_nans_tran_diff_april(isnan(no_nans_tran_diff_april))=[];
mean_april_tran = mean(no_nans_tran_diff_april);
std_april_tran = std(no_nans_tran_diff_april);
above_std_april_tran = mean_april_tran + std_april_tran;
below_std_april_tran = mean_april_tran - std_april_tran;

all_means_tran = [mean_nov_tran mean_dec_tran mean_jan_tran mean_feb_tran mean_march_tran mean_april_tran];

all_above_tran = [above_std_nov_tran above_std_dec_tran above_std_jan_tran above_std_feb_tran above_std_march_tran above_std_april_tran];

all_below_tran = [below_std_nov_tran below_std_dec_tran below_std_jan_tran below_std_feb_tran below_std_march_tran below_std_april_tran];


all_means_tran = [mean_nov_tran mean_dec_tran mean_jan_tran mean_feb_tran mean_march_tran mean_april_tran];
%%

no_nans_sub_diff_nov = sub_diff_novs_ave;
no_nans_sub_diff_nov(isnan(no_nans_sub_diff_nov))=[];
mean_nov_sub  = mean(no_nans_sub_diff_nov);
std_nov_sub = std(no_nans_sub_diff_nov);
above_std_nov_sub = mean_nov_sub + std_nov_sub;
below_std_nov_sub = mean_nov_sub - std_nov_sub;

no_nans_sub_diff_dec = sub_diff_decs_ave;
no_nans_sub_diff_dec(isnan(no_nans_sub_diff_dec))=[];
mean_dec_sub = mean(no_nans_sub_diff_dec);
std_dec_sub = std(no_nans_sub_diff_dec);
above_std_dec_sub = mean_dec_sub + std_dec_sub;
below_std_dec_sub = mean_dec_sub - std_dec_sub;

no_nans_sub_diff_jan = sub_diff_januarys_ave;
no_nans_sub_diff_jan(isnan(no_nans_sub_diff_jan))=[];
mean_jan_sub = mean(no_nans_sub_diff_jan);
std_jan_sub = std(no_nans_sub_diff_jan);
above_std_jan_sub = mean_jan_sub + std_jan_sub;
below_std_jan_sub = mean_jan_sub - std_jan_sub;

no_nans_sub_diff_feb = sub_diff_febs_ave;
no_nans_sub_diff_feb(isnan(no_nans_sub_diff_feb))=[];
mean_feb_sub = mean(no_nans_sub_diff_feb);
std_feb_sub = std(no_nans_sub_diff_feb);
above_std_feb_sub = mean_feb_sub + std_feb_sub;
below_std_feb_sub = mean_feb_sub - std_feb_sub;

no_nans_sub_diff_march = sub_diff_marchs_ave;
no_nans_sub_diff_march(isnan(no_nans_sub_diff_march))=[];
mean_march_sub = mean(no_nans_sub_diff_march);
std_march_sub = std(no_nans_sub_diff_march);
above_std_march_sub = mean_march_sub + std_march_sub;
below_std_march_sub = mean_march_sub - std_march_sub;

no_nans_sub_diff_april = sub_diff_aprils_ave;
no_nans_sub_diff_april(isnan(no_nans_sub_diff_april))=[];
mean_april_sub = mean(no_nans_sub_diff_april);
std_april_sub = std(no_nans_sub_diff_april);
above_std_april_sub = mean_april_sub + std_april_sub;
below_std_april_sub = mean_april_sub - std_april_sub;

all_means_sub = [mean_nov_sub mean_dec_sub mean_jan_sub mean_feb_sub mean_march_sub mean_april_sub];

all_above_sub = [above_std_nov_sub above_std_dec_sub above_std_jan_sub above_std_feb_sub above_std_march_sub above_std_april_sub];

all_below_sub = [below_std_nov_sub below_std_dec_sub below_std_jan_sub below_std_feb_sub below_std_march_sub below_std_april_sub];

x_axis_points = [1 2 3 4 5 6];

%%
figure('Position',[100 100 780 500])

plot(x_axis_points, all_below_tran)
hold on
plot(x_axis_points, all_above_tran)

trancolour = [155, 220 , 155]./255;
% Create the boundaries of the upper points and the lower points.
% Assume y1 and y2 have the same number of elements located at the same x values.
upperBoundarytran = max(all_below_tran, all_above_tran);
lowerBoundarytran = min(all_below_tran, all_above_tran);
% Now do the actual display of the shaded region.
patch([x_axis_points fliplr(x_axis_points)], [upperBoundarytran  fliplr(lowerBoundarytran)], trancolour); 
alpha(0.2)

plot(x_axis_points, all_means_tran,'k--','linewidth', 2)

hold on
plot(x_axis_points, all_below_sub)
hold on
plot(x_axis_points, all_above_sub)

subcolour = [255, 173, 170]./255;
% Create the boundaries of the upper points and the lower points.
% Assume y1 and y2 have the same number of elements located at the same x values.
upperBoundarysub = max(all_below_sub, all_above_sub);
lowerBoundarysub = min(all_below_sub, all_above_sub);
% Now do the actual display of the shaded region.
patch([x_axis_points fliplr(x_axis_points)], [upperBoundarysub  fliplr(lowerBoundarysub)], subcolour); 
alpha(0.4)

hold on
plot(x_axis_points, all_means_sub,'k-.','linewidth', 2)

ylim([-4 1])
title('Average Change in Transport and Sublimation')
yline(0,'k-')
ylabel('mmSWE')
hLeg = gobjects(2,1);
hLeg(1) = plot(NaN,NaN, 'k--'); %%%%%%fixed
hLeg(2) = plot(NaN,NaN, 'k-.','linewidth',2);%%%%%%%
legend(hLeg,'Average transport','Average sublimation','Location','southeast');

a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',15)
set(gca,'XTickLabelMode','auto')
xticks([1 2 3 4 5 6]);
xticklabels({'November','December','January','February','March','April'})