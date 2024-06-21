 #!/bin/shell

#-------- python package ---------
list=(
"crypyo"
"cv"
"crypto"
"cv"
"cryptography"
"gmpy2"
"jupyter"
"jupyter notebook"
"matplotlib"
"numpy"
"opencv-python"
"pyCryptodome"
"pandas"
"sympy"
"tqdm"
"taichi"
"you-get"
"pwntools"
"sqlmap"
)
for i in ${list[@]};
do
    pipx install $i;
done;



#pip3 install torch torchvision torchaudio

