clc
clear all
binar=525;

fid = fopen('binaritzacio_1206_t.txt');
for ind=1:binar
    line_ex = fgetl(fid);
    C = strsplit(line_ex,"	");
    vect(ind)=C(1);
end

tam = 5;
tol=0;
COLORTOLERANCE=45;
R=124;
G=135;
B=103;
cont_si=0;
cont_no=0;

folder = fullfile('D:\APUNTS\TFG\diccionari\MATLAB', '\dataset');
baseFileName = '1.jpg';
fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')
	fullFileName = baseFileName; 
	if ~exist(fullFileName, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName);
		uiwait(warndlg(errorMessage));
		return;
	end
end
im = imread(fullFileName);
Red = im(:,:,1);
Green = im(:,:,2);
Blue = im(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im(:,:,:)=255;
 for X=1:size(i)
     im(i(X),j(X),:)=0;
 end
cont=0;

for X=1:((size(im,1)-5)/4)
    XX = X*4;
    for Y=1:((size(im,2)-5)/4)
        YY = Y*4;
        t="";
        for x=XX:XX+tam-1
            for y=YY:YY+tam-1
                if im(x,y,2)>=200
                    t=t+0;
                else t=t+1;
                end
            end
        end
        for ind=1:binar
            if vect(ind)==t
                im(XX:XX+tam-1,YY:YY+tam-1,1)=125; 
            end                           
        end
        if im(XX:XX+tam-1,YY:YY+tam-1,1)~=125 
        end
    end
end

for X=1:(size(im,1)-4)
    for Y=1:(size(im,2)-4)
        if  im(X,Y,1)==125
            cont_si=cont_si+1;
        else
            cont_no=cont_no+1;
        end
   end
end
    
figure, imshow(im);   