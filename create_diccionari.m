clear;
close all;

tam = 5;
tol=0;
COLORTOLERANCE=45;
R=124;
G=135;
B=103;

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

%figure, imshow(im);

Red = im(:,:,1);
Green = im(:,:,2);
Blue = im(:,:,3);

[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im(:,:,:)=255;
 for X=1:size(i)
     im(i(X),j(X),:)=0;
 end
%figure, imshow(im);
im2=im(tam+1:tam+tam+1,tam+1:tam+tam+1,:)
%figure, imshow(im2);

% formatdir = '%d';
% dirName = sprintf(formatdir,cont);
mkdir('PROVES');
folder = fullfile('D:\APUNTS\TFG\diccionari\', 'PROVES'); 
cont=0;
for X=1:(size(im,1)/tam)
    XX=tam*(X-1)+1;
    for Y=1:(size(im,2)/tam)
        YY=tam*(Y-1)+1;
        im2=im(XX:XX+tam-1,YY:YY+tam-1,:);
        if im2(1,1,:)~=125
            cont=cont+1;
            formatSpec = '%d.jpg';
            baseFileName = sprintf(formatSpec,cont);
            fullFileName = fullfile(folder, baseFileName);
            imwrite(im2, fullFileName);
            for x=1:(size(im,1)/tam)
                xx=tam*(x-1)+1;
                for y=1:(size(im,2)/tam)
                    yy=tam*(y-1)+1;
                    im_aux=im(xx:xx+tam-1,yy:yy+tam-1,:);
                    if im_aux(1,1,1)~=125
                    error=0;
                        for m=1:tam
                            for n=1:tam
                                a=im_aux(m,n,:);
                                b=im2(m,n,:);
                                if a~=b
                                    error=error+1;
                                end
                            end
                        end
                        if error<=tol
                            im(xx:xx+tam-1,yy:yy+tam-1,1)=125;
                        end
                    end
                end
            end
        end
    end
end
    
figure, imshow(im);   
    
%mkdir('1');
%folder = fullfile('D:\APUNTS\TFG\diccionari', '\1');
%baseFileName = '2.jpg';
%fullFileName = fullfile(folder, baseFileName);

%imwrite(im, fullFileName);
