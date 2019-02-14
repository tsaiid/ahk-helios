; Chest CT Forms

;; Hotstrings
::ist::interlobular septal thickening
::6mcct::Follow up chest CT scan 6 months later.
::tacal::Atherosclerotic change and calcification of aortic wall.
::mtacal::Mild atherosclerotic change and calcification of aortic wall.
::accal::Atherosclerotic change of the aorta and coronary arteries.
::cctcad::Calcification of the coronary arteries, suspicious of coronary artery disease.
::cad0::Calcification of the coronary arteries.
::mcad0::Mild calcification of the coronary arteries.
::cctnc::*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
::cctnat::No abnormal air trapping in both inspiratory and expiratory phases.
::cadr0::CAD-RADS 0: Documented absence of CAD.
::cadr1::CAD-RADS 1: Minimal non-obstructive CAD. Consider preventive therapy and risk factor modification.
::cadr2::CAD-RADS 2: Mild non-obstructive CAD. Consider preventive therapy and risk factor modification, particularly for patients with non-obstructive plaque in multiple segments.
::cadr3::CAD-RADS 3: Moderate stenosis. Consider functional assessment.
::cadr4::CAD-RADS 4: Severe stenosis. Consider invasive coronary angiography or functional assessment.
::cadr5::CAD-RADS 5: Total coronary occlusion. Consider ICA and/or viability assessment.
::cctlapok::
  MyForm =
(
No mediastinal or pulmonary hilar lymphadenopathy.
No axillary, supraclavicular, mediastinal or pulmonary hilar lymphadenopathy.
)
  Paste(MyForm)
Return

;; Show helper to insert Fleischner guideline
::fsg::
  hParentWnd := WinExist("A")
  Fleischner2017Form()
Return

::cctok::
  MyForm =
(
No pulmonary nodule.
No mediastinal lymphadenopathy.
The heart and great vessels are unremarkable.
The thoracic cage and spine are unremarkable.
)
  Paste(MyForm)
Return

;; Lung Routine
::cctlr::
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) Noncontrast survey (2) contrast enhancement (inspiration/expiration) were performed
- (1) Noncontrast survey (2) contrast enhancement were performed
- Scan range: lower neck to adrenal gland

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
- Lung: negative
- Airway: not unusual for age
- Mediastinum: not unusual
- Lymph node enlargement > 1 cm: none for age
- Pleura: not unusual for age
- Pericardium and heart: not unusual for age
- Aorta and pulmonary artery: not unusual for age
- Chest wall and bony structure: not unusual for age
- Upper abdomen and adrenals: not unusual for age
)
  Paste(MyForm)
Return

;; NCSD
::cctncsd::
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) HRCT (inspiration and expiration) (2) Noncontrast survey
- (1) Noncontrast survey (inspiration and expiration)
- (1) Noncontrast survey
- Scan range: lower neck to adrenal gland

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
- Lung and large airways: no pulmonary nodules.
- Pleura: no visible nodularity or pleural thickening.
- Great vessels: within normal limits.
- Heart: within normal limits.
- Mediastinum and hila: no LNs > 1 cm.
- Chest Wall and low neck: within normal limits.
- Abdomen: within normal limits in visualized range.

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::cctncsd+a::
  MyForm =
(
CT scan of the thorax and abdomen was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) Noncontrast survey
- Scan range: lower neck to hip

COMPARISON:
Applicable previous CT of chest: no
Applicable previous CT of abdomen: no

FINDINGS:
- Lung and large airways: no pulmonary nodules.
- Pleura: no visible nodularity or pleural thickening.
- Great vessels: within normal limits.
- Heart: within normal limits.
- Mediastinum and hila: no LNs > 1 cm.
- Chest Wall and low neck: within normal limits.
- Abdomen:
  > The liver, spleen, pancreas, adrenals, kidneys, and pelvis are normal.
  > No retroperitoneal or mesenteric lymphadenopathy.

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

;; NCLD
::cctncld::
  MyForm =
