for k in `seq 1 5`
do
python3 /Users/zj67/Dropbox/research/gptimage/software/gpt4v_verbalfeature.py /Users/zj67/Dropbox/research/gptimage/senescence/exttrain/ref1_$k.jpg /Users/zj67/Dropbox/research/gptimage/senescence/extrun/gpt4v_verbal/feature/$k.json
done

