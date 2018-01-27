; MS CT Forms

;; Hotstrings

;; CT Extremity - Colles Fracture
::ectcf::
  MyForm =
(
CT Upper Extremity:
Scanning from right forearm to finger, axial, coronal, sagittal, and 3D VRT views

FINDINGS:
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

FINDINGS:
)
  Paste(MyForm)
Return

;; CT Extremity - Lower Limbs, DVT
::ectldvt::
  MyForm =
(
CT Lower Extremity:
Axial Scanning from lower abdomen to foot, with coronal reconstruction

FINDINGS:
Mild subcutaneous soft tissue edema over the left lower extremity.
Presence of engorged vessel with intraluminal filling defects, consistent with deep venous thrombosis.
Extent: left external iliac, common femoral, great saphenous vein (proximal part).

The skeleton of lower limb is unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W DVT.
)
  Paste(MyForm)
Return

;; CT Extremity - Upper Limbs
::ectu::
  MyForm =
(
CT Upper Extremity:
Scanning from arm to finger, axial, coronal, sagittal, and 3D VRT views

FINDINGS:
)
  Paste(MyForm)
Return
