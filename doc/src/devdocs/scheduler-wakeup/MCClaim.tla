----------------------------- MODULE MCClaim -----------------------------
(* TLC instance for ClaimWake with the shipped mailbox policy. Toggling     *)
(* ClaimPolicy to "reinject" makes the WEventuallyDone liveness property    *)
(* fail with the observed livelock cycle (owner parked, thief looping).    *)
EXTENDS TLC
ClaimPolicy == "mailbox"
VARIABLES ost, opc, wloc
INSTANCE ClaimWake
=============================================================================
