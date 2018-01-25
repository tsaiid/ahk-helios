; Abdomen CT Forms

;; General

::act::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

)
  Paste(MyForm)
Return


;; Hotstrings
::lapok::No retroperitoneal or mesenteric lymphadenopathy.
::l-b-ok::The lungs covered in the scanning range are normal.{Enter}In bone window, the findings are unremarkable.
::l-ok::The lungs covered in the scanning range are normal.
::l-ok1::No pulmonary nodule.
::b-ok::No osteolytic or osteoblastic lesion in the scanning range.
::acthcs::Several hepatic cysts, size up to  cm.{Left 4}
::actgbs::A tiny gallbladder stone without obvious GB distention or wall thickening.
::actgbss::Presence of several gallbladder stones without obvious GB distention or wall thickening.
::actgbsg::Presence of high-attenuation material in the gallbladder with layering, in favor of GB sludge.
::actok::The liver, spleen, pancreas, adrenals, kidneys, and bowels are normal.
::actncok::The liver, spleen, pancreas, adrenals, kidneys, and bowels are normal. Due to non-contrast study, the evaluation of solid organs is limited.
::bpleat::Bilateral pleural effusion with atelectasis of lower lungs.
::acthh::A -cm nodule over S of liver, shows discontinuous, nodular, peripheral enhancement in arterial phase, and progressive peripheral enhancement with centripetal fill in in portal venous phase. Hepatic hemangioma is considered.
::mrhh::A -cm nodule over S of liver, shows hyperintensity on T2WI, and the dynamic study shows discontinuous, nodular, peripheral enhancement, with progressive peripheral enhancement with centripetal fill in. Hepatic hemangioma is considered.
::actrn::A -cm nodule over S of liver, shows enhancement in arterial phase, and isodense in portal venous phase, in favor of regenerative nodule.
::actraa::A __-cm fat-containing enhancing nodular lesion at the right adrenal, in favor of adenoma.
::actlaa::A __-cm fat-containing enhancing nodular lesion at the left adrenal, in favor of adenoma.
::actckd::Atrophic change of bilateral kidneys, in favor of chronic kidney disease.
::actrkaml::A __-cm fat-containing tumor at the right kidney, in favor of angiomyolipoma.
::actlkaml::A __-cm fat-containing tumor at the left kidney, in favor of angiomyolipoma.
::actbkaml::Fat-containing tumors at the both kidneys, size up to __ cm, in favor of angiomyolipomas.
::actns::No evidence of high-attenuation stone along the urinary tracts.
::actbph::Prostate enlargement with intravesical protrusion.
::aphe::arterial phase hyperenhancement
::actlok::No definite liver tumor. No abnormal enhancing parenchymal lesion.
::actthad::Areas of liver parenchymal enhancement visible only during the hepatic artery phase, suggestive of transient hepatic attenuation differences (THAD).
::actmfl::Diffusely mild decreased attenuation of the liver, suggestive of fatty liver.
::actc::Irregular surface of the liver with nodularities, indicating liver cirrhosis.
::actcc::Wall thickening of the urinary bladder with trabeculation, suggestive of chronic cystitis.
::nifa::No evidence of intraperitoneal free air.

::actok1::
  MyForm =
(
The liver, spleen, pancreas, adrenals, kidneys, and bowels are normal.
The lower abdomen and pelvis are normal.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are normal.
)
  Paste(MyForm)
Return

::ctcaok::
  MyForm =
(
No local recurrence.
No retroperitoneal or mesenteric lymphadenopathy.
No pelvic, retroperitoneal or mesenteric lymphadenopathy.
No pulmonary nodule.
No pulmonary nodule in the scanning range.
No mediastinal lymphadenopathy.
No osteolytic or osteoblastic bone lesion.
No osteolytic or osteoblastic bone lesion in the scanning range.
)
  Paste(MyForm)
Return

::actapp::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
A swollen appendix, diameter about 1.1 cm, containing some appendicoliths, with mesoappendiceal fat stranding, c/w acute appendicitis.
Small amount of ascites in the rectovesical pouch.
Small amount of ascites in the Cul-de-sac.
No evidence of intraperitoneal free air.

