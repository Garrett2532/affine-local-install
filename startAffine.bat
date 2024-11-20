REM code to  pull from git here

@echo off
A:
cd A:\affine\affine-local-install
REM Start Docker Compose
echo Starting Docker Compose...
start "" docker compose up

REM Wait for user to stop it with Ctrl+C
echo Press Ctrl+C to stop Docker Compose and execute post-cleanup tasks.
:WAIT
REM Pause script execution
pause >nul

REM Handle cleanup
echo Stopping Docker Compose...
docker compose down

echo Running post-docker-compose commands...
REM code to push to get here

echo Cleanup completed!