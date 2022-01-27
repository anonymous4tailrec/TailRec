#!/bin/bash
# bert  sasrec  nextitnet gru4rec nfm deepfm caser,narm,stamp
#/home/zwy/Rec/original_desen_pretrain.csv
#/home/zwy/Rec/SequenceRec-v2/data/movielen_lenth_30_cold_10.csv
#/home/zwy/IJCAI/datasets/lastfm20.csv
#/home/zwy/IJCAI/datasets/movielens30_new.csv
python main.py \
--data_path /home/zwy/sigir/datasets/deginetica20.csv \
--save_path /home/zwy/Rec/Tail-a/sasrec-deg-tail \
--d_model 64 \
--max_len 20 \
--attn_heads 4 \
--sasrec_layers 16 \
--train_batch_size 256 \
--test_batch_size 256 \
--eval_per_steps 500 \
--num_epoch 10 \
--device cuda:1 \
--up 20 \
--down 4 \
--train_with_note 1 \
--predict_with_note 1 \
--updata_strategy pooling \
--alpha 0.1 \
--gama 0.7 \
--wind_size 5 \
--enable_sample 0 \
--sampled_evaluation 0 \
--samples_ratio 0.01 \
#如果是画像任务选择accuracy 否则选NDCG