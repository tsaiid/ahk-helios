; For CXR
;; Protocol
::/c::PA view of the Chest:{Enter 2}
::/cl::PA and Lat views of the Chest:{Enter 2}
::/ca::AP view of the Chest:{Enter 2}

::nall::No active lung lesion.
::ncm::No cardiomegaly.
::bcm::Borderline cardiomegaly.
::bcms::Borderline enlarged cardiac shadow, possibly supine position related.
::cm::cardiomegaly.
::cm1::enlarged cardiac shadow.
::np::No abnormal patch opacity in lung fields.
::nn::No nodular opacities (> 1cm) noted over bilateral lung fields.
::0::No previous film for comparison.

::1::
  MyForm =
(
No abnormal patch opacity in the lung fields.
No cardiomegaly.

)
  MyForm =
(
The heart size is normal.
No specific finding in the bilateral lung fields.
Bilateral CP angles are clear and sharp.
The thoracic cage and bones are generally intact.

)

  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
No active lung lesion.

)
  MyForm =
(
Both lungs are unremarkable.

)
  Paste(MyForm)
Return

::ii1::
  MyForm =
(
Slightly enlarged cardiac shadow.
Exaggerated lung markings at bilateral lowers, may be due to insufficient inspiration. Suggest clinical correlation.

)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Insufficient inspiration related findings.

)
  Paste(MyForm)
Return

::ii2::
  MyForm =
(
Slightly enlarged cardiac shadow.
Exaggerated lung markings at bilateral lowers, may be due to insufficient inspiration and/or supine. Suggest clinical correlation.

)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
Insufficient inspiration and/or supine related findings.

)
  Paste(MyForm)
Return

