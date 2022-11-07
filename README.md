# 基于CH573F芯片的USB HID转BLE HID协议
* 人话：有线键盘转无线键盘
* 鼠标也可以实现有线转无线
* 但需要修改USB描述符和UUID
* 此工程可直接导入到MounRiver Studio
* 设计电路时可省略32KHz晶振,但32MHz是必须的
* 为确保正常工作建议使用3.7V锂电池接入到VIO33引脚
* 默认开启DC-DC，配置文件位于 **\HAL\include\config.h** 
* 项目已构建，可直接烧录，二进制文件位于 **\obj\HID_Keyboard4.2.hex** 
* **若开启DC-DC设计电路时必须贴近VSW引脚串接电感连接到VDCID引脚，建议用 22uH 电感**
