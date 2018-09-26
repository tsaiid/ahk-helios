; Global Variables
prevExamDate := ""
currExamDate := ""
currAccNo := ""
hParentWnd := 0
LLDFormRtLD := 0
LLDFormLtLD := 0
FsgRadioGroup := 0

;; Helios Related
FINDING_INPUT_PATH              := "4.9.31.1"
IMPRESSION_INPUT_PATH           := "4.9.34"
FINDING_SCROLLBAR_DOWN_PATH     := "4.9.31.2.3"
FINDING_SCROLLBAR_UP_PATH       := "4.9.31.2.4"
IMPRESSION_SCROLLBAR_DOWN_PATH  := "4.9.34.1.3"
IMPRESSION_SCROLLBAR_UP_PATH    := "4.9.34.1.4"
ABNORMAL_VALUE_EMPTY            := "4.9.10.2"
ABNORMAL_VALUE_A                := "4.9.10.3"
ABNORMAL_VALUE_B                := "4.9.10.4"
ABNORMAL_VALUE_C                := "4.9.10.5"
ABNORMAL_VALUE_D                := "4.9.10.6"
ABNORMAL_VALUE_R                := "4.9.10.7"
PREV_REPORT_TAB_PATH            := "4.7.2.1"
LIS_TAB_PATH                    := "4.7.2.2"
EXAM_TAB_PATH                   := "4.7.2.3"
CONVERSATION_TAB_PATH           := "4.7.2.4"
INF_CONTROL_TAB_PATH            := "4.7.2.5"
OPD_TAB_PATH                    := "4.7.2.6"
PNOTE_TAB_PATH                  := "4.7.2.7"
OP_ADM_PATHO_TAB_PATH           := "4.7.2.8"

;; counters for statistics
cntGetPreviousReport := 0
cntGetPreviousReportSuccess := 0
v_Count := 0
m_Count_Lt := 0
m_Count_Md := 0
m_Count_Rt := 0
