function cleanUp()
    % cleanUp()
    %
    % A wrapper function to close all windows, ports, show mouse cursor, close keyboard queues
    % and give access back to the keyboards.

    WaitSecs(0.5);

    Priority(0);

    ListenChar(0);
    KbQueueRelease();

    ShowCursor;

    % Screen Close All
    sca;

    % Shut down connection with Eyelink
try
    Eyelink('shutdown')
catch
end
      Eyelink('shutdown');
    end

    % Close Psychportaudio if open
    if PsychPortAudio('GetOpenDeviceCount') ~= 0
        PsychPortAudio('Close');
    end

    if ~ismac
        % Remove PsychDebugWindowConfiguration
        clear Screen;
    end

    close all;

end
