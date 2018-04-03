stimBlock = [];
    stimBlock = [];  %%%Define stimBlock as a member of the class expblock, defined in expblock.m
    stimBlock.stimulusMatrix = [];
    stimBlock.triggerMatrix = [];
    stimBlock.questionList = {};
    stimBlock.questionTriggers = {};
    stimBlock.stimulusOnsets = [];

stimFile=('/Users/brickles/Documents/MATLAB/Example_ELK/WordPres_Anna/Experiments/WMD/slides/WMD_slides.txt') ;
fid = fopen(stimFile, 'r');
textLine = fgets(fid);
%%
itemNum = 1;  %The number of the current stimulus item.
%     stimBlock = stimBlock;  %Information in the expt structure is organized by objects of class 'exptblock'
    stimBlock.name = stimFile;
    
    while (-1 ~= textLine)
        C = textscan(textLine, '%q %d %d %q %q %d %d %d %q %d %d %d %q %d %d %d %q'); %use textscan to separate line into 'text' 'number' pairs.
        numStimWords = length(C{1});
        
        %If there is a blank line, skip it and get the next line.
        if (numStimWords == 0)
            %fprintf('there is a blank line\n');
            textLine = fgets(fid); 
            continue
        end
        
        for jj = 1:numStimWords        
                      stimBlock.questionTriggers{itemNum} = C{2}(jj);
                      stimBlock.questionList{itemNum} = C{1}{jj};
                      stimBlock.stimulusMatrix{itemNum}{1} = C{5}{jj};
                      stimBlock.stimulusMatrix{itemNum}{2} = C{9}{jj};
                      stimBlock.stimulusMatrix{itemNum}{3} = C{13}{jj};
                      stimBlock.stimulusMatrix{itemNum}{4} = C{17}{jj};
                      stimBlock.stimulusMatrix{itemNum}{5} = C{10}{jj};
                      stimBlock.stimulusMatrix{itemNum}{6} = C{14}{jj};
                      stimBlock.stimulusMatrix{itemNum}{7} = C{18}{jj};
                      stimBlock.stimulusMatrix{itemNum}{8} = C{11}{jj};
                      stimBlock.stimulusMatrix{itemNum}{9} = C{15}{jj};
                      stimBlock.stimulusMatrix{itemNum}{10} =C{19}{jj};
                      stimBlock.stimulusMatrix{itemNum}{11} =C{3}{jj};
                      stimBlock.stimulusMatrix{itemNum}{12} =C{4}{jj};
                      stimBlock.triggerMatrix{itemNum}{1} = C{20}{jj};
                      stimBlock.triggerMatrix{itemNum}{2} = C{2}{jj};
                  %fprintf('added a stimulus and trigger\n');
        end
        
        itemNum = itemNum + 1;
        textLine = fgets(fid); 
 
    end