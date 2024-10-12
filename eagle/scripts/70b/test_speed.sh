export CUDA_VISIBLE_DEVICES=4,5,6,7
# export CUDA_VISIBLE_DEVICES=6,7

python -m eagle.evaluation.gen_ea_answer_llama3chat \
		--total-token 48 \
		--ea-model-path /cpfs01/user/xiaobin/glj/models/eagle/llama3ins-70b/state_20 \
		--base-model-path /cpfs01/user/xiaobin/glj/models/Meta-Llama-3-70b-Instruct \
		--temperature 0

python -m eagle.evaluation.gen_ea_answer_llama3chat_fspad \
		--total-token 48 \
		--ea-model-path /cpfs01/user/xiaobin/glj/models/eagle/llama3ins-70b_mlplin_split/state_20 \
		--base-model-path /cpfs01/user/xiaobin/glj/models/Meta-Llama-3-70b-Instruct \
		--temperature 0
