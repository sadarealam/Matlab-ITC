classdef HNode < handle
    %Tree Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        val
        weight
        order
        left
        right
        parent
    end
    
    methods
        function obj = HNode(valuep,weightp,orderp,leftp,rightp,parentp)
            if nargin > 0
                obj.val = valuep;
                obj.weight = weightp;
                obj.order = orderp;
                obj.left = leftp;
                obj.right = rightp;
                obj.parent = parentp;
            else                 
                obj.val = 0 ;
                obj.weight = 0;
                obj.order = 0 ;
                obj.left = NaN ;
                obj.right = NaN;
                obj.parent = NaN ;
            end
        end       
       
    end
    
end

