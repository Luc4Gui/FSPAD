export CUDA_VISIBLE_DEVICES=1

python -m eagle.evaluation.gen_ea_answer_vicuna_t2 \
		--ea-model-path /data_train/infra/glj/models/eagle/vicuna-7b-v1.5/state_20 \
		--base-model-path /data_train/infra/glj/models/vicuna-7b-v1.5 \
		--temperature 0

python -m eagle.evaluation.gen_ea_answer_vicuna_fspad_t2 \
		--ea-model-path /data_train/infra/glj/models/eagle/vicuna-7b-v1.5_fsapd_0726/state_20 \
		--base-model-path /data_train/infra/glj/models/vicuna-7b-v1.5 \
		--temperature 0
