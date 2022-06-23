
#DATA=(personachat_usr topicalchat_usr convai2_grade_bert_ranker convai2_grade_transformer_generator dailydialog_grade_transformer_ranker empatheticdialogues_grade_transformer_ranker convai2_grade_dialogGPT convai2_grade_transformer_ranker dailydialog_grade_transformer_generator  empatheticdialogues_grade_transformer_generator)

#for data in ${DATA[@]}
#do
#    cd pytorch_src
#    python create_utt_embed.py --data ${data}.csv
#    python main.py --mode infer --data ${data}.csv --pooling mean
#    cd ..
#done
cd pytorch_src
python create_utt_embed.py --data ${1}.csv
python main.py --mode infer --data ${1}.csv --pooling mean
cd ..

# PredictiveEngagement
# python create_utt_embed.py --data humanAMT_engscores_utt.csv
# python main.py --mode infer --data humanAMT_engscores_utt.csv --pooling mean

# PredictiveEngagement - 600
# python create_utt_embed.py --data pe600.csv
# python main.py --mode infer --data pe600.csv --pooling mean

# FED
# python create_utt_embed.py --data fed.csv
# python main.py --mode infer --data fed.csv --pooling mean

# EnDex
# python create_utt_embed.py --data endex.csv
# python main.py --mode infer --data endex.csv --pooling mean