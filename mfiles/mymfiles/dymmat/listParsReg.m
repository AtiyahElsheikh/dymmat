%
% list parameters of a simulation structure which match a given regular
% expression 
% 
% call: 
%     listParsReg(simopt,reg)
%
%  simopt : A simulation structure set by the call setSimulation 
%  reg: a regular expression 
% 
%  Author : Atiyah Elsheikh, Austrian Institute of Technology GmbH 
%  Years  : 2011-2014
%


%
% Copyright (C) Atiyah Elsheikh 
% Atiyah.Elsheikh@ait.ac.at,a.m.g.Elsheikh@gmail.com) 2014, 
% AIT Austrian Institute of Technology GmbH
% This file is part of the software dymmat toolbox
% dymmat is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% dymmat is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
% GNU Lesser General Public License for more details.
% You should have received a copy of the GNU Lesser General Public License
% along with dymmat. If not, see <http://www.gnu.org/licenses/>
%

function ncnt = listParsReg(simopt,reg)

    npars = length(simopt.plabels); 
    mat = regexp(simopt.plabels,reg); 
    ncnt = 0; 
    for i=1:npars 
        if(~isempty(mat{i})) 
            fprintf('%5d  %50s  = %f\n',i,simopt.plabels{i},simopt.pvalues(i));
            ncnt = ncnt + 1; 
        end
    end

end 
