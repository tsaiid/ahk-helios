; Abdomen CT Forms

;; Hotstrings
::l-b-ok::The lungs covered in the scanning range are normal.{Enter}In bone window, the findings are unremarkable.
::l-ok::The lungs covered in the scanning range are unremarkable.
::l-ok1::No pulmonary nodule.
::b-ok::No osteolytic or osteoblastic lesion in the scanning range.
::btok::No biliary tree dilatation.
::actfl::Fatty liver without focal lesion.
::mactfl::Mild fatty liver without focal lesion.
::acthcs::Several hepatic cysts, size up to  cm.{Left 4}
::actgbs::A tiny gallbladder stone without obvious GB distention or wall thickening.
::actgbss::Several gallbladder stones without obvious GB distention or wall thickening.
::actgbsg::High-attenuation material in the gallbladder with layering, in favor of GB sludge.
::actgba::Hourglass configuration of the gallbladder, suggestive of segmental adenomyomatosis.
::actok::The liver, spleen, pancreas, adrenals, kidneys, and bowels are normal.
::actncok::The liver, spleen, pancreas, adrenals, kidneys, and bowels are normal. Due to non-contrast study, the evaluation of solid organs is limited.
::bpleat::Bilateral pleural effusion with atelectasis of lower lungs.
::actaps::A small wedge-shaped subcapsular enhancement at S_ of liver, in favor of AP shunting.
::acthh::A -cm nodule over S of liver, shows discontinuous, nodular, peripheral enhancement in arterial phase, and progressive peripheral enhancement with centripetal fill in in portal venous phase. Hepatic hemangioma is considered.
::actrn::A -cm nodule over S of liver, shows enhancement in arterial phase, and isodense in portal venous phase, in favor of regenerative nodule.
::acthcc::A -cm nodule over S of liver, shows arterial phase hyperenhancement, washout and enhancing capsule in portal venous phase, suggestive of hepatocellular carcinoma.
::actraa::A __-cm fat-containing enhanced nodular lesion at the right adrenal, in favor of adenoma.
::actlaa::A __-cm fat-containing enhanced nodular lesion at the left adrenal, in favor of adenoma.
::actckd::Atrophic change of bilateral kidneys, in favor of chronic kidney disease.
::actckd1::Atrophic change of bilateral kidneys with some renal cysts, in favor of chronic kidney disease.
::mactckd1::Mild atrophic change of bilateral kidneys with some renal cysts, in favor of chronic kidney disease.
::actrkaml::A __-cm fat-containing tumor at the right kidney, in favor of angiomyolipoma.
::actlkaml::A __-cm fat-containing tumor at the left kidney, in favor of angiomyolipoma.
::actbkaml::Fat-containing tumors at the both kidneys, size up to __ cm, in favor of angiomyolipomas.
::actns::No evidence of high-attenuation stone along the urinary tracts.
::actbph::Enlarged prostate is noted, most likely benign prostatic hyperplasia.
::actbph1::Prostate enlargement with intravesical protrusion.
::mactbph::Mild enlarged prostate is noted, most likely benign prostatic hyperplasia.
::aphe::arterial phase hyperenhancement
::actlok::No definite liver tumor. No abnormal enhanced parenchymal lesion.
::actthad::Areas of liver parenchymal enhancement visible only during the hepatic artery phase, suggestive of transient hepatic attenuation differences (THAD).
::mactfl::Diffusely mild decreased attenuation of the liver, suggestive of fatty liver.
::actc::Irregular surface of the liver with nodularities, indicating cirrhosis.
::mactc::Mild irregular surface of the liver with nodularities, suspicious mild cirrhosis.
::actcc::Wall thickening of the urinary bladder with trabeculation without perivesical fat stranding, suggestive of chronic cystitis.
::nifa::No evidence of intraperitoneal free air.
::actuf::A calcified nodule in the uterus, in favor of degenerated uterine fibroid.
::actufs::Several calcified nodules in the uterus, in favor of degenerated uterine fibroids.
::sph0::S/P hysterectomy.
::actncl::*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
::lthrl::s/p left total hip replacement. The evaluation of pelvic cavity may be limited due to its beam hardening artifacts.
::rthrl::s/p right total hip replacement. The evaluation of pelvic cavity may be limited due to its beam hardening artifacts.
::bthrl::s/p bilateral total hip replacements. The evaluation of pelvic cavity may be limited due to its beam hardening artifacts.
::actaccll::Mild gallbladder wall thickening without GB distention or pericholecystic fat stranding. Acute cholecystitis is less likely.
::actclc::Mild subpleural reticulation and interlobular septal thickening over bilateral lower lungs, in favor of chronic inflammatory change.
::hvpvok::The major hepatic and portal veins are patent.
::livok::No abnormal enhanced lesion or washout pattern noted.
::sacds::Small amount of ascites in the Cul-de-sac.
::macds::Minimal amount of ascites in the Cul-de-sac.
::wtsme::wall thickening and submucosal edema
::pcfs::pericholecystic fat stranding
::lkuok::The left kidney and ureter are unremarkable.
::rkuok::The right kidney and ureter are unremarkable.
::appok::the appendix is normal.
::ntabdi::No evident traumatic intraabdominal injury.
::ntthoi::No evident traumatic intrathoracic injury.
::naabdf::No evident acute intraabdominal finding.
::nathof::No evident acute intrathoracic finding.
::nacraf::No evident acute intracranial finding.

