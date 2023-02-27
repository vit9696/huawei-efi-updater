if exist fs0:\EFI\HUAWEI_PREPARE\CapAgent.efi then
  rm -q fs0:\EFI\HUAWEI
  mkdir fs0:\EFI\HUAWEI
  cp -r -q fs0:\EFI\HUAWEI_PREPARE\* fs0:\EFI\HUAWEI\
  bcfg boot add 0x2004 fs0:\EFI\HUAWEI\CapAgent.efi "Huawei Firmware Update Program"
  bcfg boot mv 0x2004 0
  reset -c
endif

if exist fs1:\EFI\HUAWEI_PREPARE\CapAgent.efi then
  rm -q fs1:\EFI\HUAWEI
  mkdir fs1:\EFI\HUAWEI
  cp -r -q fs1:\EFI\HUAWEI_PREPARE\* fs1:\EFI\HUAWEI\
  bcfg boot add 0x2004 fs1:\EFI\HUAWEI\CapAgent.efi "Huawei Firmware Update Program"
  bcfg boot mv 0x2004 0
  reset -c
endif

if exist fs2:\EFI\HUAWEI_PREPARE\CapAgent.efi then
  rm -q fs2:\EFI\HUAWEI
  mkdir fs2:\EFI\HUAWEI
  cp -r -q fs2:\EFI\HUAWEI_PREPARE\* fs2:\EFI\HUAWEI\
  bcfg boot add 0x2004 fs2:\EFI\HUAWEI\CapAgent.efi "Huawei Firmware Update Program"
  bcfg boot mv 0x2004 0
  reset -c
endif

if exist fs3:\EFI\HUAWEI_PREPARE\CapAgent.efi then
  rm -q fs3:\EFI\HUAWEI
  mkdir fs3:\EFI\HUAWEI
  cp -r -q fs3:\EFI\HUAWEI_PREPARE\* fs3:\EFI\HUAWEI\
  bcfg boot add 0x2004 fs3:\EFI\HUAWEI\CapAgent.efi "Huawei Firmware Update Program"
  bcfg boot mv 0x2004 0
  reset -c
endif
