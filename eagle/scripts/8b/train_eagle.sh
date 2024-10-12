
export WANDB_API_KEY="" #wandb key
# export CUDA_VISIBLE_DEVICES=0,1,2,3
export CUDA_VISIBLE_DEVICES=4,5,6,7

accelerate launch -m --mixed_precision=bf16 --main_process_port 29501 eagle.train.main \
    --project ess_8b \
    --basepath /cpfs01/user/xiaobin/glj/models/Meta-Llama-3-8B-Instruct \
    --evaldata /cpfs01/user/xiaobin/glj/datasets/Spe_eval_merge_llama3_8b/sharegpt_0_479_mubf16 \
    --tmpdir /cpfs01/user/xiaobin/glj/datasets/ShareGPT_llama3ins8b_onnorm_bf16/sharegpt_0_67999_mubf16 \
    --cpdir /cpfs01/user/xiaobin/glj/models/eagle/llama3ins-8b_0727 \
    --configpath /cpfs01/user/xiaobin/glj/speculative_decoding/Spe_banch/EAGLE/eagle/train/llama_3_instruct_8B_config.json \
    --bs 4 \
    --gradient-accumulation-steps 1 \
