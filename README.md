CUG Logo
---
使用[MetaPost](https://www.tug.org/metapost.html)制作的中国地质大学校徽矢量图。可以生成EPS、SVG和PNG格式的图片。

Logo有两种样式：官方的蓝底样式，背景不透明；黑白样式，背景透明。

已经生产好的图片在/Pictures文件夹里。

怎样生成
--------
需要安装[TexLive](https://www.tug.org/texlive/)或者[MikTex](http://miktex.org/)并安装[MetaPost](https://www.tug.org/metapost.html)相关包。在命令行或者shell下执行
```
mpost logo.mp
```

关于字体
--------
- 英文字体使用的NimbusSanL-Bold。需要uhvb8a.pfb和uhvb8a.tfm这两个文件。如果缺少tfm文件，请使用[FontForge](http://fontforge.github.io/)转换。
- 中文字体使用黑体。需要[ctexlivefonts](http://thinfilm.ustc.edu.cn/~liangzi/software/CTeXlive/)中Type1字体，感谢网友[Xiaohua Xu](https://code.google.com/p/pixtex/downloads/list)提供的各种独立字体包。
- 字体安装请参考相关的帮助文档。

版权
--------
- CUG 校徽版权归中国地质大学所有。
- NimbusSanL-Bold字体版权归URW Software Inc.所有。
- 黑体字体版权归Beijing ZhongYi Electronics Co.所有。

License
-------
GPL v2

####Have a good time!
