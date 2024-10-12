
export WANDB_API_KEY="" #wandb key
export CUDA_VISIBLE_DEVICES=0,1,2,3
# export CUDA_VISIBLE_DEVICES=4,5,6,7

accelerate launch -m --mixed_precision=bf16 --main_process_port 29501 eagle.train.main \
    --project ess_70b \
    --basepath /cpfs01/user/xiaobin/glj/models/Meta-Llama-3-70b-Instruct \
    --evaldata /cpfs01/user/xiaobin/glj/datasets/Spe_eval_merge_llama3-70b/sharegpt_0_479_mubf16 \
    --tmpdir /cpfs01/user/xiaobin/glj/datasets/ShareGPT_llama3ins_onnorm/ \
    --cpdir /cpfs01/user/xiaobin/glj/models/eagle/llama3ins-70b \
    --configpath /cpfs01/user/xiaobin/glj/speculative_decoding/Spe_banch/EAGLE/eagle/train/llama_3_instruct_70B_config.json \
    --bs 1 \
    --gradient-accumulation-steps 4 \
