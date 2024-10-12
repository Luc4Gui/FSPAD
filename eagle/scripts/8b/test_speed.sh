# export CUDA_VISIBLE_DEVICES=4,5,6,7
export CUDA_VISIBLE_DEVICES=2

python -m eagle.evaluation.gen_ea_answer_llama3chat \
		--total-token 60 \
		--ea-model-path /data_train/infra/glj/models/eagle/llama3ins-8b_0727/state_20 \
		--base-model-path /data_train/infra/glj/models/Meta-Llama-3-8B-Instruct \
		--temperature 1

python -m eagle.evaluation.gen_ea_answer_llama3chat_fspad \
		--total-token 60 \
		--ea-model-path /data_train/infra/glj/models/eagle/llama3ins-8b_fspad_0727/state_20 \
		--base-model-path /data_train/infra/glj/models/Meta-Llama-3-8B-Instruct \
		--temperature 1
