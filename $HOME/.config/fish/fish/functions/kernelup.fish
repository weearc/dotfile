function kernelup
	sudo pacman -S linux linux-headers --noconfirm && \
	sudo mkinitcpio -p linux && \
       	sudo grub-mkconfig -o /boot/grub/grub.cfg
end
