
% plot outputs

time = timevec;
nfig=0;

% 2D plots
% --- TRANSLATIONS ---
  nfig=nfig+1;
  figure(nfig);
  subplot(3,2,1)
  plot (time, x,'r','LineWidth',2)
  title('X position','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('x [m]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;

  subplot(3,2,3)
  plot (time, y,'r','LineWidth',2)
  title('Y position','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('y [m]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;

  subplot(3,2,5)  
  plot (time, z,'r','LineWidth',2)
  ylim([0 10])
  title('Z position','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('z [m]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;    
 
% --- ROTATIONS ---
  subplot(3,2,2)  
  plot (time, roll,'r','LineWidth',2)
  title('Roll angle','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('Roll [rad]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;    

  subplot(3,2,4)  
  plot (time, pitch,'r','LineWidth',2)
  title('Pitch angle','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('Pitch [rad]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;    
  
  subplot(3,2,6)  
  plot (time, yaw,'r','LineWidth',2)
  title('Yaw angle','FontSize',16,'FontName','arial','FontWeight','bold')
  ylabel('Yaw [rad]','FontSize',14,'FontName','arial','FontWeight','bold')
  xlabel('Time [s]','FontSize',14,'FontName','arial','FontWeight','bold')
  grid on;      
 
%   nfig=nfig+1;
%   figure(nfig);
%   plot (time, fyaw,'r','LineWidth',2)
%   title('Yaw angle','FontSize',18,'FontName','arial','FontWeight','bold')
%   ylabel('Yaw [rad]','FontSize',18,'FontName','arial','FontWeight','bold')
%   xlabel('Time [s]','FontSize',18,'FontName','arial','FontWeight','bold')
%   grid on;  
%   ylim([-0.2 0.8]);
% 
%   nfig=nfig+1;
%   figure(nfig);
%   plot (time, fz,'r','LineWidth',2)
%   title('Altitude','FontSize',18,'FontName','arial','FontWeight','bold')
%   ylabel('Altitude [m]','FontSize',18,'FontName','arial','FontWeight','bold')
%   xlabel('Time [s]','FontSize',18,'FontName','arial','FontWeight','bold')
%   grid on;  
%   ylim([0 0.8]);

%  legend('altitude reference (zd)','altitude (z)', 'simulated altitude (zs)')