function [rtime, resp] = getMNCserial(s,fid,startsec)

resp=[];
rtime = -1;

tic;

bytes_ready = s.bytesavailable;
if bytes_ready
    resp = fscanf ( s );
    rtime = GetSecs-startsec;
    fprintf(fid,'%f : key %i pressed (%s)\n', rtime, resp);
    fprintf(1,'%f : key %i pressed (%s)\n', rtime, resp);   
end;

end