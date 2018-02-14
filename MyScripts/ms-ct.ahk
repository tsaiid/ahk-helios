﻿; MS CT Forms

;; Hotstrings
::l12::L1-L2
::l13::L1 through L3
::l14::L1 through L4
::l15::L1 through L5
::l11::L1 through S1
::l23::L2-L3
::l24::L2 through L4
::l25::L2 through L5
::l21::L2 through S1
::l34::L3-L4
::l35::L3 through L5
::l31::L3 through S1
::l45::L4-L5
::l41::L4 through S1
::l51::L5-S1

::g1::grade I
::g2::grade II

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

;; CTA - PAOD
::ectapaod::
  MyForm =
(
CTA of Lower Extremity:
Pre and post contrast-enhanced axial scanning from kidney to foot
Axial and coronal reconstruction with MIP technique

COMPARISON: no

FINDINGS:
Atherosclerotic change and calcification of the arterial wall, from abdominal aorta to the peripheral arteries of foot.
Because too small diameter of arteries and the severe calcification, the patency below the popliteal level is difficult to evaluate.

Atrophic change of bilateral kidneys, in favor of chronic kidney disease.
Some small nonobstructive bilateral renal stones.

The lower abdomen and pelvis are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Severe arterial wall calcification from abdominal aorta to feet.
Because too small diameter of arteries and the severe calcification, the patency below the popliteal level is difficult to evaluate.
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
