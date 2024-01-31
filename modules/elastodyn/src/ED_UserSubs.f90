   ! NOTE: This source file contains dummy placeholders for the
   !       user-specified routines available in ElastoDyn.  These routines
   !       are as follows:
   !          Routine       Description
   !          ------------  ---------------------------------------------------
   !          UserRFrl()    User-specified rotor-furl spring/damper model.
   !          UserTeet()    User-specified rotor-teeter spring/damper model.
   !          UserTFrl()    User-specified tail-furl spring/damper model.
   !       In order to interface ElastoDyn with your own user-specified routines,
   !       you can develop your own logic within these dummy placeholders and
   !       recompile; We recommend that you do not use these files, as they do not
   !       conform to the FAST Modularization framework.

module ED_UserSubs
contains
   
!=======================================================================
SUBROUTINE UserRFrl ( RFrlDef, RFrlRate, ZTime, DirRoot, RFrlMom )


   ! This is a dummy routine for holding the place of a user-specified
   ! rotor-furl spring/damper.  Modify this code to create your own device.

   ! NOTE: If you (the user) wants to switch on-or-off the rotor-furl DOF at
   !       runtime from this user-defined routine, then do the following:
   !          (1) USE MODULE DOFs().
   !          (2) Type in "DOF_Flag(DOF_RFrl) = VALUE" where VALUE = .TRUE. or
   !              .FALSE. depending on whether you want to turn-on or turn-off
   !              the DOF, respectively.  Turning off the DOF forces the
   !              current RATE to remain fixed.  If the rate is currently zero,
   !              the current POSITION will remain fixed as well.
   !       This technique is useful, for example, if the rotor-furl hinge has
   !       an electromagnetic latch that will unlock and relock the hinge under
   !       certain specified conditions.


USE                             Precision


IMPLICIT                        NONE


   ! Passed Variables:

REAL(R8Ki), INTENT(IN )      :: RFrlDef                                         ! Rotor-furl angular deflection, rad.
REAL(ReKi), INTENT(OUT)      :: RFrlMom                                         ! Rotor-furl restoring moment, N-m.
REAL(R8Ki), INTENT(IN )      :: RFrlRate                                        ! Rotor-furl angular rate, rad/s
REAL(DbKi), INTENT(IN )      :: ZTime                                           ! Current simulation time, sec.

CHARACTER(*), INTENT(IN )    :: DirRoot                                         ! The name of the root file including the full path to the current working directory.  This may be useful if you want this routine to write a permanent record of what it does to be stored with the simulation results: the results should be stored in a file whose name (including path) is generated by appending any suitable extension to DirRoot.



RFrlMom = 0.0



RETURN
END SUBROUTINE UserRFrl
!=======================================================================
SUBROUTINE UserTeet ( TeetDef, TeetRate, ZTime, DirRoot, TeetMom )


   ! This is a dummy routine for holding the place of a user-specified
   ! teeter spring/damper.  Modify this code to create your own device.

   ! NOTE: If you (the user) wants to switch on-or-off the teeter DOF at
   !       runtime from this user-defined routine, then do the following:
   !          (1) USE MODULE DOFs().
   !          (2) Type in "DOF_Flag(DOF_Teet) = VALUE" where VALUE = .TRUE. or
   !              .FALSE. depending on whether you want to turn-on or turn-off
   !              the DOF, respectively.  Turning off the DOF forces the
   !              current RATE to remain fixed.  If the rate is currently zero,
   !              the current POSITION will remain fixed as well.
   !       This technique is useful, for example, if the teeter hinge has
   !       an electromagnetic latch that will unlock and relock the hinge under
   !       certain specified conditions.


USE                             Precision


IMPLICIT                        NONE


   ! Passed Variables:

