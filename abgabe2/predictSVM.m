function [ y_new ] = predictSVM( alpha, X, t, x_new )
%PREDICTSVM Summary of this function goes here
%   Detailed explanation goes here


    y_new = dot(calculate_weights(X,t,alpha)',x_new) + bias;
    
end

