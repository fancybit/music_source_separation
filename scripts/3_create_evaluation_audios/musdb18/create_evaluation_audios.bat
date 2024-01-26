rem The first argument is dataset directory.
set MUSDB18_DATASET_DIR="../../../datasets/musdb18"
rem The first argument is workspace directory.
set WORKSPACE="../../../bytesep"

rem Get absolute path
set MUSDB18_DATASET_DIR=`readlink -f %MUSDB18_DATASET_DIR%'

rem Evaluation audios directory
set EVALUATION_AUDIOS_DIR="%WORKSPACE%/evaluation_audios/musdb18"

mkdir -p `dirname %EVALUATION_AUDIOS_DIR%`

rem Create link
ln -s %MUSDB18_DATASET_DIR% %EVALUATION_AUDIOS_DIR%