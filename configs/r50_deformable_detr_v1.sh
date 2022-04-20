#!/usr/bin/env bash

set -x

EXP_DIR=exps/r50_deformable_detr_v1
PY_ARGS=${@:1}

python -u main.py \
    --output_dir ${EXP_DIR} \
    --batch_size 4 \
    --epochs 50 \
    --num_workers 16 \
    --ssl_loss_weight 0.1 \
    --resume exps/r50_deformable_detr_v1/checkpoint0024.pth \
    --start_epoch 25 \

    ${PY_ARGS}
