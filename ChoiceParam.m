function [ NumWorkers, NumBlocks, NumIter ] = ChoiceParam( paths )
%Choice of the numeber of workers, number of blocks and number of
%iterations per block
 if ( paths>=0 && paths<28378);
    NumWorkers=1;
    NumBlocks = 1;    %Number of blocks per workers 
    NumIter = paths;  %Number of iterations per block
elseif ( paths>=28378 && paths<197435);
    NumWorkers = 2;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=197435 && paths<612500);
    NumWorkers = 3;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=612500 && paths<1050000);
    NumWorkers = 4;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=1050000 && paths<1011111);
    NumWorkers = 5;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=1011111 && paths<1361111);
    NumWorkers = 6;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=1361111 && paths<4083333);
    NumWorkers = 7;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=4083333 && paths<7556000 );
    NumWorkers = 8;
    NumBlocks = 1;
    NumIter = paths;
elseif ( paths>=7556000 );
    NumWorkers = 8;
    NumIter = 8000;  
    NumBlocks = NumWorkers * floor(paths/(NumWorkers*NumIter))+1; 
else
    print "problem"
end

