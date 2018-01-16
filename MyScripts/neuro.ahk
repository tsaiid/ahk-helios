; My Neuro Forms

;; Templates
#Include MyScripts\neuro-lai.ahk

;; Hotstrings
::ath::Atherosclerotic change with calcification of intracranial portion of vertebrobasilar arteries and bilateral internal carotid arteries.
::athc::Atherosclerotic change with calcification of intracranial portion of bilateral internal carotid arteries.
::athv::Atherosclerotic change with calcification of intracranial portion of vertebrobasilar arteries.
::sae::Presence of bilateral periventricular low density noted. Subcortical arteriosclerotic encephalopathy considered.
::msae::Presence of mild bilateral periventricular low density noted. Mild subcortical arteriosclerotic encephalopathy considered.
::sae2::Presence of mild/moderate/severe confluent symmetric periventricular hyperintensity on T2WI and FLAIR noted, the subcortical arteriosclerotic encephalopathy considered.
::ubo::Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.
::ubo2::Leukoaraiosis (some tiny/small hyperintensities on T2WI and FLAIR image in the periventricular and subcortical white matter regions) are mostly due to aging process and/or small vessel ischemic disease.
:c:imp::As the above descriptions.
:c:imp2::Others as above descriptions.
::ifch::from the imaging findings and clinical history, `
::mrmast::Increased signal intensity over -------------, mastoid air sinus on T2WI, in favor of mastoiditis or fluid collection in the mastoid.
::ctmast::Presecne of soft tissue density over ---- mastoid air sinus, R/O mastoiditis or fluid collection in the mastoid.
::ctatr::Diffuse atrophy of bilateral cerebral hemispheres, with compensatory dilatation of bilateral lateral ventricles, deepening and widening of cortical sulci.
::ctatr1::Mild dilatation of ventricular system and sulcal widening of bil. cerebral hemispheres noted, in favor of mild brain atrophy.
::mratr::Mild dilatation of intraventricular system with widening of subarachnoid space of bilateral cerebral hemispheres, in favor of aging process and mild brain atrophy.
::ctpbi::Presence of ---------tiny/small low density involved right/left/bilateral basal ganglion, right/left/bilateral thalamus, and right/left/bilateral periventricular white matter, previous brain ischemic insult, such as old tiny ischemic infarction considered.
::cteps::Small low density near right/left side of anterior commissure, in favor of enlarged perivascular space.
::necsprt::Diffuse thickening and enhancement over the epiglottis, arytenoepiglottic folds, and posterior pharyngeal wall over the oropharynx and hypopharynx, c/w post-radiation change.
::mrns::No evidence of high signal intensity on DWI and lower apparent diffusion coefficient suggesting acute ischemia infarction in the brain and brainstem noted.
::noaa::No evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.

::ctps::
  MyForm =
(
Presence of mild mucoperiosteal thickening and soft tissue density in the bilateral frontal sinuses, bilateral ethmoid sinuses, bilateral maxillary sinuses, and bilateral sphenoid sinuses, in favor of mild sinusitis.
)
  Paste(MyForm)
Return

::mrps::
  MyForm =
(
Presence of hyperintensity on T2WI over right/left/bilateral sphenoid sinus, right/left/bilateral ethmoid sinus, right/left/bilateral maxillary sinus, right/left/bilateral frontal sinus, in favor of mild sinusitis. Suggest clinical check up.
)
  Paste(MyForm)
Return

::bctaok::
  MyForm =
(
CTA shows:
- no evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.
- long segment hypoplasia of left vertebral artery with right dominance, probably normal variant.
- no evidence of right vertebral artery dissection.
- no evidence of beaded appearance in the circle of Willis that suggestive of reversible cerebral vasoconstriction syndrome.
- no obvious stenosis of the extracranial carotid arteries.
)
  Paste(MyForm)
Return

::mraok::
  MyForm =
(
MRA shows no evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.

MRA shows no evidence of occlusion or high grade stenosis over intracranial portion of the internal carotid artery and basilar artery, and main trunk of the bilateral anterior cerebral arteries and middle cerebral arteries.
)
  Paste(MyForm)
Return

::ctp1::
  MyForm =
(
Noncontrast CT of the paranasal sinuses was performed with a multi-slice CT scanner:
SCAN RANGE: axial plane of the paranasal sinuses with 3 mm continuous scan, with coronal and sagittal reconstruction

PREVIOUS CT SCAN of the paranasal sinuses: no

FINDINGS:
Mild mucoperiosteal thickening and soft tissue density in the bilateral frontal sinuses, bilateral ethmoid sinuses, bilateral maxillary sinuses, and bilateral sphenoid sinuses, in favor of mild sinusitis.
Mild nasal septum deviation to left side.
The bony structure is unremarkable.
The mastoid air cells are well-aerated.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
C/W chronic paranasal sinusitis, most severe at left maxillary.
)
  Paste(MyForm)
Return