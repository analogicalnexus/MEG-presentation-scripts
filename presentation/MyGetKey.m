function [choice] = MyGetKey(ValidResponses)

choice = [];

[keyIsDown, seconds, keyCode ] = KbCheck;
if keyIsDown 
    KeyList = KbName(keyCode);
    if sum(ismember(KeyList,ValidResponses))
        choice = KeyList(1);
    end
end
        
        