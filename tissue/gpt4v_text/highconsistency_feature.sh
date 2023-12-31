for k in `seq 1 5`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v_verbalfeature.py /Users/zj67/Dropbox/research/gptimage/gtex/train/ref1_$k.jpg /Users/zj67/Dropbox/research/gptimage/gtex/run/gpt4v_verbal/feature/$k.json
done