(
Lower dose, high resolution (2-mm slice thickness) non-contrast CT scan for screening pulmonary nodule.
Scanner: Multi-detector CT scanner.
Scan range: thoracic inlet to diaphragm.
Reconstruction: axial and coronal reconstruction.

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
1. Lung parenchyma:
- No remarkable nodular lesion.

2. Other lung and extrapulmonary findings:
- Airway: normal.
- Mediastinum: no lymph node enlargement > 1 cm.
- Heart: normal size. No obvious coronary artery calcification.
- Heart: normal size. Mild coronary artery calcification.
- Great vessels: normal diameter.
- Pleura: unremarkable.
- Chest wall and spine: unremarkable.
- Upper abdomen: unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
No remarkable nodular lesions in bilateral lungs.
)
  Paste(MyForm)
Return

::cctncsduip::
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) HRCT (inspiration and expiration) (2) Noncontrast survey
- (1) Noncontrast survey (inspiration and expiration)
- (1) Noncontrast survey
- Scan range: lower neck to adrenal gland

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
- Lung and large airways:
  > Bilateral subpleural reticulation, interlobular septal thickening, basal honeycombing, suggestive of UIP pattern.
  > Mild bronchiectasis over bilateral lower lungs.
  > No definite extensive ground glass abnormality, micronodules, discrete cysts, diffuse mosaic attenuation, nor consolidation.

  > Bilateral reticulation, interlobular septal thickening, basal predominance, suggestive of possible UIP pattern.
  > Mild bronchiectasis over bilateral lower lobes.
  > A few small nodules in the bilateral lungs.
  > No definite extensive ground glass abnormality, discrete cysts, diffuse mosaic attenuation, air trapping, nor consolidation.
- Pleura: no visible nodularity or pleural thickening.
- Great vessels: within normal limits.
- Heart: within normal limits.
- Mediastinum and hila: no LNs > 1 cm.
- Chest Wall and low neck: several small nodules with calcifications in the thyroid. Suggest correlate with sonography.
- Abdomen: within normal limits in visualized range.

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
UIP pattern.
)
  Paste(MyForm)
Return

::cctncsdnsip::
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) HRCT (inspiration and expiration) (2) Noncontrast survey
- (1) Noncontrast survey (inspiration and expiration)
- (1) Noncontrast survey
- Scan range: lower neck to adrenal gland

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
- Lung and large airways:
  > Multifocal peribronchovascular ground glass opacities with bronchiectasis over bilateral lungs. Subpleural sparing is noted. No honeycombing. Non-specific interstitial pneumonia is suspected.
- Pleura: no visible nodularity or pleural thickening.
- Great vessels: within normal limits.
- Heart: within normal limits.
- Mediastinum and hila: no LNs > 1 cm.
- Chest Wall and low neck: within normal limits.
- Abdomen: within normal limits in visualized range.

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
NSIP is suspected.
)
  Paste(MyForm)
Return

;; CTA
::cctcta::
  MyForm =
(
CT scan of the thorax and abdomen was performed with a multi-slice CT scanner.

TECHNIQUE:
- (1) non-contrast (2) contrast enhancement for CT angiography
- Scan range: target vessel
- Contrast medium: IV route, rate: as fast as IV route allowed

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
1. AORTA:
- No evidence of aortic aneurysm or dissection.

2. PULMONARY ARTERY:
- No definite filling defect

3. OTHER THORACIC ORGANS:
- No pulmonary nodule.
- No mediastinal lymphadenopathy.

4. ABDOMINAL ORGANS SCANNED: Unremarkable

5. OTHERS:
- No osteolytic or osteoblastic bone lesion in the scanning range.
)
  Paste(MyForm)
Return

;; Congenital Heart Disease
::cctchd::
  MyForm =
