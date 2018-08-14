# Create temporary dir
mkdir cuda_installation_files && cd cuda_installation_files

# Download and install CUDA 8.0
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
apt-get update && apt-get install -y cuda-8-0

# Download and install cuDNNv7
wget http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.5/cudnn-8.0-linux-x64-v7.tgz
tar -xvf cudnn-8.0-linux-x64-v7.tgz 

cd cuda
cp lib64/* /usr/local/cuda/lib64
cp include/* /usr/local/cuda/include 
cd ../..

# Clean up
rm -r cuda_installation_files
