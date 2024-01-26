rem The first argument is dataset directory.
set MUSDB18_DATASET_DIR=../../../datasets/musdb18
rem The second argument is workspace directory.
set WORKSPACE=../../../bytesep

echo "MUSDB18_DATASET_DIR=%MUSDB18_DATASET_DIR%"
echo "WORKSPACE=%WORKSPACE%"

rem Users can change the following settings.
set SAMPLE_RATE=44100
set CHANNELS=2

rem Paths
set HDF5S_DIR="%WORKSPACE%/hdf5s/musdb18/sr=%SAMPLE_RATE%,chn=%CHANNELS%/train"
md %HDF5S_DIR%

python3 ../../../bytesep/dataset_creation/pack_audios_to_hdf5s/musdb18.py ^
    --dataset_dir=%MUSDB18_DATASET_DIR% ^
    --subset="train" --split="" ^
    --hdf5s_dir=%HDF5S_DIR% ^
    --sample_rate=%SAMPLE_RATE% ^
    --channels=%CHANNELS%