rem The first argument is workspace directory.
set WORKSPACE="../../../bytesep"

echo "WORKSPACE=%WORKSPACE%"

rem Users can modify the following config file.
set TRAIN_CONFIG_YAML="../../4_train/musdb18/configs/vocals-accompaniment,unet.yaml"

set CHECKPOINT_PATH="%WORKSPACE%/checkpoints/musdb18/train/config=vocals-accompaniment,unet,gpus=1/step=300000.pth"

rem Inference
set CUDA_VISIBLE_DEVICES=0
python3 ../../../bytesep/inference.py \
    --config_yaml=$TRAIN_CONFIG_YAML \
    --checkpoint_path=$CHECKPOINT_PATH \
    --audio_path="resources/vocals_accompaniment_10s.mp3" \
    --output_path="sep_results/vocals_accompaniment_10s_sep_vocals.mp3"
    