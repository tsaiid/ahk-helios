; Abdomen MR Forms

;; General
::amrmrcp::
  MyForm =
(
MRI of the pancreas and biliary tree.

Scanning Protocol:
 -Axi FSE T2+FS, 6-7mm/1mm
 -MRCP, thin 1.6mm/0.8m overlapped, MIP coronal reconstruction.
 -DWI
 -Cor FIESTA +FS, Large FOV
 -Axi Dynamic LAVA 3D, 0, 25, and 75 th seconds, 5-mm slice.

Comparison:

Findings:

)
  Paste(MyForm)
Return

::amrpr::
  MyForm =
(
MRI of the prostate with 3T Skyra.

SCANNING PROTOCOL:
- Distended colon with jelly
- Abdomen and pelvis:
  * HASTE T2: axial, coronal
  * DWI: coronal
  * T1+C: axial
- Prostate:
  * TSE T2, DWI, ADC: axial
  * T1+FS: axial, sagittal
  * T1+C+FS: axial, coronal, sagittal

COMPARISON: no

FINDINGS:
Prostate:
- Size: 5.5 x 3.4 x 4.7 cm
- Volume: 45.7 ml (length x width x height x 0.52)
- Focal T1 hyperintensities at left lobe, probably post-biopsy change.

Lesion 1:
- location: peripheral zone of right base (PZpl)
- size: 0.9 cm
- T2WI: Heterogeneous signal intensity, moderate hypointensity
- DWI: Focal mildly hyperintense
- ADC: Focal mildly hypointense
- DCE: negative
= PI-RADS 3

Lesion 2:
- location: transition zone of right mid (TZa)
- size: 1 cm
- T2WI: Homogeneous, moderately hypointense
- DWI: Focal mildly hyperintense
- ADC: Focal mildly hypointense
- DCE: positive
= PI-RADS 4

Lesion 3:
- peripheral zone of right apex (PZpm + PZpl)
- 1.3 cm
- T2WI: Heterogeneous signal intensity, moderate hypointensity
- DWI: Focal mildly hyperintense
- ADC: Focal mildly hypointense
- DCE: positive
= PI-RADS 3

Lymphadenopathy:
- No regional lymphadenopathy.

Distant metastasis:
- No evidence of distant metastasis in the liver, spleen, pancreas, adrenals, and kidneys.
- No retroperitoneal or mesenteric lymphadenopathy.

Seminal vesicles: unremarkable
Others: unremarkable

----
PI-RADS v2 Assessment Categories:
* PI-RADS 1 – Very low (clinically significant cancer is highly unlikely to be present)
* PI-RADS 2 – Low (clinically significant cancer is unlikely to be present)
* PI-RADS 3 – Intermediate (the presence of clinically significant cancer is equivocal)
* PI-RADS 4 – High (clinically significant cancer is likely to be present)
* PI-RADS 5 – Very high (clinically significant cancer is highly likely to be present)
)
  Paste(MyForm)
Return

::amrras::
  MyForm =
(
MRA of the renal arteries with 1.5T Avanto.

Scanning Protocol:
- Abdomen and pelvis:
  * T2+FS, T1, T1+FS: axial, coronal
- Kidney:
  * T2, T2+FS, DWI, ADC, dual-echo T1: axial
  * T1+FS MRA (pre, A- and delayed phases): coronal, with MIP reconstruction
  * T1+C+FS: axial

Comparison: no

Findings:
Right renal artery:
- mild narrowing at proximal (< 2 cm from the orifice)

Left renal artery:
- mild narrowing at proximal (< 2 cm from the orifice)

Kidneys:
- a few small cysts in both kidneys.
- the sizes and shapes are within normal limits.

Adrenals: Unremarkable
Liver: several hepatic cysts.
Biliary tree: Unremarkable
Spleen: Unremarkable
Pancreas: Unremarkable
Lymphadenopathy: No
Lower lungs: Unremarkable
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W renal artery stenosis, bilateral, mild.
)
  Paste(MyForm)
Return

::pirads::
  MyForm =
(
PI-RADS v2 Assessment Categories:
* PI-RADS 1 – Very low (clinically significant cancer is highly unlikely to be present)
* PI-RADS 2 – Low (clinically significant cancer is unlikely to be present)
* PI-RADS 3 – Intermediate (the presence of clinically significant cancer is equivocal)
* PI-RADS 4 – High (clinically significant cancer is likely to be present)
* PI-RADS 5 – Very high (clinically significant cancer is highly likely to be present)
)
  Paste(MyForm)
Return
