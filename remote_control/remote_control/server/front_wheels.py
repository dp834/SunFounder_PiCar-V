#!/usr/bin/env python
import Servo
import filedb

class Front_Wheels(object):
	FRONT_WHEEL_CHANNEL = 0
	LEFT_ANGLE = 70
	STRAIGHT_ANGLE = 90
	RIGHT_ANGLE = 110

	_DEBUG = False
	_DEBUG_INFO = 'DEBUG "front_wheels.py":'

	def __init__(self, config_file=None):
		if self._DEBUG:
			print self._DEBUG_INFO, "Debug on"
		self.db = filedb.fileDB()
		self.turning_offset = self.db.get('turning_offset', default_value=0)

		self.wheel = Servo.Servo(self.FRONT_WHEEL_CHANNEL, offset=self.turning_offset)
		if self._DEBUG:
			print self._DEBUG_INFO, 'Front wheel PEM channel:', self.FRONT_WHEEL_CHANNEL
			print self._DEBUG_INFO, 'Front wheel offset value:', self.turning_offset

		self.angle = {"left":self.LEFT_ANGLE, "straight":self.STRAIGHT_ANGLE, "right":self.RIGHT_ANGLE}
		if self._DEBUG:
			print self._DEBUG_INFO, 'left angle: %s, straight angle: %s, right angle: %s' % (self.angle["left"], self.angle["straight"], self.angle["right"])

	def turn_left(self):
		if self._DEBUG:
			print self._DEBUG_INFO, "Turn left"
		self.wheel.turn(self.angle["left"])

	def turn_straight(self):
		if self._DEBUG:
			print self._DEBUG_INFO, "Turn straight"
		self.wheel.turn(self.angle["straight"])

	def turn_right(self):
		if self._DEBUG:
			print self._DEBUG_INFO, "Turn right"
		self.wheel.turn(self.angle["right"])

	def turn(self, angle):
		if self._DEBUG:
			print self._DEBUG_INFO, "Turn to", angle
		if angle < self.angle["left"]:
			angle = self.angle["left"]
		if angle > self.angle["right"]:
			angle = self.angle["right"]
		self.wheel.turn(angle)

	def set_debug(self, debug):
		if debug in (True, False):
			self._DEBUG = debug
		else:
			raise ValueError('debug must be "True" (Set debug on) or "False" (Set debug off), not "{0}"'.format(debug))

		if self._DEBUG:
			print self._DEBUG_INFO, "Set debug on"
			print self._DEBUG_INFO, "Set wheel debug on"
			self.wheel.set_debug(True)
		else:
			print self._DEBUG_INFO, "Set debug off"
			print self._DEBUG_INFO, "Set wheel debug off"
			self.wheel.set_debug(False)

	def ready(self):
		if self._DEBUG:
			print self._DEBUG_INFO, 'Turn to "Ready" position'
		self.wheel.set_offset(self.turning_offset)
		self.turn_straight()

	def calibration(self):
		if self._DEBUG:
			print self._DEBUG_INFO, 'Turn to "Calibration" position'
		self.turn_straight()
		self.cali_turning_offset = self.turning_offset

	def cali_left(self):
		self.cali_turning_offset -= 1
		self.wheel.set_offset(self.cali_turning_offset)
		self.turn_straight()

	def cali_right(self):
		self.cali_turning_offset += 1
		self.wheel.set_offset(self.cali_turning_offset)
		self.turn_straight()

	def cali_ok(self):
		self.turning_offset = self.cali_turning_offset
		self.db.set('turning_offset', self.turning_offset)

def test():
	import time
	front_wheels = Front_Wheels()
	while True:
		print "turn_left"
		front_wheels.turn_left()
		time.sleep(1)
		print "turn_straight"
		front_wheels.turn_straight()
		time.sleep(1)
		print "turn_right"
		front_wheels.turn_right()
		time.sleep(1)
		print "turn_straight"
		front_wheels.turn_straight()
		time.sleep(1)

if __name__ == '__main__':
	try:
		test()
	except KeyboardInterrupt:
		turn_straight()


