function [ out_map] = network_forward_sal(net, im)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [height, width, ~] = size(im);
    input = prepare_img(im, false);
    out_map = net.forward({input});
    out_map = out_map{1};
    out_map = permute(out_map, [2,1,3]);
    out_map = imresize(out_map, [height, width]);
end