;; forms
::act::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

)
  Paste(MyForm)
Return

::actsr::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Liver: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable

GI tract: Unremarkable

Adrenals: Unremarkable
Kidneys and ureters: Unremarkable
Urinary bladder: Unremarkable
Prostate: Unremarkable
GYN organ: Unremarkable

No evident retroperitoneal lymphadenopathy identified.
No evidence of intraperitoneal free air.
No obvious ascites.

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::actncsr::
  MyForm =
(
TECHNIQUE:
Non-contrast abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.

Previous abdominal CT: none.

FINDINGS:
Adrenals: Unremarkable
Liver: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable
GI tract: Unremarkable
Kidneys and ureters: Unremarkable
Urinary bladder: Unremarkable

No evident retroperitoneal or mesenteric lymphadenopathy identified.
No evidence of intraperitoneal free air.
No obvious ascites.

Lower lungs: Unremarkable

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::actok1::
  MyForm =
(
The liver, gallbladder, spleen, pancreas, adrenals, kidneys, and bowels are unremarkable.
The lower abdomen and pelvis are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
Return

::actok2::
  MyForm =
(
No evidence of intraperitoneal free air.
No obvious ascites.
)
  Paste(MyForm)
Return

::actlapok::
  MyForm =
(
No retroperitoneal or mesenteric lymphadenopathy.
No pelvic, retroperitoneal or mesenteric lymphadenopathy.
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
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
A swollen appendix, diameter about 1.1 cm, containing some appendicoliths, with mesoappendiceal fat stranding, c/w acute appendicitis.
A dilated appendix, diameter about 0.9 cm, with mild hyperemic change. Although no mesoappendiceal fat stranding is noted, early change of acute appendicitis is still suspected. Suggest clinical correlation.

Small amount of ascites in the recto-vesical pouch.
Small amount of ascites in the cul-de-sac.
No obvious ascites is noted.
No evidence of intraperitoneal free air.

The liver, spleen, pancreas, adrenals, and kidneys are normal.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
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
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
The appendix is swollen, with severe mesoappendiceal fatty stranding. Its mucosa is discontinuous and some adjacent fluid collections are noted. These findings are suggestive of acute appendicitis with rupture.

The appendix is swollen, diameter about 1.2 cm, containing an appendicolith near the orifice, with severe mesoappendiceal fatty stranding.
Its mucosa is discontinuous and small adjacent fluid collections are noted. These findings are suggestive of acute appendicitis with rupture.
Small amount of turbid ascites in the rectovesical pouch is noted.

The liver, spleen, pancreas, adrenals, and kidneys are normal.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W acute appendicitis with rupture.
)
  Paste(MyForm)
Return

::actppu::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Presence of intraperitoneal free air with turbid ascites, predominantly at the upper abdomen, suggestive of hollow organ perforation.
Abnormal wall thickness over the duodenal bulb region with loss of wall integrity. Perforated peptic ulcer is suspected.

The liver, spleen, pancreas, adrenals, kidneys, and bowels are unremarkable.
The lower abdomen and pelvis are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Hollow organ perforation, suspicious perforated peptic ulcer.
)
  Paste(MyForm)
Return

::actdiv::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: lower abdomen to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
- Mild wall thickening and submucosal edema over the ascending colon, with mesocolic fat stranding, most likely diverticulitis.
- Small amount of ascites in the pelvis and right paracolic gutter.
- No obvious ascites.
- No evidence of intraperitoneal free air.

- The appendix is normal.

- The visible liver, spleen, pancreas, kidneys are unremarkable.
- No retroperitoneal or mesenteric lymphadenopathy.
- The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Ascending colon diverticulitis, without rupture.
)
  Paste(MyForm)
