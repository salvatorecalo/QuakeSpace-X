function [vT_events, flags] = computePEAKS(vPS, vT, thres_ev, thres_start, k_ignore, k_duration)
    % computePEAKS takes as an input the total spectral power of the signal
    %              over time and outputs the times of thr interesting
    %              events
    %       INPUTS:
    %       vPS, vT: power and spectral power vectors
    %       thres_ev: threshold (log) that distinguishes an event from
    %                 noise
    %       thres_start: threshold (log) that distinguishes the start of an
    %                    event
    %       k_ignore: number of timesteps necessary to distinguish an event
    %                 from background noise
    %       k_duration: number of timesteps that characterises the duration
    %                   of an event

vPS = log10(vPS);
flags = vPS>thres_ev;

% Filter 1: Remove the false positives
%           Remove all signals that lasts less than 2 minutes
%           (likely instrument error / other noise)
for k = 1:length(flags)-k_ignore
    if flags(k) == 1
        if min(flags(k:k+k_ignore)) == 0
            flags(k) = 0;
        end
    end
end

% Filter 2: Once you have an event, remove all other flags until event
%           is over (assumed to be 3 hours more or less)
for k = 1:length(flags)
    if flags(k) == 1
        if k + k_duration > length(flags)
            flags(k+1:end) = zeros(length(flags(k+1:end)),1);
        else
            flags(k+1:k+k_duration) = zeros(k_duration,1);
        end
    end
end

% Filter 3: Once you know there is an event, find the starting point
for k = 1:length(flags)
    if flags(k) == 1 && k ~= 1
        finished = 0;
        l = 1;
        while finished == 0
            if vPS(k-l) > thres_start
                l = l+1;
            elseif(l == k-1)
                finished = 1;
            else
                finished =1;
            end
        end
        flags(k) = 0;
        flags(k-l) = 1;
    end
end

vT_events = vT(flags);
end