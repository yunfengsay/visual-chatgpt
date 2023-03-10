git clone https://github.com/lllyasviel/ControlNet.git
ln -s ControlNet/ldm ./ldm
ln -s ControlNet/cldm ./cldm
ln -s ControlNet/annotator ./annotator
cd ControlNet/models

function download_model() {
    model=$1
    path="ControlNet/models/$model"
    url="https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/$model"
    if [ ! -f $path ]; then
        wget $url -P ControlNet/models/
    fi
}

download_model control_sd15_canny.pth
download_model control_sd15_depth.pth
download_model control_sd15_hed.pth
download_model control_sd15_mlsd.pth
download_model control_sd15_normal.pth
download_model control_sd15_openpose.pth
download_model control_sd15_scribble.pth
download_model control_sd15_seg.pth

cd ../../