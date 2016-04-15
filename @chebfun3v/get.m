function val = get( f, propName )
%GET   Get CHEBFUN3V properties.
%
%   P = GET(F, PROP) returns the property P specified in the string PROP from
%   the CHEBFUN3V F. Valid entries for the string PROP are:
%   'components'  - The CHEBFUN3 in the first component.
%   'nComponents'  - The number of components in a CHEBFUN3.
%   'isTransposed' - Is the CHEBFUN3V a column or row vector?

if ( numel(f) > 1 )
    val = cell(numel(f));
    for k = 1:numel(f)
        val{k} = get(f(k), propName);
    end
    return
end

switch propName
    case 'components'
        val = f.components;
    case 'nComponents'
        val = f.nComponents; 
    case 'isTransposed'
        val = f.isTransposed;
    otherwise
        error('CHEBFUN:CHEBFUN3V:get:propName', ...
            [propName, ' is not a valid CHEBFUN3V property.'])
end

end