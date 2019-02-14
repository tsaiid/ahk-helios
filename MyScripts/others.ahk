::b::bilateral `
::lt::left `
::rt::right `
::ifo::in favor of `
::mfo::more favor of `
::acw::as compared with `
::acwpi::as compared with the previous images, `
::cpf::compression fracture
::cmf::comminuted fracture `
::bfr::burst fracture `
::cal::calcification
::si::(Se/Im: ){Left}
::sao::small amount of `
::smao::small to moderate amount of `
::mao::moderate amount of `
::lao::large amount of `
::ntbd::nature to be determined.
::stbd::significance to be determined.
::ctbd::cause to be determined.
::otbd::origin to be determined.
::het::heterogeneous `
::hom::homogenous `
::p::presence of `
::h::however, `
::r::residual `
::reg::regular `
::ireg::irregular `
::i::increased `
::d::decreased `
::e::enhancement
::ec::enhancing `
::rec::recurrence
::w::with `
::wo::without `
::esp::especially `
::asp::aspiration
::cw::consistent with `
::ow::otherwise, `
::rm::remarkable `
::urm::unremarkable
::cnbd::cannot be determined
::cnbe::cannot be excluded
::cnbte::cannot be totally excluded
::sbe::should be excluded
::mbs::may be suspected
::mabs::may also be suspected
::mcnbe::malignancy cannot be excluded.
::msbe::malignancy should be excluded.
::m::multiple `
::mf::multifocal `
::ml::multilocular `
::mp::most prominent at `
::s::several `
::n::nodule
::nr::nodular `
::lr::linear `
::cn::calcified nodule
::cg::calcified granuloma
::rol::radiopaque lesion
::o::opacity
::g::granuloma
::gl::gland
::l::lesion
::nl::nodular lesion
::cl::cystic lesion
::mod::moderate `
::sv::severe `
::stm::small to moderate `
::mtm::mild to moderate `
::mts::moderate to severe `
::sl::slightly `
::sip::superimposed `
::pos::position
::pd::progressive disease
::sd::stable disease
::pr::partial response
::cr::complete response
::ap::arterial phase
::pvp::portal venous phase
::dp::delayed phase
::ep::equilibrium phase
::hbp::hepatobiliary phase
::bd::bone density
::ndlg::Nearly dislodgement is considered.
::eva::evaluation
::fb::foreign body
::hd::high density
::ld::low density
::pbi::previous brain insults
::pii::previous ischemic insults
::ech::edematous change
::sps::spinal stenosis
::sps0::mild indentation on anterior dural sac without obvious spinal stenosis
::nfs::neuroforaminal stenosis
::snfs::spinal and neuroforaminal stenosis
::lrn::lateral recess narrowing
::smn::Schmorl's node
::at-::attenuation
::d-::density

::pl::possibly `
::pb::probably `
::sf::suspicious for `
::ll::less likely

:c:f::findings
:c:IND::INDICATION:
;:c:CMP::COMPARISON: ^+1
:c:CMP::
  Send, COMPARISON: %prevExamDate%
Return
:c:IMP::IMPRESSION:
:c:SG::SUGGESTION:
:c:FD::FINDINGS:

; recommendations
::sg::suggest
::cc::Suggest clinical correlation.
::cc0::clinical correlation
::fe::Suggest further evaluation.
::fe0::further evaluation
::feci::Suggest further evaluation if clinically indicated.
::fu::Suggest follow-up.
::cfu::Suggest close follow-up.
::fu0::follow-up
::ccfu::Suggest clinical correlation and follow-up.
::fufe::Suggest follow-up or further evaluation.
::cpes::Suggest correlate with panendoscopy.
::csono::Suggest correlate with sonography.
::ccsono::Suggest clinical and sonographic correlation.
::ctrus::Suggest correlate with transrectal ultrasonography.
::cdsa::Suggest correlate with DSA.
::clab::Suggest correlate with Lab data.
::coi::Suggest correlate with other imaging modality.
::cbs::Suggest correlate with bone scan.
::cercp::Suggest correlate with ERCP.
::cmrcp::Suggest correlate with MRCP.
::sgyn::Suggest GYN check-up.
::cgynsono::Suggest GYN check-up and sonographic correlation.
::scmp::Suggest compare with previous images if available.
::slr3::Suggest repeat or alternative diagnostic imaging 3-6 months later.

;; Limitations
::olnd::However, the obstruction level cannot be demonstrated in this study.
::tstc::too small to categorize
::motion::* Obvious motion artifacts may limit the interpretation.
::mart::* Obvious metallic artifact may limit the evaluation.
::ubl::(* Limited evaluation due to collapsed UB.)
::ncl::
  MyForm =
(
* The evaluation is limited due to absence of contrast enhancement, especially for solid organs and vascular structure.
* The detection of tiny or occult metastasis is limited due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::sgo::suggestive of `
::obv::obvious `
::nob::no obvious `
::nod::no definite `
::noe::no evident `
::hyperi::hyperintensity
::hypoi::hypointensity
::isoi::intermediate signal intensity
::T1h::T1 hyperintensity
::T1l::T1 hypointensity
::T2h::T2 hyperintensity
::T2l::T2 hypointensity
::hyperd::hyperdense `
::hypod::hypodense `
::isod::isodense `
::hia::high-attenuation `
::loa::low-attenuation `
::hypere::hyperechoic `
::hypoe::hypoechoic `
:c:fd::filling defect
::pg::progression
::rg::regression
::csd::considered
::spd::suspected
::sp::suspicious `
::ic::inflammatory change
::infl::inflammation
::cd::consolidation
::nc::noncontrast-enhanced study
::ce::contrast-enhanced study
::sc::surgical clips
::ss::surgical staples
::mrt::more on right side
::mlt::more on left side
::adj::adjacent `
::std::soft tissue density
::ddx::differential diagnoses
::nd::newly developed
::ws::wedge-shaped `
::wr::wedge resection
::ift::infiltration
::me::mediastinal `
::men::mediastinum
::fa::free air
::fac::fluid accumulation
::fc::fluid collection
::fs::fat stranding
::hop::hollow organ perforation
::nrf::No remarkable finding.
::nsf::non-specific finding
::ol::obstruction level
::tz::transitional zone
::nobs::nonobstructive `
::obs::obstruction
::hypoec::hypo-enhanced `
::hyperec::hyper-enhanced `
::pce::post-contrast enhancement
::fl::fatty liver
::mfl::mild fatty liver
::mfl1::mild fatty liver without focal lesion.
::sfl::severe fatty liver
::sfl1::severe fatty liver with focal fatty sparing around the GB fossa.
::duf::degenerative uterine fibroid
::eso::esophagus
::gd::The greatest dimension is about  cm.{Left 4}
::abn::abnormal `
::sb::small bowel
::elg::enlargement
::elgd::enlarged
::pci::postcontrast images
::bdl::borderline `
::bsmg::borderline splenomegaly

::fn::FOOTNOTE:{Enter}[{^}1]: `

; common hotstrings
::rcs::renal cysts
::lrc::A -cm renal cyst at the left kidney.
::rrc::A -cm renal cyst at the right kidney.
::srcs::Some small renal cysts in both kidneys.
::shcs::Some small hepatic cysts.

; 資源共享
::share::
  MyForm =
(
The study has been uploaded to our PACS system.
Original report has been attached as a picture file.
For second opinion, please submit a formal consultation request to our department.
)
  Paste(MyForm)
  SleepThenTab()
  MyForm =
(
The study has been uploaded to our PACS system.
)
  Paste(MyForm)
Return