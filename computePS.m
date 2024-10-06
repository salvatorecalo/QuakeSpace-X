function [PS, t] = computePS(seism_data, fs)
%computePS Fornisci il vettore delle rilevazioni e ti calcola la potenza
%          spettrale del segnale nel tempo.
%          Richiede pacchetto spectrogram di MatLab
%  seism_data = rilevazioni sisimiche
%  fs = frequenza rilevazioni
%  PS = potenza spettrale
%  t = vettore tempo

seism_data = bandpass(seism_data, [0.5, 3], fs);    % Filtro passa alto

window = 512;          % Length of each segment
noverlap = window/4*3;        % Overlap between segments
nfft = 216;            % Number of FFT points

[s, f, t] = spectrogram(seism_data, window, noverlap, nfft, fs);
psd = abs(s).^2 / (fs * window);
PS = zeros(length(t),1);
for j = 1:length(t)
    PS(j) = trapz(f, psd(:,j));
end
end

