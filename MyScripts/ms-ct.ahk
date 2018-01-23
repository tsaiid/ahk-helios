; MS CT Forms

;; Hotstrings

;; CT Extremity - Colles Fracture
::ectcf::
  MyForm =
(
CT Upper Extremity:
Scanning from right forearm to finger, axial, coronal, sagittal, and 3D VRT views

Right distal radial fracture
- dorsal angulation
- dorsal displacement
- no involvement of the radioulnar joint
- intra-articular fracture: (+)
- other fracture: nil
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Right Colles fracture, with intra-articular involvement.
)
  Paste(MyForm)
Return

;; CT Extremity - Lower Limbs
::ectl::
  MyForm =
(
CT Lower Extremity:
Scanning from thigh to foot, axial, coronal, sagittal, and 3D VRT views

)
  Paste(MyForm)
Return

;; CT Extremity - Upper Limbs
::ectu::
  MyForm =
(
CT Upper Extremity:
Scanning from arm to finger, axial, coronal, sagittal, and 3D VRT views

)
  Paste(MyForm)
Return