REAL(R8Ki), INTENT(IN )      :: TeetDef                                         ! Rotor-teeter angular deflection, rad.
REAL(ReKi), INTENT(OUT)      :: TeetMom                                         ! Rotor-teeter restoring moment, N-m.
REAL(R8Ki), INTENT(IN )      :: TeetRate                                        ! Rotor-teeter angular rate, rad/s
REAL(DbKi), INTENT(IN )      :: ZTime                                           ! Current simulation time, sec.

CHARACTER(1024), INTENT(IN ) :: DirRoot                                         ! The name of the root file including the full path to the current working directory.  This may be useful if you want this routine to write a permanent record of what it does to be stored with the simulation results: the results should be stored in a file whose name (including path) is generated by appending any suitable extension to DirRoot.



TeetMom = 0.0



RETURN
END SUBROUTINE UserTeet
!=======================================================================
SUBROUTINE UserYawFrict ( ZTime, Fz, Mzz, Omg, OmgDot, DirRoot, Mf )

   ! RRD Engineering
   ! This is a dummy routine for holding the place of a user-specified
   ! Yaw Friction.  Modify this code to create your own device.


USE                             Precision


IMPLICIT                        NONE


   ! Passed Variables:
REAL(DbKi), INTENT(IN )      :: ZTime     ! Current simulation time, sec.
REAL(R8Ki), INTENT(IN )      :: Fz, Mzz   ! Yaw Bering normal force (positive if upward) and torque, N and N*m
REAL(R8Ki), INTENT(IN )      :: Omg       ! Yaw rotational speed, rad/s.
REAL(R8Ki), INTENT(IN )      :: OmgDot    ! Yaw rotational acceleration, rad/s^2.

CHARACTER(1024), INTENT(IN ) :: DirRoot             ! The name of the root file including the full path to the current working directory.  This may be useful if you want this routine to write a permanent record of what it does to be stored with the simulation results: the results should be stored in a file whose name (including path) is generated by appending any suitable extension to DirRoot.

REAL(ReKi), INTENT(OUT)      :: Mf        ! Yaw friction moment, N*m.



Mf = 0.0

RETURN
END SUBROUTINE UserYawFrict
!=======================================================================
SUBROUTINE UserTFrl ( TFrlDef, TFrlRate, ZTime, DirRoot, TFrlMom )


   ! This is a dummy routine for holding the place of a user-specified
   ! tail-furl spring/damper.  Modify this code to create your own device.

   ! NOTE: If you (the user) wants to switch on-or-off the tail-furl DOF at
   !       runtime from this user-defined routine, then do the following:
   !          (1) USE MODULE DOFs().
   !          (2) Type in "DOF_Flag(DOF_TFrl) = VALUE" where VALUE = .TRUE. or
   !              .FALSE. depending on whether you want to turn-on or turn-off
   !              the DOF, respectively.  Turning off the DOF forces the
   !              current RATE to remain fixed.  If the rate is currently zero,
   !              the current POSITION will remain fixed as well.
   !       This technique is useful, for example, if the tail-furl hinge has
   !       an electromagnetic latch that will unlock and relock the hinge under
   !       certain specified conditions.


USE                             Precision


IMPLICIT                        NONE


   ! Passed Variables:

REAL(R8Ki), INTENT(IN )      :: TFrlDef                                         ! Tail-furl angular deflection, rad.
REAL(ReKi), INTENT(OUT)      :: TFrlMom                                         ! Tail-furl restoring moment, N-m.
REAL(R8Ki), INTENT(IN )      :: TFrlRate                                        ! Tail-furl angular rate, rad/s
REAL(DbKi), INTENT(IN )      :: ZTime                                           ! Current simulation time, sec.

CHARACTER(1024), INTENT(IN ) :: DirRoot                                         ! The name of the root file including the full path to the current working directory.  This may be useful if you want this routine to write a permanent record of what it does to be stored with the simulation results: the results should be stored in a file whose name (including path) is generated by appending any suitable extension to DirRoot.



TFrlMom = 0.0



RETURN
END SUBROUTINE UserTFrl
!=======================================================================
end module ED_UserSubs
