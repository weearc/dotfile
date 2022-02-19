function kernelup
	sudo pacman -S linux linux-headers nvidia nvidia-utils --noconfirm && \
	sudo mkinitcpio -p linux && \
       	sudo grub-mkconfig -o /boot/grub/grub.cfg
end
