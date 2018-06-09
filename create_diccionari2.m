clear;
close all;

tam = 5;
tol=0;
COLORTOLERANCE=45;
R=124;
G=135;
B=103;

folder = fullfile('D:\APUNTS\TFG\diccionari\MATLAB', '\dataset');
baseFileName1 = '1.jpg';
baseFileName2 = '2.jpg';
baseFileName3 = '3.jpg';
baseFileName4 = '4.jpg';
baseFileName5 = '5.jpg';
baseFileName6 = '6.jpg';
baseFileName7 = '7.jpg';
baseFileName8 = '8.jpg';
baseFileName9 = '9.jpg';
baseFileName10 = '10.jpg';

fullFileName1 = fullfile(folder, baseFileName1);
fullFileName2 = fullfile(folder, baseFileName2);
fullFileName3 = fullfile(folder, baseFileName3);
fullFileName4 = fullfile(folder, baseFileName4);
fullFileName5 = fullfile(folder, baseFileName5);
fullFileName6 = fullfile(folder, baseFileName6);
fullFileName7 = fullfile(folder, baseFileName7);
fullFileName8 = fullfile(folder, baseFileName8);
fullFileName9 = fullfile(folder, baseFileName9);
fullFileName10 = fullfile(folder, baseFileName10);

if ~exist(fullFileName1, 'file')
	fullFileName1 = baseFileName1; 
	if ~exist(fullFileName1, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName1);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName2, 'file')
	fullFileName2 = baseFileName2; 
	if ~exist(fullFileName2, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName2);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName3, 'file')
	fullFileName3 = baseFileName3; 
	if ~exist(fullFileName3, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName3);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName4, 'file')
	fullFileName4 = baseFileName4; 
	if ~exist(fullFileName4, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName4);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName5, 'file')
	fullFileName5 = baseFileName5; 
	if ~exist(fullFileName5, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName5);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName6, 'file')
	fullFileName3 = baseFileName6; 
	if ~exist(fullFileName6, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName6);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName7, 'file')
	fullFileName7 = baseFileName7; 
	if ~exist(fullFileName7, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName7);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName8, 'file')
	fullFileName8 = baseFileName8; 
	if ~exist(fullFileName8, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName8);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName9, 'file')
	fullFileName9 = baseFileName9; 
	if ~exist(fullFileName9, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName9);
		uiwait(warndlg(errorMessage));
		return;
	end
end
if ~exist(fullFileName10, 'file')
	fullFileName10 = baseFileName10; 
	if ~exist(fullFileName10, 'file')
		errorMessage = sprintf('Error: %s does not exist.', fullFileName10);
		uiwait(warndlg(errorMessage));
		return;
	end
end

im = imread(fullFileName1);
im2 = imread(fullFileName2);
im3 = imread(fullFileName3);
im4 = imread(fullFileName4);
im5 = imread(fullFileName5);
im6 = imread(fullFileName6);
im7 = imread(fullFileName7);
im8 = imread(fullFileName8);
im9 = imread(fullFileName9);
im10 = imread(fullFileName10);


%figure, imshow(im);

