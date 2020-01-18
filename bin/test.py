from pulsectl import *

with Pulse('volume-example') as pulse:
  sink_input = pulse.sink_input_list()[0] # first random sink-input stream
  print(sink_input)

  volume = sink_input.volume
  print(volume.values) # list of per-channel values (floats)
  print(volume.value_flat) # average level across channels (float)

  time.sleep(1)

  volume.value_flat = 0.3 # sets all volume.values to 0.3
  pulse.volume_set(sink_input, volume) # applies the change

  time.sleep(1)

  n_channels = len(volume.values)
  new_volume = PulseVolumeInfo(0.5, n_channels) # 0.5 across all n_channels
  # new_volume = PulseVolumeInfo([0.15, 0.25]) # from a list of channel levels (stereo)
  pulse.volume_set(sink_input, new_volume)
  # pulse.sink_input_volume_set(sink_input.index, new_volume) # same as above
