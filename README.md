## Learning to Detect Salient Objects with Image-level Supervision

### Introduction
WSS is a weakly-supervised saliency detection method with fully convolutional neural networks. This package contains the source code to reproduce the experimental results of WSS reported in our [CVPR 2017 paper](http://openaccess.thecvf.com/content_cvpr_2017/papers/Wang_Learning_to_Detect_CVPR_2017_paper.pdf). The source code is mainly written in MATLAB with the Caffe MATLAB wrapper.

### Usage

* Supported OS: the source code was tested on 64-bit Ubuntu 14.04 Linux OS, and it should also be executable in other linux distributions.

* Dependencies: 
 * Our home-brewed [Caffe framework](https://github.com/wanglijun1989/caffe-cvpr17) and all its dependencies. 
 * Cuda enabled GPUs

* Installation: 
 1. Clone from github via: git clone --recursive https://github.com/scott89/WSS.git
 1. Install caffe-cvpr17: caffe-cvpr17 is our home-brewed version of the original caffe. Change directory into ./caffe-cvpr17 and compile the source code and the matlab interface following the [installation instruction of caffe](http://caffe.berkeleyvision.org/installation.html).
 2. Download the trained caffe model from https://pan.baidu.com/s/1gfxSbSJ, and put both the caffemodel and prototxt files under the ./model directory.
 3. Run the demo code test_sal.m. The predicted saliency maps are saved in the sal_res directory.

* Training:

If you are interested in the training code, you can find the pre-released version at the following two repositories:

https://github.com/wanglijun1989/caffe-cvpr17
https://github.com/wanglijun1989/gt-estimation-cvpr17

However, this version is currently not well documented. A more friendly and easier to use version will be relased in the near future.

### Citing Our Work

If you find WSS useful in your research, please consider to cite our paper:

        @inproceedings{wang2017,
           author = {Wang, Lijun and Lu, Huchuan and Wang, Yifan and Feng, Mengyang and Wang, Dong and Yin, Baocai and Ruan, Xiang},
           title = {Learning to Detect Salient Objects With Image-Level Supervision},
           booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
           year = {2017}
        }

### Contact
If you find any bugs in our code, please contact wlj@mail.dlut.edu.cn

### Liscense

        Copyright (c) 2015, Lijun Wang
        All rights reserved. 
        Redistribution and use in source and binary forms, with or without modification, are 
        permitted provided that the following conditions are met:
    		* Redistributions of source code must retain the above copyright 
      		  notice, this list of conditions and the following disclaimer.
    		* Redistributions in binary form must reproduce the above copyright 
      		  notice, this list of conditions and the following disclaimer in 
      		  the documentation and/or other materials provided with the distribution
        
        THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
        AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
        IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
        ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 	
        LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
        CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
        SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
        INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
        CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
        ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
        POSSIBILITY OF SUCH DAMAGE.