Red = im(:,:,1);
Green = im(:,:,2);
Blue = im(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im(:,:,:)=255;
 for X=1:size(i)
     im(i(X),j(X),:)=0;
 end
 
Red = im2(:,:,1);
Green = im2(:,:,2);
Blue = im2(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im2(:,:,:)=255;
 for X=1:size(i)
     im2(i(X),j(X),:)=0;
 end

Red = im3(:,:,1);
Green = im3(:,:,2);
Blue = im3(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im3(:,:,:)=255;
 for X=1:size(i)
     im3(i(X),j(X),:)=0;
 end

Red = im4(:,:,1);
Green = im4(:,:,2);
Blue = im4(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im4(:,:,:)=255;
 for X=1:size(i)
     im4(i(X),j(X),:)=0;
 end

Red = im5(:,:,1);
Green = im5(:,:,2);
Blue = im5(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im5(:,:,:)=255;
 for X=1:size(i)
     im5(i(X),j(X),:)=0;
 end

Red = im6(:,:,1);
Green = im6(:,:,2);
Blue = im6(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im6(:,:,:)=255;
 for X=1:size(i)
     im6(i(X),j(X),:)=0;
 end

Red = im7(:,:,1);
Green = im7(:,:,2);
Blue = im7(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im7(:,:,:)=255;
 for X=1:size(i)
     im7(i(X),j(X),:)=0;
 end

Red = im8(:,:,1);
Green = im8(:,:,2);
Blue = im8(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im8(:,:,:)=255;
 for X=1:size(i)
     im8(i(X),j(X),:)=0;
 end

Red = im9(:,:,1);
Green = im9(:,:,2);
Blue = im9(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im9(:,:,:)=255;
 for X=1:size(i)
     im9(i(X),j(X),:)=0;
 end

Red = im10(:,:,1);
Green = im10(:,:,2);
Blue = im10(:,:,3);
[i j] = find( sqrt((double(Red) - R).^2 + (double(Green) - G).^2 + (double(Blue) - B).^2) <= COLORTOLERANCE );
im10(:,:,:)=255;
 for X=1:size(i)
     im10(i(X),j(X),:)=0;
 end
 
subplot(3,4,1), imshow(im);
subplot(3,4,2), imshow(im2);
subplot(3,4,3), imshow(im3);
subplot(3,4,4), imshow(im4);
subplot(3,4,5), imshow(im5);
subplot(3,4,6), imshow(im6);
subplot(3,4,7), imshow(im7);
subplot(3,4,8), imshow(im8);
subplot(3,4,10), imshow(im9);
subplot(3,4,11), imshow(im10);

%%
% formatdir = '%d';
% dirName = sprintf(formatdir,cont);

mkdir('PROVES');
folder = fullfile('D:\APUNTS\TFG\diccionari\', 'PROVES'); 
cont=0;
for IM=1:10
    if (IM==1)
    im_aux=im;
    elseif (IM==2)
    im_aux=im2;
    elseif (IM==3)
    im_aux=im3;
    elseif (IM==4)
    im_aux=im4;
    elseif (IM==5)
    im_aux=im5;
    elseif (IM==6)
    im_aux=im6;
    elseif (IM==7)
    im_aux=im7;
    elseif (IM==8)
    im_aux=im8;
    elseif (IM==9)
    im_aux=im9;
    elseif (IM==10)
    im_aux=im10;
    end
    for X=1:(size(im_aux,1)/tam)
        XX=tam*(X-1)+1;
        for Y=1:(size(im_aux,2)/tam)
            YY=tam*(Y-1)+1;
            im11=im_aux(XX:XX+tam-1,YY:YY+tam-1,:);
            if im11(1,1,:)~=125
                cont=cont+1;
                cont2=1;
                for IM2=IM:10
                    if (IM2==IM)
                        im_aux2=im_aux;
                        Xaux=X;
%                           Xaux=1;
                    elseif (IM2==1)
                        im_aux2=im;
                        Xaux=1;
                    elseif (IM2==2)
                        im_aux2=im2;
                        Xaux=1;
                    elseif (IM2==3)
                        im_aux2=im3;
                        Xaux=1;
                    elseif (IM2==4)
                        im_aux2=im4;
                        Xaux=1;
                    elseif (IM2==5)
                        im_aux2=im5;
                        Xaux=1;
                    elseif (IM2==6)
                        im_aux2=im6;
                        Xaux=1;
                    elseif (IM2==7)
                        im_aux2=im7;
                        Xaux=1;
                    elseif (IM2==8)
                        im_aux2=im8;
                        Xaux=1;
                    elseif (IM2==9)
                        im_aux2=im9;
                        Xaux=1;
                    elseif (IM2==10)
                        im_aux2=im10;
                        Xaux=1;
                    end
                
                    for x=Xaux:(size(im_aux2,1)/tam)
                        xx=tam*(x-1)+1;
                        if (IM2==IM && Xaux==x)
                              Yaux=Y;
%                               Yaux=1;
                        else 
                            Yaux=1;
                        end
                        for y=Yaux:(size(im_aux2,2)/tam)
                            yy=tam*(y-1)+1;
                            im_a=im_aux2(xx:xx+tam-1,yy:yy+tam-1,:);
                            if im_a(1,1,1)~=125
                            error=0;
                                for m=1:tam
                                    for n=1:tam
                                        a=im_a(m,n,:);
                                        b=im11(m,n,:);
                                        if a~=b
                                            error=error+1;
                                        end
                                    end
                                end
                                if error<=tol
                                    im_aux2(xx:xx+tam-1,yy:yy+tam-1,1)=125;
                                    cont2=cont2+1;
                                end
                            end
                        end
                    end
                    if (IM==IM2)
                        im_aux=im_aux2;
                    elseif (IM2==1)
                        im=im_aux2;
                    elseif (IM2==2)
                        im2=im_aux2;
                    elseif (IM2==3)
                        im3=im_aux2;
                    elseif (IM2==4)
                        im4=im_aux2;
                    elseif (IM2==5)
                        im5=im_aux2;
                    elseif (IM2==6)
                        im6=im_aux2;
                    elseif (IM2==7)
                        im7=im_aux2;
                    elseif (IM2==8)
                        im8=im_aux2;
                    elseif (IM2==9)
                        im9=im_aux2;
                    elseif (IM2==10)
                        im10=im_aux2;
                    end
                end
            vect(cont)=cont2;
            formatSpec = '%d-%d.jpg';
            baseFileName = sprintf(formatSpec,cont2,cont);
            fullFileName = fullfile(folder, baseFileName);
            imwrite(im11, fullFileName);
            end
        end
    %subplot(3,4,1), imshow(im);subplot(3,4,2), imshow(im2);subplot(3,4,3), imshow(im3);subplot(3,4,4), imshow(im4); subplot(3,4,5), imshow(im5);subplot(3,4,6), imshow(im6);subplot(3,4,7), imshow(im7);subplot(3,4,8), imshow(im8);subplot(3,4,10), imshow(im9);subplot(3,4,11), imshow(im10);
    end
    if (IM==1)
    im=im_aux;
    elseif (IM==2)
    im2=im_aux;
    elseif (IM==3)
    im3=im_aux;
    elseif (IM==4)
    im4=im_aux;
    elseif (IM==2)
    im5=im_aux;
    elseif (IM==2)
    im6=im_aux;
    elseif (IM==2)
    im7=im_aux;
    elseif (IM==2)
    im8=im_aux;
    elseif (IM==2)
    im9=im_aux;
    elseif (IM==2)
    im10=im_aux;
    end
end
    
subplot(3,4,1), imshow(im);
subplot(3,4,2), imshow(im2);
subplot(3,4,3), imshow(im3);
subplot(3,4,4), imshow(im4);
subplot(3,4,5), imshow(im5);
subplot(3,4,6), imshow(im6);
subplot(3,4,7), imshow(im7);
subplot(3,4,8), imshow(im8);
subplot(3,4,10), imshow(im9);
subplot(3,4,11), imshow(im10);  
    
%mkdir('1');
%folder = fullfile('D:\APUNTS\TFG\diccionari', '\1');
%baseFileName = '2.jpg';
%fullFileName = fullfile(folder, baseFileName);

%imwrite(im, fullFileName);
