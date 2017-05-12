import http.requests.*;

String clientID = "mCNu9i6S5RIzCnqZgCV2II2XPvNbrS61abAVA_oJYGjsFSsbHqv9J4pDyK2UPrAB";
String clientSecret = "l3gJKKQpGcR7zXM9G0kH-r1z_o8wSzqJc6phAJrCwWiNRtbPHp__Q-NkoBQU-yF6OC-8r8SEcP2vdKLz_Iy8fA";
String clientToken = "W0350WlDnvCneKnjzlPxeihSQ2l4cgmFoF-H6HfPD82qC8tyIJ1HD4Bp2N50SD7w";

void setup(){
  GetRequest get = new GetRequest("https://api.genius.com/oauth/authorize?
client_id=YOUR_CLIENT_ID&
redirect_uri=YOUR_REDIRECT_URI&
scope=REQUESTED_SCOPE&
state=SOME_STATE_VALUE&
response_type=code");
  get.send();  
}