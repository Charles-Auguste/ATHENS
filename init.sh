#module() { eval `/usr/bin/modulecmd bash $*`; }
#export -f module
#MODULEPATH=$MODULEPATH:./:./modules
#export MODULEPATH
export PATH=$PATH:/comelec/softs/opt/ARM_tools/Mali_Graphics_Debugger_v4.4.1.0271762a_Linux_x64/gui/
export PATH=$PATH:/comelec/softs/opt/ARM_tools/Mali_Offline_Compiler_v6.2.0
export PATH=$PATH:/comelec/softs/opt/ARM_tools/ds5-ce/bin
export INSTALL_DIR=/comelec/softs/opt/altera/altera17.1
export  SOCEDS_DEST_ROOT=$INSTALL_DIR/embedded
export QUARTUS_ROOTDIR=$INSTALL_DIR/quartus
export SOCEDS_DEST_ROOT=$INSTALL_DIR/embedded 
export ALTERAOCLSDKROOT=$INSTALL_DIR/hld
export PATH=$INSTALL_DIR/hld/bin:$SOCEDS_DEST_ROOT/host_tools/altera/preloadergen/:/comelec/softs/opt/matlab/last/bin:$INSTALL_DIR/quartus/dsp_builder:$INSTALL_DIR/quartus/sopc_builder/bin:$INSTALL_DIR/quartus/bin:$PATH
export LM_LICENSE_FILE=@flexlm.comelec.enst.fr:$LM_LICENSE_FILE
export AOCL_BOARD_PACKAGE_ROOT=$ALTERAOCLSDKROOT/board/s5_ref