(
MDCT FOR CONGENITAL HEART DISEASE PERFORMED WITH 64-SLICE CT SCANNER
Total DLP:

COMPARISON:
Applicable previous CT of chest: no

PROTOCOL:
  - EKG gating, prospective (65-85`%)
  - EKG gating, retrospective
  - Delay image:
    1. Time: 10 min; Low dose: 80kV
    2. EKG gating, retrospective

PARAMETERS:
  - Image quality: good/fair/poor
  - Imaging processing: MPR and 3D-VRT

CARDIOVASCULAR FINDINGS:
  . Situs: solitus
  . Atrium: Not unusual
  . Ventricle: Not unusual.
  . Aorta: not usuual, AAo diameter:  mm; DAo: mm.
  . Pulmonary trunk: not unusual, trunk diameter: mm; RPA: mm; LPA: mm.
  . Collateral to lung: PDA (-); MAPCA(-).
  . Pulmonary vein: Not unusual
  . SVC/IVC/azygos vein : Not unusual

MEASUREMENT:
  . Ascending Ao:  mm.
  . Descending Ao:  mm.
  . Pulmonary trunk:  mm.
  . Right pulmonary artery:  mm.
  . Left pulmonary artery:  mm.

OTHER FINDINGS:
  . Trachea and bronchus: Not unusual
  . Lung parenchyma and plerua: No unusual
  . Pleural: Not unusual
  . Chest wall: No unusual
  . Presence of thymus gland: (+)
  . Abdomen: Not unusual

IMPRESSION:
)
  Paste(MyForm)
Return

;; Lung cancer, staging
::cctlcs::
  MyForm =
(
CT scan of the thorax was performed with a MDCT scanner.
TECHNIQUE: (1) NCCT (2) CECT were performed
SCAN RANGE: lower neck to adrenal gland

PREVIOUS CHEST CT SCAN: Not available.

FINDINGS:
A. Tumor Profile
(1) Tumor Location:
(2) Tumor Size & Invasion (T):
--- Greatest Diameter (cm):
* Tumor <= 1 cm (T1a)
* 1 cm < Tumor <= 2 cm (T1b)
* 2 cm < Tumor <= 3 cm (T1c)
* 3 cm < Tumor <= 4 cm (T2a)
* 4 cm < Tumor <= 5 cm (T2b)
* 5 cm < Tumor <= 7 cm (T3)
* 7 cm < Tumor (T4)

* Not more proximal than main bronchus (T1)

* Involves main bronchus (T2)
* Invades visceral pleura (T2)
* Focal atelectasis or obstructive pneumonitis to hilum (T2)
* Involves part or anterior longitudinal ligament of the lung (T2)


* Invades parietal pleura, chest wall (including superior sulcus tumors), phrenic nerve, parietal pericardium (T3)
* Separate tumor nodule(s) in same lobe (T3)

* Invades mediastinum, heart, great vessels, trachea, recurrent laryngeal nerve, esophagus, vertebral body, carina (T4)
* Separate tumor nodule(s) in a different ipsilateral lobe (T4)

(3) Regional Lymph Nodes (N)
* No regional lymph node metastasis (N0)
* Metastasis in ipsilateral peribronchial and/or ipsilateral hilar lymph nodes and intrapulmonary nodes, including involvement by direct extension (N1)
* Metastasis in ipsilateral mediastinal and/or subcarinal lymph node(s) (N2)
* Metastasis in contralateral mediastinal, contralateral hilar, ipsilateral or contralateral scalene, or supraclavicular lymph node(s) (N3)

(4) Distant Metastasis (M)
* No evidence in the scanned range (M0)
* Separate tumor nodule(s) in a contralateral lobe (M1a)
* Tumor with pleural or pericardial nodules, or malignant pleural (or pericardial) effusion (M1a)
* Single extrathoracic metastasis in a single organ (M1b):
* Multiple extrathoracic metastasis in a single organ or multiple organs (M1c):
* Uncertain lesion in the scanned range, which could be metastatic lesion or not, and require further study (Mx)

B. Other Findings

)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Lung cancer of , cTNM (AJCC 2016, 8th ed.) if proved
)
  Paste(MyForm)
Return

;; Esophageal cancer, staging
::cctecs::
  MyForm =
(
CT scan of the thorax was performed with a MDCT scanner.

PROTOCOL:
TECHNIQUE: (1) NCCT (2) CECT were performed
SCAN RANGE: lower neck to adrenal gland

Previous chest CT scan: no

FINDINGS:
1. TUMOR LOCATION
--- Cervical segment (hypopharynx to sternal notch)
--- Upper third of thoracic segment (sternal notch to azygos vein)
--- Middle third of thoracic segment (azygos vein to inferior pulmonary vein)
--- Lower third of thoracic segment (inferior pulmonary vein to esophagogastric junction)

2. TUMOR SIZE
--- Measurable: Length________ cm , Max thickness ________ cm
--- Non-measurable

3. TUMOR INVASION
--- No or Equivocal
--- Yes, if yes:
T3: Adventitia(+)
T4a: pleura(+), pericardium(+), diaphragm(+), peritoneum(+),
T4b: aortic wall(+), carina(+), left atrial wall (+), vertebral body(+),
posterior wall of trachea(+), posterior wall of main bronchus(+),

4. REGIONAL NODAL METASTASIS
--- No or Equivocal
--- Yes, if yes
--- Number of suspicious lymph node: 1-2 (N1), 3-6 (N2), or >7 (N3)
--- Location (specified as below):
Lower cervical, supraclavicular, and sternal notch,
Right upper paratracheal, Left upper paratracheal,
Right lower paratracheal, Left lower paratracheal,
Prevascular, Retrotracheal,
Subaortic (A-P window), Paraaortic (ascending aorta or phrenic),
Subcarinal, Paraesophageal,
Right Hilar, Left Hilar,
Right cardiac, Left cardiac
Lesser curvature
Left gastric artery

5. DISTANT METASTASIS (IN THIS STUDY)
--- No or Equivocal
--- Yes, location: _________

6. OTHER FINDINGS

)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Esophageal CA of , cTNM. (AJCC 2016, 8th ed.)
)
  Paste(MyForm)
Return

::cctsr::
  MyForm =
(
Lung and large airways: no pulmonary nodules.
Pleura: no visible nodularity or pleural thickening.
Great vessels: within normal limits.
Heart: within normal limits.
Mediastinum and hila: no LNs > 1 cm.
Chest Wall and low neck: within normal limits.
)
  Paste(MyForm)
Return

::cctcs::
  MyForm =
(
Cardiac dual-source CT was performed without intravenous contrast administration and under ECG-gating.

Findings:
- Total Calcium Score (Equivalent Agatston Score) is 0
   LM calcium score is 0
   LAD calcium score is 0
   LCX calcium score is 0
   RCA calcium score is 0

Additional findings:
- The cardiac chambers are normal
- The cardiac valves are not calcified
- The visualized thoracic aorta is normal
- The visual lungs are clear
- The visible bone is normal
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Total Calcium Score (Equivalent Agatston Score) is 0.
)
  Paste(MyForm)
Return

::ccta::
  MyForm =
(
Dual-Source CT of heart was performed with rapid i.v. contrast administration
Findings of CT coronary angiography:

1. RCA - proximal: No plaque
2. RCA - middle: No plaque
3. RCA - distal: No plaque
4. PDA: No plaque
5. LM (Left main): No plaque
6. LAD - proximal: No plaque
7. LAD - middle: No plaque
8. LAD - distal: No plaque
9. D1: No plaque
10. D2: No plaque
11. LCX - proximal: No plaque
12. OM1: No plaque
13. LCX - distal: No plaque
14. OM2: No plaque
15. LCX-PDA branch: Not shown
16. RCA-PLB: No plaque
17. RIM: Not shown
18. LCX-PLB: Not shown

* Dominance of coronary arteries: right
* The pericardium is normal.
* Normal ramification and calibers of the pulmonary arteries.
* No evidence of pulmonary thrombosis.

----
Note:
RCA: right coronary artery;  LAD: left anterior descending artery;  LCX: left circumflex artery;  PDA: posterior descending artery;  D1: first diagonal artery;  D2: second diagonal artery;  OM1: first obtuse marginal artery;  OM2: second obtuse marginal artery;  PLB: postero-lateral branch;  RIM: ramus intermedius;  AM: acute marginal branch

Recommended Quantitative Stenosis Grading:
( Adapted from SCCT Guidelines for the Interpretation and Reporting of Coronary Computed Tomographic Angiography, 2009 )
- Grade 0  Normal: Absence of plaque and no luminal stenosis
- Grade 1  Minimal: Plaque with < 25`% stenosis
- Grade 2  Mild: 25`% - 49`% stenosis
- Grade 3  Moderate: 50`% - 69`% stenosis
- Grade 4  Severe: 70`% - 99`% stenosis
- Grade 5  Occluded

Remark: Some heart motion might mimic pseudo-stenotic lesions in Volume Rendering images, suggest curve MPR and source data correlation.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
No evidence of coronary stenosis or plaque by Coronary CT Angiography.
)
  Paste(MyForm)
Return