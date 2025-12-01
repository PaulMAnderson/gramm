function obj=no_legend(obj,varargin)
% no_legend() remove side legend on the plot
% Modified by Paul Anderson 27-4-21
% Now takes optional arguments: 
% 'color', 'size', 'lightness', 'marker', 'linestyle'

% Useful when plotting multiple gramm objects with the same
% legend

if isempty(varargin)
    obj.layout_options.legend=false;
else
    for argI = 1:length(varargin)
        switch varargin{argI}
            case {'color', 'size', 'lightness', 'marker', 'linestyle'}
                obj.layout_options.omit_legend = ...
                    [obj.layout_options.omit_legend varargin(argI)];
            otherwise
               warning(['no_legend argument not recognised.' ... 
                        'Takes only ''color'', ''size'', ''lightness'','...
                        '''marker'' & ''linestyle'''])
        end 
    end 
end

end