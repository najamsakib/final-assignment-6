% Speed.m
% File defining one of the methods of class BallisticDataAnalysis.
% =========================================================================
% Write something short.
%
% Describe what this function does and what it assumes
% =========================================================================
% modified (10/04/2021)
% by (Zhenyuan Niu)
% =========================================================================
function success = Speed(obj)
    try
       
%        x_distance = (xdataAfterChange)-(xdataBeforeChange);
%        y_distance = (ydataAfterChange)-(ydataBeforeChange);
%        z_distance = (zdataAfterChange)-(zdataBeforeChange);
%        z_speed=(z_distance)/0.05 ;
%        x_speed=(x_distance)/0.05 ;
%        y_speed=(y_distance)/0.05 ;
%        % x_speed = (xdata)./(time_data);
       % y_speed = (ydata)./(time_data);
       % z_speed = (zdata)./(time_data);
        % speed of x  vs Time
        %obj = Analysis;
        time_data = obj.A(:,1);
        for i =1:10
            figure(5)
            plot(time_data,gradient(obj.xdata(:,i)))
            hold on
            xlabel('time')
            ylabel('Speed of X')
            % speed of y  vs Time
            figure(6)
            plot(time_data,gradient(obj.ydata(:,i)))
            hold on
            xlabel('time')
            ylabel('Speed of y')
            % speed of z  vs Time
            figure(7)
            p1=plot(time_data,gradient(obj.zdata(:,i)),time_data,0.8-0.2170*time_data)
            p1(2).LineWidth = 4;
            hold on
            xlabel('time')
            ylabel('Speed of z')
            
        end
%         disp(obj.SillyMessage);
        success = true;
    catch
        warning('Something went wrong in running Speed!');
        success = false;
    end
end
         
         
