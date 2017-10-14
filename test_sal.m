%% init caffe
close all; clear; clc;
addpath('util/')
init_test_sal;
rng(0);

t = 0;
%% Main loop
for ii=1:length(imnames)
    fprintf('Processing Img:%d/%d\n', ii, length(imnames));
    %% read image
    im = imread(sprintf('%s%s', imgRoot, imnames(ii).name));
    tic;
    [height, width, ch] = size(im);
    if ch ~= 3
        im = repmat(im, [1,1,3]);
    end
    %% forward pass
    sal_map = network_forward_sal(net, im);
    sal_map = sal_map(:,:,2);
    sal_map = imresize(sal_map, [height, width]);
    t = toc + t;
    imwrite(sal_map, [res_path imnames(ii).name(1:end-3) 'png']);
end
speed = length(imnames) / t;
fprintf('Speed: %f FPS\n',speed)
caffe.reset_all;
    