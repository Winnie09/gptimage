for k in `seq 1 5`
do
for f in `ls /Users/zj67/Dropbox/research/gptimage/OCT/test`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v.py /Users/zj67/Dropbox/research/gptimage/OCT/exttrain/ref1_$k.jpg /Users/zj67/Dropbox/research/gptimage/OCT/test/$f "There are 2 rows in total for the first image. Each row represents a status of a tissue. The second image is another image of a status of a tissue. Is the second image more similar to the first row of the first image or the second row of the first image? Why?" /Users/zj67/Dropbox/research/gptimage/OCT/extrun/gpt4v/$k'_'$f.json
done
done
