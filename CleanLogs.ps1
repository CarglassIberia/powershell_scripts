
param(
    $limit = (Get-Date).AddDays(-3),
    $path = "C:\Logs"
)

# Delete files older than the $limit.
$FilesToDelete = (Get-ChildItem -Path $path  | Where-Object { $_.LastWriteTime -lt $limit })

# If files are deleted create a log detailing this
if($FilesToDelete){
    Remove-Item -Path $FilesToDelete -Force -Recurse
} 
