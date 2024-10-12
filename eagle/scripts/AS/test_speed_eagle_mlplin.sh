# export CUDA_VISIBLE_DEVICES=4,5,6,7
export CUDA_VISIBLE_DEVICES=2

python -m eagle.evaluation.gen_ea_answer_vicuna_mlplin \
		--ea-model-path /data_train/infra/glj/models/eagle/vicuna-7b-v1.5_mlplin_0713/state_20 \
		--base-model-path /data_train/infra/glj/models/vicuna-7b-v1.5 \
		--temperature 0
