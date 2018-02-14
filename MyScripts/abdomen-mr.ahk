; Abdomen MR Forms

;; General
::amrpan::
  MyForm =
(
MRI of the Pancreas and MRCP.

SCANNING PROTOCOL:
- Cor TrueFISP: whole abdomen
- Axi HASTE T2, TSE T2+FS, heavy T2+FS, DWI, ADC maps, T1+FS, T1 IP/OOP
- Axi, Cor HASTE T2+FS thin slice
- MRCP MIP reconstruction
- Cor VIBE T1+FS, Dynamic Contrast Enhanced: whole abdomen
- MRA MIP reconstruction

COMPARISON: no

FINDINGS:

)
  Paste(MyForm)
Return

::amrmrcp::
  MyForm =
(
MRI of the Liver and MRCP.

SCANNING PROTOCOL:
- Cor TrueFISP: whole abdomen
- Axi, Cor TrueFISP thin slice
- Axi TSE T2, T2+FS, DWI, ADC maps, T1+FS, T1 IP/OOP
- MRCP, Axi, Cor, MIP reconstruction
- Axi, Cor VIBE T1+FS
- Cor DWI (b=400): whole abdomen

COMPARISON: no

FINDINGS:

)
  Paste(MyForm)
Return

::amrpr::
  MyForm =
(
MRI of the prostate with 3T Skyra.

SCANNING PROTOCOL:
- Distended rectum with jelly
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
* PI-RADS 1 - Very low (clinically significant cancer is highly unlikely to be present)
* PI-RADS 2 - Low (clinically significant cancer is unlikely to be present)
* PI-RADS 3 - Intermediate (the presence of clinically significant cancer is equivocal)
* PI-RADS 4 - High (clinically significant cancer is likely to be present)
* PI-RADS 5 - Very high (clinically significant cancer is highly likely to be present)
)
  Paste(MyForm)
Return

::amrcx::
  MyForm =
(
MRI of the Uterine Cervix.

SCANNING PROTOCOL:
- Distended rectum with jelly
- Abdomen and pelvis:
  * T2: axial, coronal
  * DWI (b=400): coronal
  * T1+C: axial
- Uterus:
  * TSE T2: axial, coronal, sagittal
  * DWI (b=1000), ADC: axial
  * T1+FS: axial, sagittal
  * T1+C+FS: axial, coronal, sagittal

COMPARISON: no

FINDINGS:

)
  Paste(MyForm)
Return

::amrrec::
  MyForm =
(
MRI of the Pelvis and Rectum.

SCANNING PROTOCOL:
- Distended rectum with jelly
- Abdomen and pelvis:
  * T2: axial, coronal
  * DWI (b=400): coronal
  * T1+C: axial
- Rectum:
  * TSE T2: axial, coronal, sagittal
  * DWI (b=1000), ADC: axial
  * T1+FS: axial, sagittal
  * T1+C+FS: axial, coronal, sagittal

COMPARISON: no

FINDINGS:

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
* PI-RADS 1 - Very low (clinically significant cancer is highly unlikely to be present)
* PI-RADS 2 - Low (clinically significant cancer is unlikely to be present)
* PI-RADS 3 - Intermediate (the presence of clinically significant cancer is equivocal)
* PI-RADS 4 - High (clinically significant cancer is likely to be present)
* PI-RADS 5 - Very high (clinically significant cancer is highly likely to be present)
)
  Paste(MyForm)
Return

::amrgynpa::
  MyForm =
(
MRI of the Uterus.

SCANNING PROTOCOL:
- Abdomen and pelvis:
  * TrueFISP T2 Cor; HASTE T2 Sag, Axi
  * DWI (b=400): Cor
- Uterus:
  * TSE T2 Axi, Cor, Sag
  * TSE T1 Axi, Cor, Sag; TSE T1+FS Axi
  * VIBE T1+FS Axi
  * DWI (b=1000), ADC: Axi

COMPARISON: no

FINDINGS:
A gravid uterus with abnormally low position of the placenta, completely covering the internal cervical os, c/w placenta previa, grade IV (complete placenta previa).

T2 HASTE and true FISP images show
- Heterogeneous signal intensity in the placenta
- Abnormal intraplacental dark bands
- Abnormal dilated intraplacental vascularity
- Focal thinning of myometrium
- Loss of triple-layered appearance of normal myometrium
at the lower anterior uterine segment, c/w placenta accreta. Suggest correlation with placental sonography and clinical history.

The fetus is in vertex presentation, and the images show no hydrocephalus, no hydronephrosis, and no obvious structural anomaly.
The amniotic fluid volume is within normal limits.


REF:
Imaging findings of PA, Cardinal signs
- Dark intraplacental bands on T2-weighted images
- Heterogeneity within the placenta
- Abnormal disorganized placental vascularity
- Others – less sensitive signs
- Uterine bulging
- Focal interruptions of the myometrial wall (high specificity for increta and percreta)
- Tenting of urinary bladder (highly specific for percreta)

- Irregular dark bands on T2 HASTE images showing decreased signal on true FISP images, representing abnormal fibrin deposition;
- Dilated tortuous signal voids on T2 HASTE images deep within the placenta showing increased signal on true FISP images, which is indicative of abnormal vascular lacunae.


Key imaging features of normal placentation
- Homogeneous T2-intermediate signal intensity of placenta
- Subtle thin, regularly spaced placental septi
- Normal subplacental vascularity
- Triple-layered sandwich appearance of myometrium
- Pear-shape of normal gravid uterus with smooth contour.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W complete placenta previa, with placenta accreta. Suggest correlation with placental sonography and clinical history.
No obvious fetal anomaly.
)
  Paste(MyForm)
Return

::amremca::
  MyForm =
(
MRI of the Uterus.

SCANNING PROTOCOL:
- Distended rectum with jelly
- Abdomen and pelvis:
  * HASTE T2: axial, coronal
  * DWI (b=400): coronal
  * T1+C: axial
- Uterus:
  * TSE T2: axial, coronal
  * DWI (b=1000), ADC: axial
  * T1+FS: axial, sagittal
  * T1+C+FS: axial, coronal, sagittal

COMPARISON: no

FINDINGS:
Endometrial tumor:
- Signal intensity: isointense on T1WI, slightly hyperintense on T2WI, with diffusion restriction; relative less enhancement.
- Extent: whole uterine cavity, extending to the cervix.
- Invasion: disruption of low T2 signal cervical stroma

Lymph node:
- No regional lymph node metastasis.

Distant metastasis:
- No liver, adrenal metastasis.
- No non-regional lymph node metastasis.

Others:
- A 6.1-cm pedunculated uterine myoma at anterior wall.
- A 3.2-cm left ovarian cyst.
- Multiple small cystic lesions within the cervical stroma, in favor of Nabothian cysts.
- Small amount of ascites in the Cul-de-sac.

- Liver: Unremarkable
- Spleen: Unremarkable
- Pancreas: Unremarkable
- GI tract: Unremarkable
- Kidneys and ureters: Unremarkable
- Urinary bladder: Unremarkable
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Endometrial cancer, FIGO Stage II.
)
  Paste(MyForm)
