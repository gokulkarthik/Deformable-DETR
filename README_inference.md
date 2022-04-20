1. Update the test dataset images and annotation path in function `build` at line 163 in `Deformable-DETR/datasets/isaid.py`
2. Set the image_set to 'test' or 'val' in line 159 of 'main.py' (dataset_val = build_dataset(image_set='test', args=args))
3. Set the config path to one of the following:
    - ./configs/r50_deformable_detr_v0_infer_e100.sh [DDetr after 100 epochs]
    - ./configs/r50_deformable_detr_v0_infer.sh [DDetr after 25 epochs]
    - ./configs/r50_deformable_detr_v1_infer.sh [DDetr with SSL after 25 epochs]
4. Run `sh run_infer.sh`