function [back] = frequency(filename,savepath,i)

    data = importdata(filename);
    max_freq = max(data(:,3));
    freq = data(:,3)./max_freq;
    gene_data = [data,freq];
    [sort_data,I] = sortrows(gene_data,4);
    savename = [savepath, '/top_' num2str(i) '_all.txt'];
    back = mat2txt(savename, sort_data);
    [rows,cols] = size(sort_data);
    index = [0.1:0.01:1];
    for j=1:90
        result_name = [savepath '/top_' num2str(i) '_' num2str(index(j)) '.txt'];
        data1 = sort_data(find(sort_data(:,4)>=index(j)),:);
        back = mat2txt(result_name, data1);
    end
end

