[y, fs] = audioread('Crawling.wav');
% soundview(y, fs)
outputFilename = 'CrawlingGrosso.wav';
audiowrite(outputFilename, y, fs/2);
[y, fs] = audioread(outputFilename);

soundview(y, fs);