::2::Increased linear opacity over bilateral lower lungs, in favor of chronic inflammatory change. {Enter}No cardiomegaly.{Tab}No active lung lesion.
::3::No abnormal patch opacity in lung fields.{Enter}No cardiomegaly.{Enter}The bowel gas pattern is normal.{Tab}Normal.
::4::Increased linear opacity and peribronchial thickening over bilateral lung fields, r/o bronchiolitis.{Enter}No cardiomegaly.{Tab}Suspicious bronchiolitis.
::clnic::The condition of lung shows no obvious change as compared with previous study.
::clat::Suggest correlation with lateral view.
::ett::On endotracheal tube with tip at proper location.
::ett-c::On endotracheal tube. The tip is near the carina. Suggest adjusting the depth.
::ett-b::On endotracheal tube. The tip is in right main bronchus. Suggest adjusting the depth.
::ett-t::On endotracheal tube. The tip is in the upper trachea. Suggest adjusting the depth.
::tr::On tracheostomy tube.
::ng::On NG tube.
::og::On NG/OG tube.
::vps::s/p VP shunting.
::rpig::s/p right chest pigtail drainage.
::rpig1::s/p right chest pigtail drainage, with decreased pleural effusion.
::lpig::s/p left chest pigtail drainage.
::lpig1::s/p left chest pigtail drainage, with decreased pleural effusion.
::bpig::s/p bilateral chest pigtail drainage.
::bpig1::s/p bilateral chest pigtail drainage, with decreased pleural effusion.
::elm::Exaggerated lung markings.
::selm::Slightly exaggerated lung markings.
::lop0::s/p instrument fixation of L-spine.
::lple::Left costophrenic angle blunting, suspect pleural effusion or changes.
::lple1::Left costophrenic angle blunting and diffuse ground glass opacity in left lung, suspect pleural effusion.
::rple::Right costophrenic angle blunting, suspect pleural effusion or changes.
::rple1::Right costophrenic angle blunting and diffuse ground glass opacity in right lung, suspect pleural effusion.
::bple::Bilateral costophrenic angles blunting, suspect pleural effusion or changes.
::bple0::Bilateral costophrenic angles blunting, suspect pleural effusion.
::bple1::Bilateral costophrenic angles blunting and diffuse ground glass opacity in both lungs, suspect pleural effusion.
::spster::Post median sternotomy with wire fixation.
::spster1::Post median sternotomy with wire fixation. Several drains in the thorax.
::spc::Surgical clips at RUQ of abdomen, in favor of post cholecystectomy.
::spc0::S/P cholecystectomy.
::spc1::S/P cholecystectomy, with mild secondary dilatation of the biliary tract.
::sph0::S/P hysterectomy.
::sptae::Lipiodol retention in the liver, probably due to previous TACE.
::p/tae::Lipiodol retention in liver.
::ricvp::On central venous catheter via right internal jugular vein with tip at superior vena cava.
::licvp::On central venous catheter via left internal jugular vein with tip at superior vena cava.
::bicvp::On central venous catheters via right and left internal jugular veins with tips at superior vena cava.
::rscvp::On central venous catheter via right subclavian vein with tip at superior vena cava.
::lscvp::On central venous catheter via left subclavian vein with tip at superior vena cava.
::ridl::On double lumen catheter via right internal jugular vein.
::lidl::On double lumen catheter via left internal jugular vein.
::rsdl::On double lumen catheter via right subclavian vein.
::lsdl::On double lumen catheter via left subclavian vein.
::sppok::s/p Port-A implantation, without immediate complication.
::rport::On Port-A catheter via right subclavian vein.
::rport1::On Port-A catheter via right subclavian vein.{ENTER}No pneumothorax is noted.
::riport::On Port-A catheter via right internal jugular vein.
::lport::On Port-A catheter via left subclavian vein.
::lport1::On Port-A catheter via left subclavian vein.{ENTER}No pneumothorax is noted.
::liport::On Port-A catheter via left internal jugular vein.
::rsperm::On Permcath via right subclavian vein.
::lsperm::On Permcath catheter via left subclavian vein.
::riperm::On Permcath catheter via right internal jugular vein.
::liperm::On Permcath catheter via left internal jugular vein.
::rpicc::On PICC via right arm.
::lpicc::On PICC via left arm.
::rppm::s/p PPM implantation at right upper chest with lead tips at RA and RV.
::rsppm::s/p PPM implantation at right upper chest with lead tip RV.
::lppm::s/p PPM implantation at left upper chest with lead tips at RA and RV.
::lsppm::s/p PPM implantation at left upper chest with lead tip RV.
::ile::Insufficient inspiration crowds lung markings.
::pe::Increased vascular markings and ill-defined vascular contours indicating pulmonary edema.
::mpe::Mildly increased vascular markings and ill-defined vascular contours indicating mild pulmonary edema.
::pe0::pulmonary edema
::mpe0::mild pulmonary edema
::clc::Increased linear opacity over bilateral lower lungs, in favor of chronic inflammatory change.
::lla::Linear atelectasis of left lower lung.
::rla::Linear atelectasis of right lower lung.
::bla::Linear atelectasis of bilateral lower lungs.
::plef::pleural effusion
::inef::interlobar effusion
::pcef::pericardial effusion
::iabp::On IABP, with tip in the thoracic aorta.
::sl0::Scoliosis of L-spine.
::sll::Scoliosis of L-spine with convexity to the left.
::slr::Scoliosis of L-spine with convexity to the right.
::msl0::Mild scoliosis of L-spine.
::msll::Mild scoliosis of L-spine with convexity to the left.
::mslr::Mild scoliosis of L-spine with convexity to the right.
::st0::Scoliosis of T-spine.
::stl::Scoliosis of T-spine with convexity to the left.
::str::Scoliosis of T-spine with convexity to the right.
::mst0::Mild scoliosis of T-spine.
::mstl::Mild scoliosis of T-spine with convexity to the left.
::mstr::Mild scoliosis of T-spine with convexity to the right.
::stl0::Scoliosis of T- and L-spine.
::mstl0::Mild scoliosis of T- and L-spine.
::pi::ill-defined pulmonary infiltration over `
::pi0::pulmonary infiltration
::po::patch opacity
::no::nodular opacity
::lo::linear opacity
::flo::fibrolinear opacities
::fno::fibronodular opacities
::rno::reticulonodular opacities
::bafno::Fibronodular opacities over bilateral apical lung fields, in favor of chronic inflammatory change.
::rafno::Fibronodular opacities over right apical lung fields, in favor of chronic inflammatory change.
::lafno::Fibronodular opacities over left apical lung fields, in favor of chronic inflammatory change.
::ip::inflammatory process
::cic::chronic inflammatory change
::abg::air-bronchogram
::blf::bilateral lung fields
::llf::left lung field
::rlf::right lung field
::bulf::bilateral upper lung fields
::lulf::left upper lung field
::rulf::right upper lung field
::bllf::bilateral lower lung fields
::lllf::left lower lung field
::rllf::right lower lung field
::rll::right lower lung
::lll::left lower lung
::bll::bilateral lower lungs
::bbl::bilateral basal lungs
::rul::right upper lung
::lul::left upper lung
::bul::bilateral upper lungs
::phr::perihilar regions
::nnp::No newly developed patch opacity in lung fields.
::ii::Exaggerated lung markings at bilateral lowers, may be due to insufficient inspiration.
::ii0::insufficient inspiration
::iir::insufficient inspiration related
::rrf::Old fractures of right ribs.
::rrf1::Fractures of right ribs.
::lrf::Old fractures of left ribs.
::lrf1::Fractures of left ribs.
::brf::Old fractures of bilateral ribs.
::brf1::Fractures of bilateral ribs.
::rok::No evident rib fracture.
::rcf::Old fracture of right clavicle.
::lcf::Old fracture of left clavicle.
::sprcf::Previous fracture of right clavicle, s/p internal fixation.
::splcf::Previous fracture of left clavicle, s/p internal fixation.
::rdia::Elevation of right hemidiaphragm. Phrenic nerve palsy, diaphragmatic eventration, or intraabdominal process is considered.
::rdia0::Elevation of right hemidiaphragm.
::ldia::Elevation of left hemidiaphragm. Phrenic nerve palsy, diaphragmatic eventration, or intraabdominal process is considered.
::ldia0::Elevation of left hemidiaphragm.
::copd::Hyperinflation with flattening of bilateral hemidiaphragms, suggestive the possibility of COPD.
::tta::Tortuosity of thoracic descending aorta.
::mtta::Mild tortuosity of thoracic descending aorta.
::bronchio::Increased linear opacity and peribronchial thickening over bilateral lung fields, r/o bronchiolitis.
::ilo::increased linear opacity `
::ao::acinar opacity `
::ldia::Elevation of left hemidiaphragm. Phrenic nerve palsy, diaphragmatic eventration, or intraabdominal process is considered.
::rdia::Elevation of right hemidiaphragm. Phrenic nerve palsy, diaphragmatic eventration, or intraabdominal process is considered.
::id::ill-defined `
::wd::well-defined `
::luqd::A drain in the LUQ of abdomen.
::ruqd::A drain in the RUQ of abdomen.
::prrct::Post removal of right chest tube. No pneumothorax noted.
::prlct::Post removal of left chest tube. No pneumothorax noted.
::prrpg::Post removal of right pigtail drain. No pneumothorax noted.
::prlpg::Post removal of left pigtail drain. No pneumothorax noted.
::ate::atelectasis
::late::linear atelectasis
::sate::subsegmental atelectasis
::bsate::subsegmental atelectasis of bilateral lower lungs.
::rsoa::OA change of right shoulder.
::lsoa::OA change of left shoulder.
::bsoa::OA change of bilateral shoulders.
::blfgs::Few tiny dense nodules over bilateral lung fields, in favor of granulomas.
::rlfg::A small calcified nodule over right lung field, possibly a granuloma.
::rulfg::A small calcified nodule over right upper lung field, possibly a granuloma.
::rllfg::A small calcified nodule over right lower lung field, possibly a granuloma.
::llfg::A small calcified nodule over left lung field, possibly a granuloma.
::lulfg::A small calcified nodule over left upper lung field, possibly a granuloma.
::lllfg::A small calcified nodule over left lower lung field, possibly a granuloma.
::plbok::Post lung biopsy, and no obvious pneumothorax is noted.
::aak::Atherosclerotic change of the aortic knob.
::maak::Mild atherosclerotic change of the aortic knob.
::rci::Anterior interposition of the colon to the liver reaching the under-surface of the right hemidiaphragm.
::cpftl::Compression fracture of several lower T- and L-spine.
::mw::Mediastinal widening, possibly due to tortuosity of the thoracic aorta. Suggest clinical correlation.
::rotb::Fibrilinear and nodular opacities over right apical region, in favor of old TB.
::lotb::Fibrilinear and nodular opacities over left apical region, in favor of old TB.
::botb::Fibrilinear and nodular opacities over bilateral apical regions, in favor of old TB.
::splm::s/p left mastectomy.
::splpm::s/p left partial mastectomy.
::sprm::s/p right mastectomy.
::sprpm::s/p right partial mastectomy.
::spcs::s/p coronary stent.
::bns::Symmetrical small nodular opacities over bilateral lower lung fields, in favor of nipple shadows.
::lns::A small nodular opacity over left lower lung field, in favor of nipple shadow.
::rns::A small nodular opacity over right lower lung field, in favor of nipple shadow.
::seg::segment `
::bapt::Bilateral apical pleural thickening, in favor of chronic inflammatory change.
::rapt::Right apical pleural thickening, in favor of chronic inflammatory change.
::lapt::Left apical pleural thickening, in favor of chronic inflammatory change.

; Neck
::croup::Presence of steeple sign and hypopharyngeal distention, c/w croup.
::nocroup::No evidence of steeple sign and hypopharyngeal distention.