Return

::actdivr::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: lower abdomen to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
- Several small diverticula noted over the ascending and sigmoid colon.
- Wall thickening and edema over the ascending colon, with pericolic fat stranding, most likely diverticulitis.
- Small extraluminal free air is noted nearby, suggestive of perforation.
- Several regional reactive lymph nodes.
- Small amount of ascites in the right paracolic gutter.

- Wall thickening and edema over the sigmoid colon, with pericolic fat stranding, most likely diverticulitis.
- Extraluminal free air and fluid collection are noted nearby, suggestive of perforation with abscess formation.
- Small amount of ascites in the rectovesical pouch.


- The appendix is normal.

- Several small hepatic and renal cysts.
- Mild fatty liver.
- The gallbladder, spleen, pancreas, adrenals, kidneys are unremarkable.
- The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Ascending colon acute diverticulitis, with perforation.
Sigmoid colon acute diverticulitis, with perforation and abscess formation.
)
  Paste(MyForm)
Return

;; Epiploic appendagitis
::actea::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
A small fat-density ovoid structure adjacent to the descending colon (Se/Im: 4/55, 6/23), with a thin high-density rim, surrounding inflammatory fat stranding, and thickening of the adjacent peritoneum. The adjacent colonic wall thickening is minimal and the amount of fat inflammation is out of proportional to colonic wall thickening. Epiploic appendagitis is more favored than diverticulitis.

The appendix is normal.
No evidence of intraperitoneal free air.
No obvious ascites.

The liver, gallbladder, spleen, pancreas, adrenals, and kidneys are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Epiploic appendagitis at the descending colon.
)
  Paste(MyForm)
Return

;; Adrenal form
::actad::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Diaphragm to kidney, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with early arterial and delayed phases.

Previous abdominal CT: none.

FINDINGS:
Adrenals: Unremarkable
Kidneys and ureters: Unremarkable.

Liver: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable

No evident upper abdominal retroperitoneal lymphadenopathy identified.

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::actliv::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Diaphragm to kidney, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with arterial and portal venous phases.

Previous abdominal CT: none.

FINDINGS:
Liver:
cirrhotic change: nil, portosystemic collaterals (-)
vessel invasion: Nil
The major portal and hepatic veins are patent.

Extrahepatic spread: No.
Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Adrenals: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable

Kidneys and ureters: Unremarkable.

No evident upper abdominal retroperitoneal lymphadenopathy identified.

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::actlivf::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with arterial, portal venous, and equilibrium phases.

Previous abdominal CT: none.

FINDINGS:


)
  Paste(MyForm)
