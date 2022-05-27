function kernelup
	sudo pacman -S linux linux-headers nvidia-utils nvidia-dkms --noconfirm && \
	sudo mkinitcpio -p linux && \
       	sudo grub-mkconfig -o /boot/grub/grub.cfg
end
