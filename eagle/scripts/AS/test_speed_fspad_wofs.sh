export CUDA_VISIBLE_DEVICES=7
# export CUDA_VISIBLE_DEVICES=4,5,6,7

python -m eagle.evaluation.gen_ea_answer_vicuna_fspad_wofs \
		--total-token 60 \
		--ea-model-path /cpfs01/user/xiaobin/glj/models/eagle/vicuna-7b-v1.5_fsapd_wofs/state_20 \
		--base-model-path /cpfs01/user/xiaobin/glj/models/vicuna-7b-v1.5 \
		--temperature 0
