
% plot outputs

time = timevec;
nfig=0;

% 2D plots
% --- TRANSLATIONS ---
  nfig=nfig+1;
  figure(nfig);
  
  subplot(2,2,1)  
  plot (time, z,'LineWidth',2)
  set(gca,'fontsize',15)
  ylim([0 4])
  title('Ketinggian','FontSize',19,'FontName','arial','FontWeight','bold')
  ylabel('z [m]','FontSize',17,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',17,'FontName','arial','FontWeight','bold')
  grid on;    
 
  subplot(2,2,2)  
  plot (time, yaw,'r','LineWidth',2)
  set(gca,'fontsize',15)
  ylim([-1 1])
  title('Sudut Yaw','FontSize',19,'FontName','arial','FontWeight','bold')
  ylabel('Yaw [rad]','FontSize',17,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',17,'FontName','arial','FontWeight','bold')
  grid on;    
  
% --- ROTATIONS ---
  subplot(2,2,3)  
  plot (time, roll,'r','LineWidth',2)
  set(gca,'fontsize',15)
  ylim([-1 1])
  title('Sudut Roll','FontSize',19,'FontName','arial','FontWeight','bold')
  ylabel('Roll [rad]','FontSize',17,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',17,'FontName','arial','FontWeight','bold')
  grid on;    

  subplot(2,2,4)
  plot (time, pitch,'r','LineWidth',2)
  set(gca,'fontsize',15)
  ylim([-1 1])
  title('Sudut Pitch','FontSize',19,'FontName','arial','FontWeight','bold')
  ylabel('Pitch [rad]','FontSize',17,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',17,'FontName','arial','FontWeight','bold')
  grid on;      