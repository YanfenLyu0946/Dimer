cpath = pwd;
mkdir('results');
protein_path = [cpath,'/shuju/1B6C1.txt'];
protein = importdata(protein_path);

for m = 1:99
	if mod(m,10)~=0
		fre_name = [cpath,'/rerange/0.',num2str(m),'/fre_0.',num2str(m),'.txt'];
		fre = importdata(fre_name);
		savepath = [cpath,'/results/0.',num2str(m),'.txt'];
		back = extract_fre(protein,fre,savepath);
	end
end
