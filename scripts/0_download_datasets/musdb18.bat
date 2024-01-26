set https_proxy=http://127.0.0.1:33210

rem The first argument is dataset directory.
set MUSDB18_DATASET_DIR=../../../datasets/musdb18

echo "MUSDB18_DATASET_DIR=%MUSDB18_DATASET_DIR%"

rem Set up paths.
md %MUSDB18_DATASET_DIR%
cd %MUSDB18_DATASET_DIR%

echo Download dataset from Zenodo.
echo "The dataset link is at https://zenodo.org/record/1117372"

rem wget -O "musdb18.zip" "https://zenodo.org/record/1117372/files/musdb18.zip?download=1"

rem Unzip dataset.
7z x "musdb18.zip"

rem The downloaded MUSDB18 dataset looks like:
rem ./datasets/musdb18
rem ├── train (100 files)
rem │   ├── 'A Classic Education - NightOwl.stem.mp4'
rem │   └── ...
rem ├── test (50 files)
rem │   ├── 'Al James - Schoolboy Facination.stem.mp4'
rem │   └── ...
rem └── README.md