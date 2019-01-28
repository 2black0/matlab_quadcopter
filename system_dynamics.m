% - system dynamics for quadrotor -----------------------------------
%
function out = system_dynamics(in)

% - load global constants -------------------------------------------
%
const_global
%
% - state variables -------------------------------------------------
%
x1  = in(1);      % x position
x2  = in(2);      % xdot velocity
x3  = in(3);      % y position
x4  = in(4);      % ydot velocity
x5  = in(5);      % z position
x6  = in(6);      % zdot velocity

x7  = in(7);      % phi roll angle
x8  = in(8);      % phidot roll velocity
x9  = in(9);      % theta pitch angle
x10 = in(10);     % thetadot pitch velocity
x11 = in(11);     % psi yaw angle
x12 = in(12);     % psidot yaw velocity

% - system inputs ---------------------------------------------------
%
Om_1    = in(13);
Om_2    = in(14);
Om_3    = in(15);
Om_4    = in(16);

U1    = b*(Om_1^2 + Om_2^2 + Om_3^2 + Om_4^2);
U2    = b*L*(-Om_2^2 + Om_4^2);
U3    = b*L*(Om_1^2 - Om_3^2);
U4    = d*(-Om_1^2 + Om_2^2 - Om_3^2 + Om_4^2);
omega = - Om_1 + Om_2 - Om_3 + Om_4; 

% - first order differential equations ------------------------------
%
xdot        = x2;   
xddot       = (U1*(cos(x7)*sin(x9)*cos(x11) + sin(x7)*sin(x11)))/m;
ydot        = x4;
yddot       = (U1*(cos(x7)*sin(x9)*sin(x11) - sin(x7)*cos(x11)))/m;
zdot        = x6;
zddot       = g - (U1*(cos(x7)*cos(x9)))/m;
phidot      = x8;
phiddot     = x10*x12*(Iyy-Izz)/Ixx - Jr*(x10/Ixx)*omega + U2/Ixx;
thetadot    = x10;
thetaddot   = x8*x12*(Izz-Ixx)/Iyy - Jr*(-x8/Iyy)*omega + U3/Iyy;
psidot      = x12;
psiddot     = x8*x10*(Ixx-Iyy)/Izz + U4/Izz;

% - first order differential equations ------------------------------
%
%xdot        = x2;   
%xddot       = 1/m * (cos(x7)*sin(x9)*cos(x11) + sin(x7)*sin(x11)) * U1;
%ydot        = x4;
%yddot       = 1/m * (cos(x7)*sin(x9)*sin(x11) - sin(x7)*cos(x11)) * U1;
%zdot        = x6;
%zddot       = - g + 1/m*cos(x7)*cos(x9) * U1;
%phidot      = x8;
%phiddot     = x10*x12*(Iyy-Izz)/Ixx + Jr/Ixx*x10*omega + L/Ixx * U2;
%thetadot    = x10;
%thetaddot   = x8*x12*(Izz-Ixx)/Iyy - Jr/Iyy*x8*omega + L/Iyy * U3;
%psidot      = x12;
%psiddot     = x8*x10*(Ixx-Iyy)/Izz + U4/Izz;

% - function output - state variable derivatives --------------------
%
out(1)  = xdot;         % xdot velocity
out(2)  = xddot;        % xddot acceleration
out(3)  = ydot;         % ydot velocity
out(4)  = yddot;        % yddot acceleration
out(5)  = zdot;         % zdot velocity
out(6)  = zddot;        % zddot acceleration
%
out(7)  = phidot;       % phidot roll velocity
out(8)  = phiddot;      % phiddot acceleration
out(9)  = thetadot;     % thetadot roll velocity
out(10) = thetaddot;    % thetaddot acceleration
out(11) = psidot;       % psidot roll velocity
out(12) = psiddot;      % psiddot acceleration

% - end of file -----------------------------------------------------