The liver, spleen, pancreas, adrenals, and kidneys are normal.
The pelvis are normal.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are normal.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W acute appendicitis.
)
  Paste(MyForm)
Return

::actappr::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
The appendix is swollen, with severe mesoappendiceal fatty stranding. Its mucosa is discontinuous and some adjacent fluid collections are noted. These findings are suggestive of acute appendicitis with rupture.

The liver, spleen, pancreas, adrenals, and kidneys are normal.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are normal.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W acute appendicitis with rupture.
)
  Paste(MyForm)
Return

::acthcc::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial and portovenous phases.

Previous abdominal CT: none.

FINDINGS:

Liver: tumor profiles:
number: two
segment, size: S5 and S8 ( 2.5 and 1.4 cm)
enhancement:  hyper- in arterial phase, hypo- in venous/delayed phase
vessel invasion: Nil
cirrhotic change: nil, portosystemic collaterals (-)
comments: in favor of HCCs

Extrahepatic spread: No.
Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable

Kidneys and ureters: Unremarkable.

No evident upper abdominal retroperitoneal lymphadenopathy identified.

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::acthccf::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial, portovenous, and equilibrium phases.

Previous abdominal CT: none.

FINDINGS:


)
  Paste(MyForm)
Return

::actpan::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 30 and 80 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

)
  Paste(MyForm)
Return

::acttcc::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 3-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 and 420 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Kidneys: Unremarkable
Ureters: Unremarkable
Urinary bladder: Unremarkable

Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Liver: Unremarkable
Biliary tree: Unremarkable
Spleen: Unremarkable
Pancreas: Unremarkable

Lower lungs: Unremarkable
Skeleton: No osteolytic nor osteoblastic lesion
)
  Paste(MyForm)
Return

::actl::
  MyForm =
(
** Non-contrast and contrast-enhanced chest and abdominal CT scans.
Scanning range: lower neck to symphysis, 5-mm contiguous scan.
Contrast medium administered: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Indications: R/O lymphoma for staging

Previous chest and abdominal CT: None

Findings:
Presence of enlarged lymph nodes over (>1cm in longest diameter)
1. Above the diaphragm:
   Waldeyer's ring (tonsil): Nil, Yes
   Cervical, supraclavicular, occipital, and pre-auricular: Nil, RT, LT, Bil.
   Infraclavicular: Nil, RT, LT, Bil.
   Axillary and pectoral: Nil, RT, LT, Bil.
   Mediastinal: Nil, Yes
   Hilar: Nil, RT, LT, Bil.
   Total number of region:
2. Below the diaphragm:
   Mesenteric: Nil, Yes
   Paraaortic: Nil, Yes
   Iliac: Nil, RT, LT, Bil.
   Inguinal and femoral: Nil, RT, LT, Bil.
   Total number of region:

Spleen involvement: Nil, Yes
Extranodal involvement: Nil, Yes, organ:
Liver involvement: Nil, Yes
Bone marrow involvement: Nil, Yes
Lung involvement: Nil, Yes

** No significant lesion of the lung, liver, spleen, bowels, pancreas, kidneys and adrenals.

Impression:
Multiple bulky lymphadenopathies, R/O Lymphoma. (Image stage -----, if biopsy proved lymphoma.)
Lymphoma with relapse/ progression/ partial remission/ complete remission.
)
  Paste(MyForm)
Return

; Abd CTA - bleeding
::actcta::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: arterial and venous phases.

Previous abdominal CT: none.

FINDINGS:

No definite bleeder or contrast extravasation identified in this study.
No other apparent focal lesion noted at liver, spleen, pancreas and kidneys
The lower abdomen showed no significant unusual.
No evident bowel dilatation or wall thickening noted.
No intraabdominal lymphadenopathy noted.

IMPRESSION:
No active bleeder found.

SUGGESTION:

)
  Paste(MyForm)
Return

