for k in `seq 1 5`
do
for f in `ls /Users/zj67/Dropbox/research/gptimage/senescence/test`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v.py /Users/zj67/Dropbox/research/gptimage/senescence/train/ref1_$k.jpg /Users/zj67/Dropbox/research/gptimage/senescence/test/$f "There are 2 rows in total for the first image. Each row represents example images from a cell state. The second image is another image of a cell state. Which row in the first image is more similar to the second image and why?" /Users/zj67/Dropbox/research/gptimage/senescence/run/gpt4v/n1/$k'_'$f.json
done
done

