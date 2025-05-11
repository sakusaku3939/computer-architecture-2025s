import matplotlib.pyplot as plt
import numpy as np

# Given parameters
clock_cycle_ns = 1  # 1 GHz = 1ns per cycle
l1_cycles = 1
mem_cycles = 50

# Cache hit rate range
hit_rates_full = np.linspace(0.1, 1.0, 100)
hit_rates_zoom = np.linspace(0.9, 1.0, 100)

# Average memory access time formula (in cycles)
def avg_mem_access_time(hit_rate):
    return hit_rate * l1_cycles + (1 - hit_rate) * mem_cycles

# Completion time for 1 billion instructions (assume 1 memory access per instruction)
def completion_time(hit_rate, num_instructions=1e9):
    return num_instructions * avg_mem_access_time(hit_rate)

# Plotting
plt.figure(figsize=(14, 6))

# 1. Average memory access time - full range
plt.subplot(1, 2, 1)
plt.plot(hit_rates_full, avg_mem_access_time(hit_rates_full))
plt.title('Average Memory Access Time (0.1 to 1.0)')
plt.xlabel('Cache Hit Rate')
plt.ylabel('Average Memory Access Time (cycles)')
plt.grid(True)

# 1. Average memory access time - zoomed range
plt.subplot(1, 2, 2)
plt.plot(hit_rates_zoom, avg_mem_access_time(hit_rates_zoom))
plt.title('Average Memory Access Time (0.9 to 1.0)')
plt.xlabel('Cache Hit Rate')
plt.ylabel('Average Memory Access Time (cycles)')
plt.grid(True)

plt.tight_layout()
plt.show()

# Second plot for completion time
plt.figure(figsize=(14, 6))

# 2. Completion time - full range
plt.subplot(1, 2, 1)
plt.plot(hit_rates_full, completion_time(hit_rates_full) / 1e9)
plt.title('Completion Time for 1 Billion Instructions (0.1 to 1.0)')
plt.xlabel('Cache Hit Rate')
plt.ylabel('Completion Time (billion cycles)')
plt.grid(True)

# 2. Completion time - zoomed range
plt.subplot(1, 2, 2)
plt.plot(hit_rates_zoom, completion_time(hit_rates_zoom) / 1e9)
plt.title('Completion Time for 1 Billion Instructions (0.9 to 1.0)')
plt.xlabel('Cache Hit Rate')
plt.ylabel('Completion Time (billion cycles)')
plt.grid(True)

plt.tight_layout()
plt.show()

# 3. Find hit rate where average access time doubles compared to 100% hit rate
full_hit_time = avg_mem_access_time(1.0)
double_time = full_hit_time * 2
hit_rate_for_double = (mem_cycles - double_time) / (mem_cycles - l1_cycles)

print(hit_rate_for_double)
