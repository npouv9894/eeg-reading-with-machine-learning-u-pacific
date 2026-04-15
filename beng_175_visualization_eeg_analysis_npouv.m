% The following code assumes the use of the FieldTrip toolbox for
% frequency-domain analysis. This toolbox requires the specifying of a
% specific part of the continuous signal to analyze.

% The EEG data is added as an array.

% Still trying to make sense of some things.

cfg = [];
cfg.dataset = 'file'; % Dataset here
cfg.viewmode = 'viewmode'; % This specifies a viewmode (e.g. 'butterfly')
cfg.layout = 'quickcap64'; % Investigating this one
cfg.channel = 'specify which channel';
data = ft_preprocessing(cfg);
cfg.interactive = 'yes'; % y/n

ft_datalabels(cfg);
ft_databrowser(cfg, data);

% Notes
% BDF files store data in 24-bit. Ensure whatever tool you're using doesn't
% treat them as 16-bit.