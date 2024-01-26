rem Default workspace directory
set WORKSPACE="../../../workspaces/bytesep"

echo "WORKSPACE=%WORKSPACE%"

rem --- Create indexes for vocals and accompaniment ---
set INDEXES_CONFIG_YAML="./configs/sr=44100,vocals-accompaniment.yaml"

python3 ../../../bytesep/dataset_creation/create_indexes/create_indexes.py \
    --workspace=%WORKSPACE% \
    --config_yaml=%INDEXES_CONFIG_YAML%

rem --- Create indexes for vocals, bass, drums, and other ---
INDEXES_CONFIG_YAML="../../musdb18/configs/sr=44100,vocals-bass-drums-other.yaml"

python3 bytesep/dataset_creation/create_indexes/create_indexes.py \
    --workspace=%WORKSPACE% \
    --config_yaml=%INDEXES_CONFIG_YAML%