Return

;; Infiltrative HCC
;;; 1011800
::actlivihcc::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Diaphragm to kidney, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with arterial and portal venous phases.

Previous abdominal CT: none.

FINDINGS:
Liver:
- Cirrhotic change: yes; portosystemic collaterals: yes
- Large ill-defined infiltrative tumor involving the S1-2-3-4-5-8 of the liver.
- Tumor thrombosis in the engorged left and main portal veins, which nearly cross to the right portal vein. Some blood clots at the proximal part of main portal vein.
- The arterial and portal venous phases show heterogeneous nodular and linear hypo-enhancement pattern in the main tumor, while the tumor thrombi show heterogeneous arterial phase hyper-enhancement.
> Infiltrative HCC is considered.

Adrenals: Unremarkable
Spleen: splenomegaly
Biliary tree: gallbladder stone; No biliary tree dilatation.
Pancreas: Unremarkable
Kidneys and ureters: Unremarkable.

Massive ascites.
The bowels show diffuse wall edema, probably portal hypertensive enteropathy.
No evident upper abdominal retroperitoneal lymphadenopathy identified.

Lower lungs: Unremarkable

====
1. Infiltrative HCC, left lobe and partial right lobe, with portal vein tumor thrombosis.
2. Cirrhosis, portal hypertension.
)
  Paste(MyForm)
Return


::actpan::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Diaphragm to kidney, 3-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 30 and 80 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Pancreas: Unremarkable

Liver: Unremarkable
Biliary tree: Unremarkable
Spleen: Unremarkable

Adrenals: Unremarkable
Kidneys and ureters: Unremarkable.

No evident upper abdominal retroperitoneal lymphadenopathy identified.

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::actctsi::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Pancreas:
- Intrinsic pancreatic edematous change without necrosis.
- Several acute necrotic collections.
- Several peripancreatic fluid collections, and inflammatory changes in peripancreatic fat.
- Small filling defects in the portal vein, suspicious thrombophlebitis.
- The peripancreatic fat is relatively normal.
- No peripancreatic fluid accumulation.
- The pancreatic duct is dilated.
- The pancreatic duct is normal.

* Modified CTSI score:
- Pancreatic inflammation
  > 0: normal pancreas
  > 2: intrinsic pancreatic abnormalities with or without inflammatory changes in peripancreatic fat
  > 4: pancreatic or peripancreatic fluid collection or peripancreatic fat necrosis
- Pancreatic necrosis
  > 0: none
  > 2: 30`% or less
  > 4: more than 30`%
- Extrapancreatic complications
  > 0: none
  > 2: one or more of pleural effusion, ascites, vascular complications, parenchymal complications and/or gastrointestinal involvement

Biliary tree:
- No evidence of high-attenuation gallstone.
- Several small high-attenuation gallstones at the distal CBD.
- No biliary tree dilatation.
- Dilatation of the CBD (diameter about 1.4 cm) and bilateral IHDs.
- S/P cholecystectomy.
- Several small gallbladder stones, and the GB is distended.
- Relatively high-attenuation gallbladder content, suggestive of GB sludge.
- No GB wall thickening.

Adrenals: Unremarkable
Liver: Unremarkable
Spleen: Unremarkable
Kidneys and ureters: Unremarkable
Urinary bladder: Unremarkable
GI tract: Unremarkable

No retroperitoneal or mesenteric lymphadenopathy.
No pelvic, retroperitoneal or mesenteric lymphadenopathy.

Lower lungs: Unremarkable
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Acute pancreatitis. Modified CTSI score:
)
  Paste(MyForm)
Return

::acttcc::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 3-mm contiguous scan. Coronal reconstruction.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds and 30 minutes scanning delay.

Previous abdominal CT: none.

