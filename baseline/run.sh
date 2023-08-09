#CUDA_VISIBLE_DEVICES=3 python3 train_opensource.py \
#    --model_path="..//ptlm//t5//" \
#    --model_name="t5" \
#    --dataset="opensource" \
#    --lr=2e-5 \
#    --batch_size=4 \
#    --max_source_length=512 \
#    --max_target_length=200 \
#    --epoch=20 \
#    --data_dir="../data/" \
#    --split_dataset \

# You can change it by your pretrained model path,
# such as the further-pretrained model obtained from the opensource data
PTLM_PATH="/home/zhangjiacong/results/15_05_11_18_48_T5_OPENSOURCE"
#跑完上面那个train_opensource.py，会在results文件夹里生成一个XX_XX_XX_XX_XX_T5_OPENSOURCE，把那里的路径替换过来这个就行了

printf PTLM_PATHh
CUDA_VISIBLE_DEVICES=6 python3 train_fsl.py \
    --model_path=$PTLM_PATH \
    --model_name="t5" \
    --dataset="instruction" \
    --lr=2e-5 \
    --batch_size=8 \
    --max_source_length=512 \
    --max_target_length=200 \
    --epoch=60 \
    --eval_num=28 \
    --data_dir="..//data//" \
    --split_dataset