param([string]$p1, [string]$p2=(Join-Path $pwd.Path $p1.SubString($p1.LastIndexOf('/'))))
(New-Object System.Net.WebClient).DownloadFile($p1,$p2)