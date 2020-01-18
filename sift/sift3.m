    I1 = rgb2gray(imread('thermal2.jpg'));
    I2 = rgb2gray(imread('thermal2.JPG'));
    
     points1 = detectHarrisFeatures(I1);
    points2 = detectHarrisFeatures(I2);
    
    [features1, valid_points1] = extractFeatures(I1, points1);
    [features2, valid_points2] = extractFeatures(I2, points2);
    
     indexPairs = matchFeatures(features1, features2);
     
      matched_points1 = valid_points1(indexPairs(:, 1), :);
    matched_points2 = valid_points2(indexPairs(:, 2), :);
    %{
    corners1 = matched_points1.Location;
    corners2 = matched_points2.Location;
    
    loc1 = uint16(corners1);
    loc2 = uint16(corners2);
    %disp(loc);
    size_ind = (loc1(2, 1)-loc1(1, 1))/(loc2(2, 1)-loc2(1, 1));
    loc_x = loc1(2, 1) - loc2(2, 1);
    loc_y = loc1(1, 2) - loc2(1, 2);
    I3 = imresize(I2, size_ind);
    %imshift(I3,loc_x,loc_y);
    disp(loc_x);
    [rows columns]=size(I3);
    for i = 1 : rows
        for j = 1 : columns
            I1(i - loc_x, j - loc_y) = I3(i, j);
        end
    end
    
 
    
    %imshow(I1);
    %imagesc(I3), imagesc(I1);
    
   % hold on;
        %imshow(I3);
     %   imshift(im3,loc_x,loc_y);
    %hold off;
    %}
    figure; showMatchedFeatures(I1, I3, matched_points1, matched_points2);