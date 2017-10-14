%% Add path and init caffe
caffe_root = '/home/lijun/Research/Code/caffe-blvc/';
addpath([caffe_root '/matlab/'],genpath('./external'), 'util/');
caffe.reset_all;
gpu_id = 0;
caffe.set_mode_gpu();
caffe.set_device(gpu_id);
%  test_set = 'PASCAL-S';
% test_set = 'HKU-IS';
% test_set = 'DUT_OMRON';
% test_set = 'DUT_OMRON';
% test_set = 'ECSSD';
% test_set = 'THUR';
% test_set = 'THUS'
% test_set = 'SED1'
test_set = 'SED2'

iteration = 80000;
model_version = 'cvpr17-sal-finetune';
% model_version = 'server12';
training_version = 'sal-finetune-3-0';
model_weights = [caffe_root 'models/' model_version '/' training_version '_iter_' num2str(iteration) '.caffemodel'];%3100
model_def = [caffe_root 'examples/' 'cvpr17-sal-finetune' '/deploy.prototxt'];
phase = 'test';
net = caffe.Net(model_def, model_weights, phase);
%% path
imgRoot=['/home/lijun/Research/DataSet/Saliency/' test_set '/' test_set '-Image/'];% test image path
imnames=dir([imgRoot '*' 'bmp']);
res_path = ['sal_res/' test_set '/' model_version '/' training_version '-' num2str(iteration) '/'];
if ~isdir(res_path)
    mkdir(res_path);
end