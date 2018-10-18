# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_io/DigitalOutputUpdateRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DigitalOutputUpdateRequest(genpy.Message):
  _md5sum = "d4386f6831da36b77a99649158a65fbe"
  _type = "robot_io/DigitalOutputUpdateRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 request_type
uint32 bit_index
bool output_bit_state

uint32 COUNT=8
uint32 SUCTION1_ON=1
uint32 SUCTION2_ON=2
uint32 COLLISION=0
"""
  # Pseudo-constants
  COUNT = 8
  SUCTION1_ON = 1
  SUCTION2_ON = 2
  COLLISION = 0

  __slots__ = ['request_type','bit_index','output_bit_state']
  _slot_types = ['uint32','uint32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       request_type,bit_index,output_bit_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DigitalOutputUpdateRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.request_type is None:
        self.request_type = 0
      if self.bit_index is None:
        self.bit_index = 0
      if self.output_bit_state is None:
        self.output_bit_state = False
    else:
      self.request_type = 0
      self.bit_index = 0
      self.output_bit_state = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2IB().pack(_x.request_type, _x.bit_index, _x.output_bit_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.request_type, _x.bit_index, _x.output_bit_state,) = _get_struct_2IB().unpack(str[start:end])
      self.output_bit_state = bool(self.output_bit_state)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2IB().pack(_x.request_type, _x.bit_index, _x.output_bit_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.request_type, _x.bit_index, _x.output_bit_state,) = _get_struct_2IB().unpack(str[start:end])
      self.output_bit_state = bool(self.output_bit_state)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2IB = None
def _get_struct_2IB():
    global _struct_2IB
    if _struct_2IB is None:
        _struct_2IB = struct.Struct("<2IB")
    return _struct_2IB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot_io/DigitalOutputUpdateResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DigitalOutputUpdateResponse(genpy.Message):
  _md5sum = "a9f745eeeda072c6eb0e94fb9441b345"
  _type = "robot_io/DigitalOutputUpdateResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool[] output_bit_array

"""
  __slots__ = ['output_bit_array']
  _slot_types = ['bool[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       output_bit_array

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DigitalOutputUpdateResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.output_bit_array is None:
        self.output_bit_array = []
    else:
      self.output_bit_array = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.output_bit_array)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.pack(pattern, *self.output_bit_array))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.output_bit_array = struct.unpack(pattern, str[start:end])
      self.output_bit_array = map(bool, self.output_bit_array)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.output_bit_array)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.output_bit_array.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.output_bit_array = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.output_bit_array = map(bool, self.output_bit_array)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class DigitalOutputUpdate(object):
  _type          = 'robot_io/DigitalOutputUpdate'
  _md5sum = '5decc6a45bba41be52c4b7de53de20e7'
  _request_class  = DigitalOutputUpdateRequest
  _response_class = DigitalOutputUpdateResponse
