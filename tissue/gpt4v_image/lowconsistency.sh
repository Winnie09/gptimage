for k in `seq 1 5`
do
for f in `ls /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/test/artery`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v.py /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/subtrain/ref1_$k.jpg /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/test/artery/$f "There are 2 rows in total for the first image. Each row represents example images from a tissue. The second image is another image of a tissue. Which row in the first image is more similar to the second image and why?" /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/subrun/gpt4v/n1/artery/$k'_'$f.json
done
done

for k in `seq 1 5`
do
for f in `ls /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/test/tibialnerve`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v.py /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/subtrain/ref1_$k.jpg /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/test/tibialnerve/$f "There are 2 rows in total for the first image. Each row represents example images from a tissue. The second image is another image of a tissue. Which row in the first image is more similar to the second image and why?" /Users/zj67/Library/CloudStorage/Dropbox/research/gptimage/gtex/subrun/gpt4v/n1/tibialnerve/$k'_'$f.json
done
done
