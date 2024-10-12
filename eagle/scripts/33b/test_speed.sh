export CUDA_VISIBLE_DEVICES=5

python -m eagle.evaluation.gen_ea_answer_vicuna_33b \
		--ea-model-path /data_train/infra/glj/models/EAGLE-Vicuna-33B-v1.3/ \
		--base-model-path /data_train/infra/glj/models/vicuna-33b-v1.3 \
		--total-token 48 \
		--temperature 0

python -m eagle.evaluation.gen_ea_answer_vicuna_33b_fspad \
		--ea-model-path /data_train/infra/glj/models/eagle/vicuna_33b_fspad_0730/state_20 \
		--base-model-path /data_train/infra/glj/models/vicuna-33b-v1.3 \
		--total-token 48 \
		--temperature 0

