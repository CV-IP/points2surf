# name from filename
NAME=$0
NAME=${NAME##*/}
NAME=${NAME%.*}
NAME=${NAME#train_}

python full_train.py \
    --name ${NAME}  \
    --desc ${NAME}  \
    --indir 'datasets/abc'  \
    --outdir 'models'  \
    --logdir 'logs' \
    --trainset 'trainset.txt'  \
    --testset 'valset.txt'  \
    --nepoch 50 \
    --lr 0.01 \
    --debug 0 \
    --workers 22  \
    --batchSize 701  \
    --points_per_patch 300  \
    --patches_per_shape 1000  \
    --sub_sample_size 1000  \
    --cache_capacity 30  \
    --patch_radius 0.1  \
    --single_transformer 0  \
    --shared_transformer 0  \
    --uniform_subsample 0 \
    --use_point_stn 1  \
    --patch_center 'mean' \
    --training_order 'random_shape_consecutive' \
    --outputs 'imp_surf_magnitude' 'imp_surf_sign' 'patch_pts_ids' 'p_index' \