FINDINGS:
Kidneys and Ureters:
Kidneys: Unremarkable
Ureters: Unremarkable
Urinary bladder: Unremarkable (* insufficient distention may limit the evaluation)

Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Adrenals: Unremarkable
Liver: Unremarkable
Biliary tree: Unremarkable
Spleen: Unremarkable
Pancreas: Unremarkable

No retroperitoneal or mesenteric lymphadenopathy.
No pelvic, retroperitoneal or mesenteric lymphadenopathy.

Lower lungs: Unremarkable
Skeleton: No osteolytic nor osteoblastic lesion
)
  Paste(MyForm)
Return

::actrcc::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan. Coronal reconstruction.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 30 and 120 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Kidneys: Unremarkable
Ureters: Unremarkable
Urinary bladder: Unremarkable

Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Adrenals: Unremarkable
Liver: Unremarkable
Biliary tree: Unremarkable
Spleen: Unremarkable
Pancreas: Unremarkable

Lower lungs: Unremarkable
Skeleton: No osteolytic nor osteoblastic lesion
)
  Paste(MyForm)
Return

::actgyn::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Uterus: Unremarkable
Ovaries: Unremarkable

Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Kidneys: Unremarkable
Ureters: Unremarkable
Urinary bladder: Unremarkable

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
Contrast medium administered: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

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
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CTA scans.
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
TECHNIQUE:
Non-contrast enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan, coronal reconstruction.

Previous abdominal CT: none.

FINDINGS:


*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::actnck::
  MyForm =
(
TECHNIQUE:
Non-contrast enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 3-mm contiguous scan.

Previous abdominal CT: none.

FINDINGS:
Kidneys and Ureters:
Kidneys: No hydronephrosis.
Ureters: No definite stone-like radiopacity along the urinary tract. No hydroureter.
Urinary bladder: Unremarkable (* insufficient distention may limit the evaluation)
Urinary bladder: Unremarkable

No evident pelvic, retroperitoneal, or mesenteric lymphadenopathy identified.

Adrenals: Unremarkable
Liver: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable
GI tract: Unremarkable

Lower lungs: Unremarkable

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::actnc+l::
  MyForm =
(
TECHNIQUE:
Non-contrast enhanced chest and abdominal CT scans.
Scanning range: Neck to symphysis, 5-mm contiguous scan, coronal reconstruction.

Previous CT: none.

FINDINGS:
- Lung parenchyma: unremarkable
- Airway: unremarkable
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

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
No remarkable acute intrathoracic or intraabdominal findings.
)
  Paste(MyForm)
Return

::actk::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Kidneys and ureters: Unremarkable
Urinary bladder: Unremarkable (* insufficient distention may limit the evaluation)

No evident pelvic, retroperitoneal, or mesenteric lymphadenopathy identified.

Adrenals: Unremarkable
Liver: Unremarkable
Spleen: Unremarkable
Biliary tree: Unremarkable
Pancreas: Unremarkable
GI tract: Unremarkable

Lower lungs: Unremarkable
)
  Paste(MyForm)
Return

::actcrcs::
  MyForm =
