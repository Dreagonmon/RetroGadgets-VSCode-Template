---@meta _

---@class RealityChipCpu
---@field TotalUsage number The total CPU usage of the system, from 0 to 100. READ ONLY.
---@field CoresUsage number[] An array that contains the CPU usage of each logical CPU core, from 0 to 100. READ ONLY.

---@class RealityChipRam
---@field Available number Available RAM expressed in MB. READ ONLY.
---@field Used number Used RAM expressed in MB. READ ONLY.

---@class RealityChipNetwork
---@field TotalSent number Total sent by network interfaces expressed in Mbps. READ ONLY.
---@field TotalReceived number Total received from network interfaces expressed in Mbps. READ ONLY.

---The RealityChip lets you read some values about real-world usage of your computer from inside Retro Gadgets.
---@class RealityChip:Module
---@field Cpu RealityChipCpu
---@field Ram RealityChipRam
---@field Network RealityChipNetwork
---@field Type "RealityChip"
