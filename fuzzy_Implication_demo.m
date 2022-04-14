clc
clear
close all

[a,b] = meshgrid(0:0.05:1);

Is_name = {'Kleen-Denese', 'Reichenbach', 'Lukasiewicz', 'Godel', 'Goguen', 'Zadeh'};
for k = 1:length(Is_name)
    [Is] = fuzzy_Implication(a, b, Is_name{k});
    plot_Is(a,b,Is,Is_name{k},k);
end

function plot_Is(a,b,Is,plot_title,selected_plot)
    subplot(2,3,selected_plot);
    surf(a,b,Is);
    xlabel('a');
    ylabel('b');
    zlabel('I_s');
    grid minor;
    title(plot_title);
    axis square;
    view([20,20,70]);
end
