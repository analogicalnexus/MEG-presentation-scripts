function closeMNCserial(s)

disp ( 'Finishing now.' );
fclose ( s );
% disp ( 'status after the fclose:' );
% s.status

% Successive runs could fail if s remains
delete ( s );
clear s;
end