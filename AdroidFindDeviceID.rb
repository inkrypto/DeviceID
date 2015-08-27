#!/usr/bin/ruby

require 'fileutils'

class DeviceInfo
  
  def initialize
    root = 'adb root'
    system(root)
  end

  def self.device_id
    id = 'adb shell getprop net.hostname'
    system(id)
  end

  def self.ipAddr
    ip = 'adb shell getprop dhcp.wlan0.ipaddress'
    system(ip)
  end

  def self.bootLoader
    boot = 'adb shell getprop ro.boot.bootloader'
    system(boot)
  end

  def self.os
    os = 'adb shell getprop ro.build.host'
    system(os)
  end

  def self.model
    model = 'adb shell getprop ro.product.model'
    system(model)
  end

  def self.serial
    serial = 'adb shell getprop ro.serialno'
    system(serial)
  end

end

puts
puts "Android Device ID:"
DeviceInfo.device_id
puts
puts "Android IP Address:"
DeviceInfo.ipAddr
puts
puts "Bootloader Version:"
DeviceInfo.bootLoader
puts
puts "Android Version"
DeviceInfo.os
puts
puts "Android Model"
DeviceInfo.model
puts
puts "Android Serial"
DeviceInfo.serial
puts

