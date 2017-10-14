%% Add path and init caffe
caffe_root = 'caffe-cvpr17/';
addpath([caffe_root '/matlab/']);
caffe.reset_all;
gpu_id = 0;
caffe.set_mode_gpu();
caffe.set_device(gpu_id);
model_weights = 'model/sal-finetune-3-0_iter_80000.caffemodel';
model_def = 'model/deploy.prototxt';
phase = 'test';
net = caffe.Net(model_def, model_weights, phase);
%% path
imgRoot='imgs/';% test image path
imnames=dir([imgRoot '*.jpg']);
res_path = 'sal_res/';
if ~isdir(res_path)
    mkdir(res_path);
end