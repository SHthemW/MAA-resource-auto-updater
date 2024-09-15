# 一键更新 MAA 资源包

本程序是明日方舟代理程序[MaaAssistantArknights](https://github.com/MaaAssistantArknights/MaaAssistantArknights)的附属工具.

自2024.8月开始MAA不再提供资源包的自动更新了, 因此我写了一个自动更新资源的批处理脚本, 免去了每次需要重新从仓库拷贝的麻烦.



### 环境要求

- Windows 系统
- 安装了Git客户端: [Git (git-scm.com)](https://git-scm.com/)



### 使用说明

1. 下载**quick_update_res.exe**, 可通过界面右侧的**Release**选项下载.
2. 将下载好的程序放到MAA的程序根目录下 (即MAA.exe所在的目录)
3. 你已经完成了. 每次需要更新资源时只需运行quick_update_res程序即可.
4. 如果下载或运行时提示病毒文件, 添加到信任名单即可. 非系统自带的.bat文件都会这样.
5. 可以给程序创建快捷方式, 方便下次使用.


### 常见问题

1. fatal: unable to access 'https://github.com/MaaAssistantArknights/MaaResource.git/': Failed to connect to github.com port 443 after 21071 ms: Could not connect to server
   网络问题，MAA的资源文件存储在Github上，访问需要梯子，请自行检查
2. Unknown command 'git' ... 或其它类似的文本
   电脑没装Git客户端[Git (git-scm.com)](https://git-scm.com/)
