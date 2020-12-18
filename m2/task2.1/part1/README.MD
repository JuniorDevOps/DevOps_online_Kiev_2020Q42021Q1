## PART 1. Hypervisors
**Hypervisor** - software or hardware scheme that provides simultaneous parallel operation of several operating systems on one computer.
The main purpose of the hypervisor is to provide isolated runtimes for each virtual machine and to control the access of the virtual machine and guest operating system to the physical hardware resources of the computer.
##### 1. What are the most popular hypervisors for infrastructure virtualization?
Some of thó most popular hypervisors for infrastructure are:
* [VMware vSphere Hypervisor](https://www.vmware.com/ru/products/vsphere-hypervisor.html)
* [Microsoft Hyper-V](https://docs.microsoft.com/ru-ru/virtualization/hyper-v-on-windows/about/)
* [Citrix XenServer](https://www.citrix.com/ru-ru/products/citrix-hypervisor/)
* [Oracle VirtualBox](https://www.virtualbox.org/)
* [Red Hat Enterprise Virtualization Hypervisor (REVH)](https://www.redhat.com/en/technologies/virtualization/enterprise-virtualization)
* [KVM](https://www.linux-kvm.org/page/Main_Page)

##### 2. Briefly describe the main differences of the most popular hypervisors.
All hypervisors can be divided into 4 types:

**Type 1**. It runs as a control program directly on the hardware side of the computer. Virtual machine operating systems run higher.
Guest OS believe that they are working directly on the hardware platform, do not see the hypervisor.
Some examples of type 1 hypervisors are: **VMware ESX Server, Citrix XenServer, Microsoft Hyper-V** 

**Type 2**. It runs on the host operating system. Guest virtual machine operating systems are at a higher level.
Some examples of type 2 hypervisors are: **VMware Workstation, Oracle VM VirtualBox, Microsoft Virtual PC, Parallels Desktop** 

**Type 3**. Monolithic. That hypervisor includes hardware device drivers.
- implements a proprietary driver model witthin the hypervisor;
- more simple than a modern kernel, but still complex.

Examples of type 3 hypervisors is: **VMware ESX**

**Type 4**. Microkernel. All device drivers are located inside host OS and only host machine has access to the hardware.
* simple partitionong functionality;
* increases reliability and minimizes attack surface;
* no thurd-party code (drivers run within VMs).

Examples of type 4 hypervisors is: **Microsoft Hyper - V**