; Abd CT - Non-contrast
::actnc::
  MyForm =
(
METHOD:
Non-contrast enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.

Previous abdominal CT: none.

FINDINGS:


*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::actad::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 3-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actcrc::
  MyOrder := CopyOrder()
  MyForm =
(
PROCEDURE: Non-contrast and contrast-enhanced abdominal CT scans.
TECHNIQUE description:
   Scanning range: Liver to symphysis, 5-mm contiguous scan.
   Contrast medium: Yes, 100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Clinical indications: colorectal tumor staging.

Previous similar study reviewed/comparison: Yes. (<date>) | NONE

Findings:

Rectal tumor
Size: [  x  x  cm]

T-stage of the tumor
[T1 (tumor invades the submucosa]]
[T2 (tumor invades the muscularis propria]]
[T3 (tumor invades the perirectal fat]]
[T4a: Tumor penetrates to the surface of the visceral peritoneum]
[T4b: Tumor directly invades or is adherent to other organs or structures ]

Lymph nodes: [No enlarged nodes / number and size of the lymph nodes in the perirectal space as well as along the major pelvic vessels]
N0: No regional lymph node metastasis
N1a: Metastasis in 1 regional lymph node
N1b: Metastasis in 2-3 regional lymph nodes
N1c: Tumor deposit(s) in the subserosa, mesentery, or non-peritonealized pericolic or perirectal tissues without regional nodal metastasis
N2a: Metastasis in 4 to 6 regional lymph nodes
N2b: Metastasis in 7 or more regional lymph nodes

M1a: Metastasis confined to one organ or site (e.g., liver, lung, ovary, non-regional node).
M1b: Metastases in more than one organ/site or the peritoneum.

NOTE: in case of mucinous-type of rectal tumor the involved lymph nodes may
have fluid-like density.

Bony metastases: [None] visible / number and size of any bony metastases
No abnormal findings in the liver, GB, biliary system, pancreas, spleen, and both kidneys.
Under lung window, no definite pulmonary nodules detected from available images

IMPRESSION:
[Rectal /sigmoid ] colon carcinoma
Tentative image staging based on AJCC 7th edition, 2009: T N Mx
)
  Paste(MyForm)
Return

::acts::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Distended the stomach with water and scanned in prone position.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actgyn::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Oral contrast medium: Yes.
IV contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actpcu::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  Sex := StrSplit(tabIframe2.document.getElementById("tabPatient").children(0).children(0).children(0).children(0).innerText, "/")[2]
  SexOrganStr := (Sex = "M" ? "Prostate" : "Uterus") . ": Unremarkable."
  MyForm =
(
INDICATION: PCU

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial and portovenous phases.

Previous abdominal CT: none.

FINDINGS:
Liver: Unremarkable.
Spleen: Unremarkable.
Biliary tree: Unremarkable.
Pancreas: Unremarkable.
GI Tracts: Unremarkable.
Kidneys and ureters: Unremarkable.
Urinary Bladder: Unremarkable.
%SexOrganStr%
Lungs: Unremarkable.
Aorta & IVC: visualized portions appear normal.
Ancillary findings:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::act+l::
  MyForm =
(
METHOD:
Non-contrast and contrast-enhanced chest and abdominal CT scans.
Scanning range: Neck to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous CT: none.

FINDINGS:
- Lung nodule or mass: negative
- Lung parenchyma and airway: unremarkable
- Mediastinum: unremarkable
- Pleura: unremarkable
- Pericardium and heart: unremarkable
- Aorta and pulmonary artery: unremarkable

- Liver: unremarkable
- Spleen: unremarkable
- Biliary tree: unremarkable
- Pancreas: unremarkable
- GI Tracts: unremarkable
- Adrenals: unremarkable
- Kidneys and ureters: unremarkable
- Urinary Bladder: unremarkable

- Lymph node enlargement > 1 cm: No mediastinal, retroperitoneal, or mesenteric lymphadenopathy.

- Bony structure: unremarkable
)
  Paste(MyForm)
Return
