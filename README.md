Sipcall for pilight
=================================================
sipcall - Automated calls over SIP/VOIP with TTS  
sipserv - Answering machine for SIP/VOIP with TTS  

Dependencies:  
   - PJSUA API (<http://www.pjsip.org>)  
   - eSpeak (<http://espeak.sourceforge.net>)  

This project is forked from <https://github.com/binerry/RaspberryPi/tree/master/tools/c/sip-tools>.  
See also <http://binerry.de/post/29180946733/raspberry-pi-caller-and-answering-machine>.  

In the pilight project only the sipcall component is used but the sipserv component is unmodified and should work.

sipcall
-------
Usage:   
  sipcall [options]   

Mandatory options:   
  -sd=string   _Set sip provider domain._   
  -su=string   _Set sip username._   
  -sp=string   _Set sip password._   
  -pn=string   _Set target phone number to call_   


Optional options:   
  -tts=string  _Text to speak_   
  -ttsf=string _TTS speech file name_   
  -rcf=string  _Record call file name_   
  -mr=int      _Repeat message x-times_   
  -s=int       _Silent mode (hide info messages) (0/1)_   
  
  


sipserv
-------
Usage:   
  sipserv [options]   

Commandline:   
Mandatory options:   
  --config-file=string   _Set config file_   

Optional options:   
  -s=int       _Silent mode (hide info messages) (0/1)_   


Config file:   
Mandatory options:   
  sd=string   _Set sip provider domain._   
  su=string   _Set sip username._   
  sp=string   _Set sip password._   

 _and at least one dtmf configuration (X = dtmf-key index):_   
  dtmf.X.active=int           _Set dtmf-setting active (0/1)._   
  dtmf.X.description=string   _Set description._   
  dtmf.X.tts-intro=string     _Set tts intro._   
  dtmf.X.tts-answer=string    _Set tts answer._   
  dtmf.X.cmd=string           _Set dtmf command._   

Optional options:   
  rc=int      _Record call (0/1)_   


_a sample configuration can be found in sipserv-sample.cfg_
  
_sipserv can be controlled with ./sipserv-ctrl.sh start and ./sipserv-ctrl.sh stop_



License
-------
This tools are free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This tools are distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Lesser General Public License for more details.