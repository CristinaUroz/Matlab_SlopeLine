clear
close
images ='.\tria_2';
jpgfiles=dir(fullfile(images,'\*.jpg*'))
vect(1,1)="im";
vect(1,2)="t";
for idx=1:91917
    im=jpgfiles(idx).name
    im1=imread(fullfile(images,im))
    t="";
    for x=1:5
        for y=1:5
            if im1(x,y,1)>=200
                t=t+0;
            else t=t+1;
            end
        end
    end
    %vect(idx,1)=im;
    C = strsplit(im,".");
    vect(idx,1)=C(1);
    vect(idx,2)=t;
end