(
PROCEDURE: Non-contrast and contrast-enhanced abdominal CT scans.
TECHNIQUE description:
   Scanning range: Liver to symphysis, 5-mm contiguous scan. Supine and prone positions.
   Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous similar study reviewed/comparison: NONE

FINDINGS:
Rectal tumor
Colon tumor
- Location:
- Length:
- Maximal thickness:

T-stage of the tumor
- Tumor invades the submucosa [T1]
- Tumor invades the muscularis propria [T2]
- Tumor invades the perirectal fat [T3]
- Tumor penetrates to the surface of the visceral peritoneum [T4a]
- Tumor directly invades or is adherent to other organs or structures [T4b]

Lymph nodes:
- One enlarged lymph node at the pericolic region (Se/Im: 3/24).
- No pericolic lymphadenopathy [N0].
- No retroperitoneal or mesenteric root lymphadenopathy.

Lymph nodes: [No enlarged nodes / number and size of the lymph nodes in the perirectal space as well as along the major pelvic vessels]
N0: No regional lymph node metastasis
N1a: Metastasis in 1 regional lymph node
N1b: Metastasis in 2-3 regional lymph nodes
N1c: Tumor deposit(s) in the subserosa, mesentery, or non-peritonealized pericolic or perirectal tissues without regional nodal metastasis
N2a: Metastasis in 4 to 6 regional lymph nodes
N2b: Metastasis in 7 or more regional lymph nodes

Liver: unremarkable
Adrenals: unremarkable
Kidneys: unremarkable
Spleen: unremarkable
Pancreas: unremarkable

Lower lungs: no definite pulmonary nodules detected from available images
Bony metastases: None in the scanning range.

M0: No distant metastasis (in this study).
M1a: Metastasis confined to one site or organ is identified without peritoneal metastasis.
M1b: Metastases to two or more site or organ is identified without peritoneal metastasis.
M1c: Metastases to the peritoneal surface is identified alone or with other site or organ metastasis.

NOTE: in case of mucinous-type of rectal tumor the involved lymph nodes may have fluid-like density.

No abnormal findings in the liver, GB, biliary system, pancreas, spleen, and both kidneys.
Under lung window, no definite pulmonary nodules detected from available images
)
  Paste(MyForm)
Return

::actcrcs+l::
  MyForm =
(
PROCEDURE: Non-contrast and contrast-enhanced chest and abdominal CT scans.
TECHNIQUE description:
   Scanning range: Neck to symphysis, 5-mm contiguous scan. Supine and prone positions.
   Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous similar study reviewed/comparison: NONE

FINDINGS:
Rectal tumor
- Location: rectosigmoid junction, 4.5 cm above the anal verge.
- Length: 5.5 cm
- Maximal thickness: 1.6 cm
- Mild perirectal fat stranding, suggestive of tumor invasion.
- The presacral space and the fat plane to the uterus are preserved.

T-stage of the tumor
[T1 (tumor invades the submucosa]]
[T2 (tumor invades the muscularis propria]]
[T3 (tumor invades the perirectal fat]]
[T4a: Tumor penetrates to the surface of the visceral peritoneum]
[T4b: Tumor directly invades or is adherent to other organs or structures ]

Lymph nodes:
- No bulky perirectal, pelvic, retroperitoneal or mesenteric root lymphadenopathy.

Lymph nodes: [No enlarged nodes / number and size of the lymph nodes in the perirectal space as well as along the major pelvic vessels]
N0: No regional lymph node metastasis
N1a: Metastasis in 1 regional lymph node
N1b: Metastasis in 2-3 regional lymph nodes
N1c: Tumor deposit(s) in the subserosa, mesentery, or non-peritonealized pericolic or perirectal tissues without regional nodal metastasis
N2a: Metastasis in 4 to 6 regional lymph nodes
N2b: Metastasis in 7 or more regional lymph nodes

Others:
- Liver: mild fatty liver without focal lesion.
- Adrenals: unremarkable
- Kidneys: unremarkable
- Spleen: unremarkable
- Pancreas: unremarkable

- Lungs:
  > Some tiny subpleural nodules over bilateral lungs, with adjacent interlobular septal thickening, probably chronic inflammatory change. However, lung metastasis cannot be totally excluded. Suggest follow-up.
  > Mild ill-defined ground glass opacities over RML and left lingular lobe, probably insufficient inspiration related change. (Scanning in prone position.)
- Cardiomegaly; mild LV hypertrophy.
- Mediastinum: A few slightly enlarged lymph nodes with coarse calcifications, in favor of chronic inflammatory change.
- Great vessels:
  > Atherosclerotic change and calcification of aortic wall.
  > Engorged pulmonary trunk, with larger diameter (3.5 cm) than the ascending aorta. Pulmonary hypertension may be suspected.

- Musculoskeletal:
  > Scoliosis and DJD change of L-spine.
  > No focal nodular osteolytic or osteoblastic lesion.

M0: No distant metastasis (in this study).
M1a: Metastasis confined to one site or organ is identified without peritoneal metastasis.
M1b: Metastases to two or more site or organ is identified without peritoneal metastasis.
M1c: Metastases to the peritoneal surface is identified alone or with other site or organ metastasis.

NOTE: in case of mucinous-type of rectal tumor the involved lymph nodes may have fluid-like density.
)
  Paste(MyForm)
