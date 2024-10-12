
export WANDB_API_KEY="" #wandb key
export CUDA_VISIBLE_DEVICES=0,1,2,3
# export CUDA_VISIBLE_DEVICES=4,5,6,7

accelerate launch -m --mixed_precision=bf16 --main_process_port 29502 eagle.train.main_fspad \
    --project ess_33b \
    --basepath /cpfs01/user/xiaobin/glj/models/vicuna-33b-v1.3 \
    --evaldata /cpfs01/user/xiaobin/glj/datasets/Spe_eval_merge_33b/sharegpt_0_479_mubf16 \
    --tmpdir /cpfs01/user/xiaobin/glj/datasets/ShareGPT_vicuna33b/sharegpt_0_67999_mubf16 \
    --cpdir /cpfs01/user/xiaobin/glj/models/eagle/vicuna_33b_fspad_0730 \
    --configpath /cpfs01/user/xiaobin/glj/speculative_decoding/Spe_banch/EAGLE/eagle/train/vicuna_33B_config.json \
    --bs 4 \
    --gradient-accumulation-steps 1 \
