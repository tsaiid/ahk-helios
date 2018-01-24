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

Scanning Protocol:
- Distended colon with jelly
- Abdomen and pelvis:
  * HASTE T2: axial, coronal
  * DWI: coronal
  * T1+C: axial
- Prostate:
  * TSE T2, DWI, ADC: axial
  * T1+FS: axial, sagittal
  * T1+C+FS: axial, coronal, sagittal

Comparison: no

Findings:

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