Return


::acts::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Distended the stomach with water and scanned in prone position.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

)
  Paste(MyForm)
Return

::actgcs::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan. Prone and supine.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Enhanced mass lesion at the pyloric ring, causing gastric outlet obstruction and distended stomach with much residual food material. Gastric cancer is suspected. The tumor seems invade to the serosa [T4a].

Numerous enlarged lymph nodes at the suprapyloric (5), infrapyloric (6), left gastric (7), common hepatic (8), celiac (9), retropancreatic (13), mesenteric root (14) stations, suggestive of regional metastatic lymphadenopathy. [N3b]

1	right cardiac
2	left cardiac
3	lesser curvature
4	greater curvature
5	suprapyloric
6	infrapyloric
7	left gastric artery
8	common hepatic artery
9	coeliac axis
10	splenic hilus
11	splenic artery
12	hepatoduodenal ligament
13	the posterior aspect of the pancreas head
14	root of the mesenterium
15	mesocolon of the transverse colon
16	para-aortic lymph

Multiple enlarged lymph nodes at the paraaortic region, down to bifurcation level, suggestive of distant metastatic lymphadenopathy. [M1]
No evidence of liver or adrenal metastasis.
No evidence of lung and bone metastasis in the scanning range.

A small hypo-enhanced  nodular lesion at the lower portion of the spleen, probably lymphangioma or hemangioma. DDx: metastasis.
A relatively hypo-enhanced tubular lesion near the T9 right neuroforamen, probably neurogenic tumor. DDx: metastatic lymphadenopathy.

The gallbladder, pancreas, kidneys, and urinary bladder are unremarkable.
No evidence of intraperitoneal free air.
No obvious ascites.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Gastric cancer, prepyloric antrum, with regional lymphadenopathy, causing gastric outlet obstruction.
)
  Paste(MyForm)
Return

::actgyn::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Oral contrast medium: Yes.
IV contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

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

TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with arterial and portal venous phases.

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
TECHNIQUE:
Non-contrast and contrast-enhanced chest and abdominal CT scans.
Scanning range: Neck to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous CT: none.

FINDINGS:
- Lung: negative
- Airway: unremarkable
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

No evidence of intraperitoneal free air.
No obvious ascites.

- Lymph node enlargement > 1 cm: No mediastinal, retroperitoneal, or mesenteric lymphadenopathy.

- Bony structure: unremarkable
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
No remarkable acute intrathoracic or intraabdominal findings.
)
  Paste(MyForm)
Return

::actacc::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Diffuse gallbladder wall thickening and edematous change with gallbladder stones, GB distention, and pericholecystic fat stranding are noted. Acute cholecystitis is considered.
Diffuse gallbladder wall thickening and edematous change with gallbladder stones and GB distention are noted. Acute cholecystitis is considered.
Diffuse gallbladder wall thickening and edematous change with pericholecystic fluid accumulation, and tiny gallbladder stones are noted. Even though, no obvious GB distention. Acute cholecystitis is still considered.
Presence of a high-attenuation gallstone at the orifice of cystic duct, with distended gallbladder, diffuse gallbladder wall thickening and edematous change, c/w acute calculus cholecystitis.
Mildly distended gallbladder, with mild GB wall thickening. No obvious pericholecystic fluid accumulation. However, early change of acute cholecystitis cannot be excluded. Suggest correlate with sonography and Murphy sign.

