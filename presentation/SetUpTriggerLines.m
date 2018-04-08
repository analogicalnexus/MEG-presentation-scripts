function [triggerStruct] = setuptriggerlines(WhichTriggers)

for i=1:length(WhichTriggers)
    xx = fliplr(dec2bin(WhichTriggers(i)));
    triggerStruct.WhichTrigger(WhichTriggers(i)).outval = [str2num(xx(1)) str2num(xx(2)) str2num(xx(3)) str2num(xx(4))....
    str2num(xx(5)) str2num(xx(6)) str2num(xx(7)) str2num(xx(8))];
end