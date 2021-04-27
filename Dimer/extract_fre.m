function back=extract_fre(protein,fre,savepath)

	[rows,cols] = size(fre);
	n = [];
	for i=1:rows
		if ismember(fre(i,1:2),protein,'rows')
			n = [n;i];
		end
	end
	fre_new = sortrows(fre(n,:),-3);
	back = mat2txt(savepath,fre_new);
end

	