cpath = pwd;
number = importdata('list.txt');
number = number';
for i = number
    % filename is the file generate by shell, residue pairs and frequency
    filename = [cpath '/top_' num2str(i) '/top_' num2str(i) '.txt'];
    savepath = [cpath '/top_' num2str(i)];
    % savename = [cpath '/top_' num2str(i), '/top_' num2str(i) '_all.txt'];
    back = frequency(filename, savepath,i);
end

    