# Define the URL and the destination path
$url = "https://sca-downloads.s3.amazonaws.com/cli/latest/ScaResolver-win64.zip"
$destinationPath = "ScaResolver-win64.zip"
$extractToDirectory = ".\ScaResolver" # Adjust this path as needed

# Download the ZIP file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Ensure the extraction directory exists
New-Item -ItemType Directory -Force -Path $extractToDirectory

# Unzip the file
Expand-Archive -LiteralPath $destinationPath -DestinationPath $extractToDirectory -Force

# Optionally, clean up the ZIP file
Remove-Item -Path $destinationPath -Force