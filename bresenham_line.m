% AUTHOR    :CHANDAN KUMAR 
% TITLE     :BRESENHAM LINE ALGORITHM
% SUBJECT   :COMPUTER GRAPHICS AND SOLID MODELLING
% DISCLAIMER:CODE DRAWS A LINE USING BRESENHAM LINE ALGORITHM.


clc
clear all

fid = fopen('lines_1206.txt');
for ind=1:1206
    token = 0; 
    line_ex = fgetl(fid);
   
%     if line_ex~=-1
    C = strsplit(line_ex,";");
    error=0;
    vect= [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

    if size(C,2)==4
        vect((str2num(cell2mat(C(2)))+str2num(cell2mat(C(3)))*5)+1)=1;
    elseif size(C,2)==6 
        point = [str2num(cell2mat(C(2))) str2num(cell2mat(C(3))) str2num(cell2mat(C(4))) str2num(cell2mat(C(5)))];


        if (abs(point(4)-point(2)) > abs(point(3)-point(1)))       % If the line is steep                                
            x0 = point(2);y0 = point(1); x1 = point(4);y1=point(3);% then it would be converted to 
            token =1;                                              % non steep by changing coordinate
        else
            x0 = point(1);y0 = point(2); x1 = point(3);y1=point(4);
            token = 0; 
        end

        vect((x0+y0*5)+1)=1;
        vect((x1+y1*5)+1)=1;

        if(x0 >x1)
            temp1 = x0; x0 = x1; x1 = temp1;
            temp2 = y0; y0 = y1; y1 = temp2;
        end
        dx = abs(x1 - x0) ;                              % Distance to travel in x-direction
        dy = abs(y1 - y0);                               % Distance to travel in y-direction
        sx = sign(x1 - x0);                              % sx indicates direction of travel in X-dir
        sy = sign(y1 - y0);                              % Ensures positive slope line

        x = x0; y = y0;                                  % Initialization of line
        param = 2*dy - dx ;                              % Initialization of error parameter
        for i = 0:dx-1                                   % FOR loop to travel along X

            if (token ==0)                               % Plotting in point form 
                vect((x+y*5)+1)=1;
            else                                         % converted for actual line drawing.
                vect((y+x*5)+1)=1;
            end
            param = param + 2*dy;                        % parameter value is modified
            if (param >0)                                % if parameter value is exceeded
                y = y +1*sy;                             % then y coordinate is increased
                param = param - 2*(dx );                 % and parameter value is decreased

            end
            x = x + 1*sx;                                % X-coordinate is increased for next point
        end
    else 
        error=1;
    end
    t="";
    if token==0
        for i=1:25
            t=t+int2str(vect(i));
        end
    else 
        for i=0:4
            for ii=0:4
                aux=(i+ii*5)+1;
                t=t+int2str(vect(aux));
            end
        end
    end
    if error==1
        t="error";
    end
    fin(ind,1)="";
    fin(ind,2)="";
    fin(ind,1)=C(1);
    fin(ind,2)=t;
%      else 
%          fin(ind,1)="ima"+ind;
%      end
end
