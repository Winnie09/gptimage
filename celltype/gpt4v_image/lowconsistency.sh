for k in `seq 1 5`
do
for f in `ls /Users/zj67/Dropbox/research/gptimage/livecell/test`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v.py /Users/zj67/Dropbox/research/gptimage/livecell/exttrain/ref1_$k.jpg /Users/zj67/Dropbox/research/gptimage/livecell/test/$f "There are 2 rows in total for the first image. Each row represents example images from a cell type. The second image is another image of a cell type. Which row in the first image is more similar to the second image and why?" /Users/zj67/Dropbox/research/gptimage/livecell/extrun/gpt4v/n1/$k'_'$f.json
done
done

