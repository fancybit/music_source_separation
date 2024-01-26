rem The first argument is workspace directory.
set WORKSPACE="../../../bytesep"

echo "WORKSPACE=%WORKSPACE%"

rem Users can modify the following config file.
TRAIN_CONFIG_YAML="./scripts/4_train/musdb18/configs/vocals-accompaniment,resunet_subbandtime.yaml"

rem Train & evaluate & save checkpoints.
CUDA_VISIBLE_DEVICES=0 python3 bytesep/train.py train \
    --workspace=%WORKSPACE% \
    --gpus=1 \
    --config_yaml=%TRAIN_CONFIG_YAML%
