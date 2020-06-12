f=imread('rice.png');
figure,imshow(f);title('rice.png-Orijinal Imge')

max_r=size(f,1);
max_c=size(f,2);
histogram=zeros([1 256]);
cumulative_hist=zeros([1 256]);

for r=1:max_r
    for c=1:max_c
        for count=1:256
            if(f(r,c)==count-1)
                histogram(count)=histogram(count)+1;
                break;
            end
        end
    end
end

current_value=0;
for count=1:256
    current_value=current_value+histogram(count);
    cumulative_hist(count)=current_value;
end

normalized_hist=zeros([1 256]);
cdf_min=min(cumulative_hist);
for count=1:256
    normalized_hist(count)=cumulative_hist(count)-cdf_min;
    normalized_hist(count)=normalized_hist(count)/((max_r*max_c)-cdf_min);
    normalized_hist(count)=round(normalized_hist(count)*255);
end

equalized_image=zeros([max_r max_c]);
for r=1:max_r
    for c=1:max_c
        for count=1:256
            if(f(r,c)==count-1)
                equalized_img(r,c)=normalized_hist(count);
                break;
            end
        end
    end
end
figure,imshow(uint8(equalized_img));
title('rice.png-Esitleme Sonrası Imge')
