
export WANDB_API_KEY="" #wandb key
# export CUDA_VISIBLE_DEVICES=0,1,2,3
export CUDA_VISIBLE_DEVICES=4,5,6,7

accelerate launch -m --mixed_precision=bf16 --main_process_port 29501 eagle.train.main \
    --tmpdir /cpfs01/user/xiaobin/glj/datasets/ShareGPT_Vicuna_onnorm/sharegpt_0_67999_mubf16/ \
    --cpdir /cpfs01/user/xiaobin/glj/models/eagle/vicuna-7b-v1.5_pw_0710 \
    --configpath /cpfs01/user/xiaobin/glj/speculative_decoding/Spe_banch/EAGLE/eagle/train/vicuna_7B_config.json
