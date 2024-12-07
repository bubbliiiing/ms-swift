# loss_scale all to train all tokens
# use loss_type loss_scale
# This is just an example
CUDA_VISIBLE_DEVICES=0 \
swift sft \
    --model Qwen/Qwen2-7B-Instruct \
    --train_type lora \
    --dataset swift/self-cognition#1000 \
    --num_train_epochs 1 \
    --per_device_train_batch_size 1 \
    --learning_rate 1e-4 \
    --lora_rank 8 \
    --lora_alpha 32 \
    --gradient_accumulation_steps 16 \
    --eval_steps 100 \
    --save_steps 100 \
    --save_total_limit 2 \
    --logging_steps 5 \
    --model_author swift \
    --model_name swift-robot \
    --loss_scale all \
    --loss_type loss_scale