# Loop through all directories in the project
for directory in */; do

  # If we can't cd into a directory, skip to the next one.
  cd "$directory" || continue

  # Add konsulting namespace and strip trailing slash from directory
  tag_name="konsulting/${directory%/}"
  echo "$tag_name"

  # Build the docker image from the Dockerfile
  docker build -t "$tag_name" .

  cd ..
done
