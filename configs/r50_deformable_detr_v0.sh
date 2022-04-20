#!/usr/bin/env bash

set -x

EXP_DIR=exps/r50_deformable_detr_v0
PY_ARGS=${@:1}

python -u main.py \
    --output_dir ${EXP_DIR} \
    --batch_size 4 \
    --epochs 100 \
    --num_workers 16 \
    --ssl_loss_weight 0 \
    --resume exps/r50_deformable_detr_v0/checkpoint.pth \
    --start_epoch 80 \

    ${PY_ARGS}
