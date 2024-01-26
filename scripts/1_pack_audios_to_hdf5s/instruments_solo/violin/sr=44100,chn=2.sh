#!/bin/bash
INSTRUMENTS_SOLO_DATASET_DIR=${1:-"./datasets/instruments_solo"}  # The first argument is dataset directory.
WORKSPACE=${2:-"./workspaces/bytesep"}  # The second argument is workspace directory.

echo "INSTRUMENTS_SOLO_DATASET_DIR=${INSTRUMENTS_SOLO_DATASET_DIR}"
echo "WORKSPACE=${WORKSPACE}"

# Users can change the following settings.
SAMPLE_RATE=44100
CHANNELS=2

INSTRUMENT="violin"

# Paths
SUB_DATASET_DIR="${INSTRUMENTS_SOLO_DATASET_DIR}/${INSTRUMENT}_solo/v0.1"

HDF5S_DIR="${WORKSPACE}/hdf5s/instruments_solo/${INSTRUMENT}/sr=${SAMPLE_RATE}_chn=${CHANNELS}/train"

python3 bytesep/dataset_creation/pack_audios_to_hdf5s/instruments_solo.py \
    --dataset_dir=$SUB_DATASET_DIR \
    --split="train" \
    --source_type=$INSTRUMENT \
    --hdf5s_dir=$HDF5S_DIR \
    --sample_rate=$SAMPLE_RATE \
    --channels=$CHANNELS