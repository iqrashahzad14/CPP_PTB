function drawFixationCross(cfg, expParameters, color)
% Define the parameters of the fixation cross in `cfg` and `expParameters` and this does the rest.

Screen('DrawLines', ...
    cfg.win, ...
    cfg.allCoords, ...
    expParameters.lineWidthPix, ...
    color , ...
    [cfg.center(1) cfg.center(2)], 1);

end
