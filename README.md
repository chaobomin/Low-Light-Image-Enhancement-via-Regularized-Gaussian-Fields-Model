# Low Light Image Enhancement via Regularized Gaussian Fields Model
 Xiang Yi, Chaobo Min*, Mengchen Shao, Huijie Zheng, Qingfeng Lv

School of Internet of Things Engineering, Hohai University, Changzhou 213022, China

Neural Processing Letters
https://doi.org/10.1007/s11063-023-11407-w

Abstract:  
Retinex decomposition is a prevalent solution to low-light image enhancement. It is usually
considered as a constrained optimization problem. To improve enhancement performance,
theRetinex model is incorporated with various prior constraints, whichmake the optimization
process complicated and difficult. In this paper, a method of low-light enhancement with regularized
Gaussian Fields (RGF) model is proposed to address this issue. Firstly, we construct
an RGF-based optimization model to formulate simultaneous reflectance and illumination
estimation as an unconstrained optimization problem. Therefore, Retinex decomposition in
RGF model can be solved by gradient descent techniques and has superiority on computational
convenience. Then, to suppress noise and preserve detail in the estimated reflectance,
the detail-preserving model based on Gaussian total variation (GTV) is established. The qualitative
and quantitative comparisons on several public datasets demonstrate the superiority
of our method over several state-of-the-arts in terms of enhancement efficiency and quality.

Requirements: Matlab 2014

Please download the files 'img_data' and 'src', and then run RGF_main.m.

