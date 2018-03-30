function s = activateMNCserial

s = serial ( 'COM4' );
set ( s, 'baudrate',         9600  );
set ( s, 'databits',            8  );
set ( s, 'parity',          'None' );
set ( s, 'stopbits',            1  );
set ( s, 'flowcontrol',     'None' );
set ( s, 'inputbuffersize',     1  );
set ( s, 'outputbuffersize',    1  );
set ( s, 'baudrate',        19200  );
set ( s, 'timeout',         0.001  );
set ( s, 'terminator',    char(0)  );

disp ( 'Starting now...' );
fopen ( s )
end