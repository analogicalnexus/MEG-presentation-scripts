function [trig] = getMNCtrigger(s)

trig = [];

bytes_ready = s.bytesavailable;
if bytes_ready
    trig = fscanf ( s );   
end;

end