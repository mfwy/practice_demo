function plot_star(star)
plot(star(:,1),star(:,2),'or')
for i=2:size(star,1)
    line([star(1,1),star(i,1)],[star(1,2),star(i,2)],'LineWidth',2)
end
end