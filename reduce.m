function im = reduce(arr,color)
    factor = fix(255/color-1);
    for row = 1:size(arr,1)
        for col = 1:size(arr,2) 
            for pix = 1:size(arr,3)
                arr(row,col,pix) = fix(arr(row,col,pix)/factor)*factor;
            end
        end
    end
    im = arr;
end
