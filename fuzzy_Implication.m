function [Is] = fuzzy_Implication(a, b, Imp_type)

Imp_type = upper(Imp_type);

switch Imp_type
    case 'KLEEN-DENESE'
        Is = max((1-a),b);
    case 'REICHENBACH'
        Is = (1-a)+a.*b;
    case 'LUKASIEWICZ'
        Is = min(1,1-a+b);
    case 'GODEL'
        Is = b;
        Is(a<=b) = 1;
    case 'GOGUEN'
        Is = ones(size(a));
        Is(a~=0) = min(1,b(a~=0)./a(a~=0));
    case 'ZADEH'
        Is = max(1-a, min(a,b));
end
