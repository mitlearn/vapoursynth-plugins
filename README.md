# A collection of [VapourSynth](https://github.com/vapoursynth/vapoursynth) plugins

The main reason for this collection is to make it easier to build for Debian. And **only** test successfully in Debian 11, so don't expect this build system to work on anything else than Linux on x86 architectures.

Inspired by: [Letsplaybar/**vapoursynth-plugins**](https://github.com/Letsplaybar/vapoursynth-plugins) which inspired by [darealshinji](https://github.com/darealshinji)/**[vapoursynth-plugins](https://github.com/darealshinji/vapoursynth-plugins)**

### **Build dependencies**:

```bash
apt install -y build-essential meson autoconf automake libtool git nasm yasm python3-dev python3-pip cython3 \
    ninja-build gcc cmake pkg-config cargo \
    ffmpeg libass-dev libfftw3-dev libtesseract-dev libavcodec-dev libavformat-dev \
    libswscale-dev libavutil-dev libswresample-dev libmediainfo-dev libboost-filesystem-dev libboost-system-dev \
    libtbb-dev libtbb-doc libtbb2 libllvm11 llvm-11 
```
- For Graphics Card
```bash
apt install -y libvulkan-dev glslang-tools ocl-icd-libopencl1
```

### **Installation**:

```
git clone --recurse-submodules -j4 https://github.com/mitlearn/vapoursynth-plugins.git
cd vapoursynth-plugins
make
```

### **plugins**:
[AddGrain](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-AddGrain.git)
[AdaptiveGrainrs](https://git.kageru.moe/kageru/adaptivegrain)

[Bilateral](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bilateral.git)
[BM3D](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-BM3D.git)
[Bwdif](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Bwdif.git)

[cnr2](https://github.com/dubhater/vapoursynth-cnr2.git)
[CTMF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-CTMF.git)

[d2vsource](https://github.com/dwbuiten/d2vsource.git)
[DCTFilter](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DCTFilter.git)
[Deblock](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Deblock.git)
[DeblockPP7](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeblockPP7.git)
[Delogo](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DeLogo.git)
[DFTTest](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-DFTTest.git)
[descale](https://github.com/Irrational-Encoding-Wizardry/vapoursynth-descale.git)

[EdgeFixer](https://github.com/sekrit-twc/EdgeFixer.git)
[EEDI2](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI2.git)
[EEDI3](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-EEDI3.git)
[Expr](https://github.com/AkarinVS/vapoursynth-plugin.git)

[neo_f3kdb](https://github.com/HomeOfAviSynthPlusEvolution/neo_f3kdb.git)
[ffms2](https://github.com/FFMS/ffms2.git)
[FFT3DFilter](https://github.com/myrsloik/VapourSynth-FFT3DFilter.git)
[fieldhint](https://github.com/dubhater/vapoursynth-fieldhint.git)
[fillborder](https://github.com/dubhater/vapoursynth-fillborders.git)
[fmtconv](https://github.com/EleonoreMizo/fmtconv.git)

[histogram](https://github.com/dubhater/vapoursynth-histogram.git)
[hqdn3d](https://github.com/Hinterwaeldlers/vapoursynth-hqdn3d.git)

[KNLMeansCL](https://github.com/Khanattila/KNLMeansCL.git)

[L-SMASH](https://github.com/l-smash/l-smash.git)
~~[L-SMASH-Work](https://github.com/AkarinVS/L-SMASH-Works.git)~~

[mvtools](https://github.com/dubhater/vapoursynth-mvtools.git)
[mvtools-sf](https://github.com/IFeelBloated/vapoursynth-mvtools-sf.git)
[median](https://github.com/dubhater/vapoursynth-median.git)

[nnedi3](https://github.com/dubhater/vapoursynth-nnedi3.git)
[NNEDI3CL](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-NNEDI3CL.git)

[ReadMpls](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-ReadMpls.git)
[ReduceFlicker](https://github.com/AmusementClub/ReduceFlicker.git)
[Retinex](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Retinex.git)

[sangom](https://github.com/dubhater/vapoursynth-sangnom.git)

[TCanny](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TCanny.git)
[tcomb](https://github.com/dubhater/vapoursynth-tcomb.git)
[temporalmedian](https://github.com/dubhater/vapoursynth-temporalmedian.git)
[temporalsoften](https://github.com/dubhater/vapoursynth-temporalsoften.git)
[TTempSmooth](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-TTempSmooth.git)

[neo_Vague_Denoiser](https://github.com/HomeOfAviSynthPlusEvolution/neo_Vague_Denoiser.git)
~~[VSFilter](https://github.com/HomeOfVapourSynthEvolution/VSFilter.git)~~
~~[VSFilterMod](https://github.com/sorayuki/VSFilterMod.git)~~
[vsFilterScript](https://github.com/IFeelBloated/vapoursynth-plusplus.git)

[W3FDIF](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-W3FDIF.git)
~~[waifu2x-ncnn-vulkan](https://github.com/nihui/waifu2x-ncnn-vulkan.git)~~
~~[vapoursynth-waifu2x-ncnn-vulkan](https://github.com/Nlzy/vapoursynth-waifu2x-ncnn-vulkan.git)~~
[wwxd](https://github.com/dubhater/vapoursynth-wwxd.git)

[Yadifmod](https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Yadifmod.git)

[znedi3](https://github.com/sekrit-twc/znedi3.git)

PS: Some plugins are marked strikethrough because they have compilation issues or missing denpendencies and may try again at some point in the future

## **scripts**:

[adjust](https://github.com/dubhater/vapoursynth-adjust)
[fvsfunc](https://github.com/Irrational-Encoding-Wizardry/fvsfunc)
[G41Fun](https://github.com/groucho86/G41Fun)
[havsfunc](https://github.com/HomeOfVapourSynthEvolution/havsfunc)
[Hysteria](https://github.com/Irrational-Encoding-Wizardry/vapoursynth-Hysteria)
[kagefunc](https://github.com/Irrational-Encoding-Wizardry/kagefunc)
[muvsfunc](https://github.com/WolframRhodium/muvsfunc)
[mvsfunc](https://github.com/HomeOfVapourSynthEvolution/mvsfunc)
[nnedi3_resample](https://github.com/HomeOfVapourSynthEvolution/nnedi3_resample)
[MaskDetail](https://github.com/MonoS/VS-MaskDetail)
[vsTAAmbk](https://github.com/HomeOfVapourSynthEvolution/vsTAAmbk)
dehalo_alpha, edgecleaner, fastlinedarken, finesharp, knlm, mcdegrainsharp, nnedi3_rpow2, psharpen, resamplehq, sharpaamcmod, showdiff, supersampledantialiasing, vshelpers: https://gist.github.com/4re/
[vsutil](https://pypi.org/project/vsutil/), [rekt](https://gitlab.com/Ututu/rekt), [awsmfunc](https://git.concertos.live/AHD/awsmfunc), [lvsfunc](https://github.com/Irrational-Encoding-Wizardry/lvsfunc) installed by pip3

### Thanks
 - [Letsplaybar/**vapoursynth-plugins**](https://github.com/Letsplaybar/vapoursynth-plugins) (Auto Install Scripts original)
 - MediaTool (Commonly Used Plugins&Scripts List )
 - [VSDB](https://vsdb.top) (Repo Url)
