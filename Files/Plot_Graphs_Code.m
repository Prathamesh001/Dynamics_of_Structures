clear all
clc
file_sheets = {'Acceleration Response', 'Displacment', 'Frequency Spectrum', 'Force vs Time'};
x_axis_name = {'Time (s)', 'Time (s)', 'Frequency (Hz)', 'Time (s)'};
y_axis_name = {'Acceleration (g)', 'Displacement (m)', 'Amplitude (g) rms', 'Force'};
%Plot responses
for i = 1:length(file_sheets)
    response = readtable("Initial velocity.xlsx", 'Sheet', string(file_sheets(i)), 'Range', 'A3');
    response.Properties.VariableNames = {(x_axis_name{i}),(y_axis_name{i})};
    fig = figure(Name=string(file_sheets(i)));
    plot(response.(x_axis_name{i}), response.(y_axis_name{i}), 'DisplayName', string(y_axis_name(i)));
    xlabel(string(x_axis_name(i)));
    ylabel(string(y_axis_name(i)));
    title(string(file_sheets(i)));
    grid on;
    legend show;
end

% Plot the initial_displacement.xlsx file
clear all
file_sheets = {'Acceleration Response', 'Frequency Spectrum', 'Displacement Response'};
x_axis_name = {'Time (s)', 'Frequency (Hz)', 'Time (s)'};
y_axis_name = {'Acceleration (g)', 'Amplitude (g) rms', 'Displacement (m)'};
%Plot responses
for i = 1:length(file_sheets)
    response = readtable("Initial_Displacement.xlsx", 'Sheet', string(file_sheets(i)), 'Range', 'A3');
    response.Properties.VariableNames = {(x_axis_name{i}),(y_axis_name{i})};
    fig = figure(Name=string(file_sheets(i)));
    plot(response.(x_axis_name{i}), response.(y_axis_name{i}), 'DisplayName', string(y_axis_name(i)));
    xlabel(string(x_axis_name(i)));
    ylabel(string(y_axis_name(i)));
    title(string(file_sheets(i)));
    grid on;
    legend show;
end