Several gallbladder stones and mild GB distention. However, no obvious GB wall thickening or pericholecystic fat stranding. Acute cholecystitis may be less likely. Suggest clinical and sonographic correlation.

No CBD or IHD dilatation.

The liver, spleen, pancreas, adrenals, kidneys, and bowels are unremarkable.
The lower abdomen and pelvis are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W acute cholecystitis.
C/W acute calculus cholecystitis.
Early change of acute cholecystitis is suspected. Suggest correlate with sonography and Murphy sign.
)
  Paste(MyForm)
Return

::actsc::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Large inspissated fecal material in the rectum and distal sigmoid colon, with bowel wall edema and perirectal fat stranding. Stercoral colitis is considered.
No evidence of intraperitoneal free air.
No obvious ascites.

s/p Foley catheterization. The urinary bladder is not distended enough, and the evaluation is limited.

On NG tube.
The liver, spleen, pancreas, adrenals, kidneys are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
Subsegmental atelectasis over bilateral lower lungs.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Stercoral colitis. No evidence of perforation.
)
  Paste(MyForm)
Return

; Ischemic colitis
::actic::
  MyForm =
(
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Wall thickening, submucosal edema, and mild pericolic fat stranding, involving the whole ascending and transverse colon, suggestive of colitis.
A clear cut transition level near the splenic flexure (boundary of SMA territory). Ischemic colitis is suspected. DDx: inflammatory bowel disease.

The appendix is normal.
No evidence of intraperitoneal free air.
No obvious ascites.

The liver, spleen, pancreas, adrenals, kidneys are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
1. Colitis, whole ascending and transverse colon. Ischemic colitis is suspected. DDx: inflammatory bowel disease.
2. No evidence of hollow organ perforation.
)
  Paste(MyForm)
Return

; Portal hypertensive enteropathy
::actphtn::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Irregular surface of the liver with nodularities, indicating liver cirrhosis.
Splenomegaly.
Mild to moderate ascites, relatively not so exudative.
Portal hypertension is suspected.

Diffuse submucosal edema and mucosal hyperemic change, from stomach, small intestine, colon, to the rectum.
The major mesenteric vessels are patent, without filling defect.
DDx: Portal hypertensive gastropathy / enteropathy / colopathy, acute gastroenterocolitis, pseudomembranous colitis (may not involve stomach and small intestine). Suggest clinical correlation.

A few tiny gallbladder stones.
Mild GB wall edema is noted, without GB distention, probably also secondary to the portal hypertension.

The adrenals and kidneys are unremarkable.
s/p Foley catheterization.
Two thin-wall cystic lesions at the bilateral adnexa, size up to 6.5 cm. No mural nodule or thickened internal septum noted.

Subsegmental atelectasis over bilateral lower lungs.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
1. Diffuse edematous change of the GI tract. DDx: Portal hypertensive gastropathy / enteropathy / colopathy, acute gastroenterocolitis, pseudomembranous colitis (may not involve stomach and small intestine). Suggest clinical correlation.
2. Cirrhosis, splenomegaly, ascites. Suspicious portal hypertension.
)
  Paste(MyForm)
Return

; Small bowel obstruction
::actsbo::
  MyForm =
(
TECHNIQUE:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 70 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:
Dilated small bowel loops with small bowel feces sign, suggestive of bowel obstruction, with a transitional zone at the distal ileum (Se/Im: 4/72, 6/28), and collapse of its distal portion and the colon. Probably due to ileus. No mass like lesion is noted.

Small ascites in the pelvic cavity.
No evidence of bowel ischemia.
No intraperitoneal free air.

The liver, gallbladder, spleen, pancreas, adrenals, and kidneys are unremarkable.
No retroperitoneal or mesenteric lymphadenopathy.
The lungs covered in the scanning range are unremarkable.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Small bowel obstruction, at distal ileum, probably due to adhesion. No evident bowel perforation or ischemia.
)
  Paste(MyForm)
Return