.DEFAULT_GOAL := all
AUTOGEN = $(shell find plugins -type f -not -path "*Avi*" -name "autogen.sh" -exec dirname "{}" \; )
CONFIG = $(shell find plugins -type f -not -path "*Avi*" -name "configure" -exec dirname "{}" \; )
MEASON = $(shell find plugins -type f -not -path "*Avi*" -not -path "*TDeintMod*" -not -path "*Yadifmod*" -name "meson.build" -exec dirname "{}" \; )
SCRIPTS = $(shell find scripts -type f -name "*.py")

PWD = $(shell pwd)

all: compile install

compile: exec_compile
	$(foreach DIR,$(CONFIG), ./make_config.sh $(DIR) $(PWD);)
	cd plugins/l-smash/; make install-lib; cd $(PWD)
	$(foreach DIR,$(AUTOGEN), ./make_autogen.sh $(DIR) $(PWD);)
	$(foreach DIR,$(MEASON),  ./make_meason.sh $(DIR) $(PWD);)
	./make_wwxd.sh $(PWD)
	# cd plugins/waifu2x-ncnn-vulkan/; mkdir build; cd build; cmake ../src; cmake --build . -j 4; cd $(PWD)
	# cd plugins/vapoursynth-waifu2x-ncnn-vulkan/; mkdir build; cd build; cmake .. -DVAPOURSYNTH_HEADER_DIR=/usr/local/include/vapoursynth/; cmake --build . -j 4; cd $(PWD)
	cd plugins/adaptivegrain/; cargo build --release; cd $(PWD)
	cd plugins/neo_f3kdb/; mkdir build; cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr; cmake --build . -j 4; cd $(PWD)
	cd plugins/neo_Vague_Denoiser/; mkdir build; cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr; cmake --build . -j 4; cd $(PWD)

install: exec_install
	$(foreach DIR,$(CONFIG), ./install_autogen.sh $(DIR) $(PWD);)
	$(foreach DIR,$(MEASON), ./install_meason.sh $(DIR) $(PWD);)
	$(foreach SCRIPT,$(SCRIPTS), cp $(SCRIPT) /usr/lib/python3.9/;)
	cp plugins/vapoursynth-wwxd/libwwxd.so /usr/local/lib/
	# cd plugins/waifu2x-ncnn-vulkan/build; make install; cd $(PWD)
	# cp plugins/waifu2x-ncnn-vulkan/build/waifu2x-ncnn-vulkan /usr/bin/
	# cp -r plugins/waifu2x-ncnn-vulkan/models/* /usr/bin/
	# cd plugins/vapoursynth-waifu2x-ncnn-vulkan/build; make install; cd $(PWD)
	# cp plugins/vapoursynth-waifu2x-ncnn-vulkan/build/libvsw2xnvk.so /usr/local/lib/

exec_compile:
	$(shell chmod +x make*.sh)

exec_install:
	$(shell chmod +x install*.sh)

exec_clean:
	$(shell chmod +x clean*.sh)

echo:
	@echo $(AUTOGEN)
	@echo $(CONFIG)
	@echo $(MEASON)
	@echo $(SCRIPTS)

clean: exec_clean
	$(foreach DIR,$(CONFIG), ./clean_config.sh $(DIR) $(PWD);)
	$(foreach DIR,$(MEASON), ./clean_meason.sh $(DIR) $(PWD);)
	rm plugins/vapoursynth-wwxd/libwwxd.so
	# cd plugins/waifu2x-ncnn-vulkan/build; make clean; cd $(PWD)
	# cd plugins/vapoursynth-waifu2x-ncnn-vulkan/build; make clean; cd $(PWD)
