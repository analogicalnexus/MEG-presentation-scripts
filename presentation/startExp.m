function startsec=startExp(expWin,s)
%global xc yc expWin;


%FlushEvents('keyDown');
Screen('TextSize',expWin, 24);
DrawFormattedText(expWin,'Press t to start.\nThen press ESC to stop.','center','center',[255 255 255]);
Screen(expWin, 'Flip');
ch=' ';
% while ch~='t'      % The scanner trigger comes as 't'
%     [ch when] = GetChar;
% end

while  1

    if exist('s')
        [trig] = getMNCtrigger(s);
        if strcmp('6',trig)
            break;
        end
    else
        [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
        if strcmp('t',KbName(keyCode))
            break;
        end

        % wait until key is released, to avoid affecting later key check
        while keyIsDown
            [keyIsDown, secs, keyCode, deltaSecs] = KbCheck;
        end
        %FlushEvents;
    end
end

startsec=GetSecs;
end