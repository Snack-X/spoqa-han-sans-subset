# Spoqa Han Sans Subset

```bash
$ git clone [repository]
$ cd spoqa-han-sans-subset

$ git submodule init
$ git submodule update

$ virtualenv -p python3 .venv
$ . .venv/bin/activate
$ pip install fonttools brotli zopfli
$ ./build.sh
```

```html
<link rel="stylesheet" href="SpoqaHanSansSubset.css">
<link rel="stylesheet" href="[Google Fonts Noto Sans CJK KR]">
<style>
body { font-family: "Spoqa Han Sans Subset", "Noto Sans KR"; }
</style>
```