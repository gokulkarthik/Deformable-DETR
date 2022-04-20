#!/usr/bin/env bash

set -x

EXP_DIR=exps/r50_deformable_detr_v0_infer
PY_ARGS=${@:1}

python -u main.py \
    --output_dir ${EXP_DIR} \
    --resume exps/r50_deformable_detr_v0/checkpoint0024.pth \
    --eval \
    ${PY_ARGS}
