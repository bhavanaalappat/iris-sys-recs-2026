Task 1 : Packaging a Rails Application into a Docker Image


 **Created a Dockerfile**
   Built a Rails runtime environment inside Docker and configured it to run the application server.
 **Added a `.dockerignore` file**
   Excluded logs, tmp files, git metadata, and other unnecessary files to reduce image size and avoid build conflicts.

 **Updated `database.yml`**
   Changed database connection from local MySQL socket to TCP connection with a MySQL database running in a separate container.

**Fixed dependency conflicts**
   Removed outdated `Gemfile.lock` and created a dummy file to allow Docker to regenerate dependencies during build.

