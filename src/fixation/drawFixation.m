function drawFixation(cfg)
    %
    % Define the parameters of the fixation cross in `cfg`.
    %
    % USAGE::
    %
    %  drawFixation(cfg)
    %
    % There are 3 types of fixations:
    %
    % - ``cross``
    % - ``dot``
    % - ``bestFixation``
    %
    % See initFixation for more info.
    %
    % (C) Copyright 2020 CPP_PTB developers

    switch cfg.fixation.type
        case 'cross'

            smooth = 1;

            Screen('DrawLines', ...
                   cfg.screen.win, ...
                   cfg.fixation.allCoords, ...
                   cfg.fixation.lineWidthPix, ...
                   cfg.fixation.color, ...
                   [cfg.screen.center(1) cfg.screen.center(2)], smooth);

        case 'dot'

            % Draw gap around fixation of 20% the size
            Screen('FillOval', ...
                   cfg.screen.win, ...
                   cfg.color.background, ...
                   CenterRect( ...
                              [0 0 repmat(1.2 * cfg.fixation.widthPix, 1, 2)], ...
                              cfg.screen.winRect));

            % Draw fixation
            Screen('FillOval', ...
                   cfg.screen.win, ...
                   cfg.color.foreground, ...
                   CenterRect( ...
                              [0 0 repmat(cfg.fixation.widthPix, 1, 2)], ...
                              cfg.screen.winRect));

        case 'bestFixation'

            % Draw gap around fixation of 20% the size
            Screen('FillOval', ...
                   cfg.screen.win, ...
                   cfg.color.background, ...
                   CenterRect( ...
                              [0 0 repmat(1.5 * cfg.fixation.widthPix, 1, 2)], ...
                              cfg.screen.winRect));

            Screen('FillOval', ...
                   cfg.screen.win, ...
                   cfg.color.black, ...
                   cfg.fixation.outerOval, ...
                   cfg.fixation.widthPix);

            Screen('DrawLines', ...
                   cfg.screen.win, ...
                   cfg.fixation.allCoords, ...
                   cfg.fixation.widthPix / 3, ...
                   cfg.color.white, ...
                   [cfg.screen.center(1) cfg.screen.center(2)]);

            Screen('FillOval', ...
                   cfg.screen.win, ...
                   cfg.color.black, ...
                   cfg.fixation.innerOval, ...
                   cfg.fixation.widthPix / 3);

    end

end
