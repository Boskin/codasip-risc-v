/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Subtarget Enumeration Source Fragment                                      *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_SUBTARGETINFO_ENUM
#undef GET_SUBTARGETINFO_ENUM

namespace llvm {
namespace Codasip {
enum {
  CodasipFeature = 0
};
} // end namespace Codasip
} // end namespace llvm

#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC

namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[] = {
  { "codasip", "This is a Codasip target.", { Codasip::CodasipFeature }, { } }
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetFeatureKV CodasipSubTypeKV[] = {
  { "codasip", "Select the codasip processor", { Codasip::CodasipFeature }, { } }
};

#ifdef DBGFIELD
#error "<target>GenSubtargetInfo.inc requires a DBGFIELD macro"
#endif
#ifndef NDEBUG
#define DBGFIELD(x) x,
#else
#define DBGFIELD(x)
#endif

// Functional units for "CodasipItineraries"
namespace CodasipItinerariesFU {
  const unsigned FU0_S0 = 1 << 0;
  const unsigned FU1_S0 = 1 << 1;
  const unsigned W_rf_xpr_S0 = 1 << 2;
} // end namespace CodasipItinerariesFU

extern const llvm::InstrStage CodasipStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 1, CodasipItinerariesFU::FU0_S0, -1, (llvm::InstrStage::ReservationKinds)0 },   { 0, CodasipItinerariesFU::W_rf_xpr_S0, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, CodasipItinerariesFU::FU1_S0, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1-3
  { 0, 0, 0, llvm::InstrStage::Required } // End stages
};
extern const unsigned CodasipOperandCycles[] = {
  0, // No itinerary
  0 // End operand cycles
};
extern const unsigned CodasipForwardingPaths[] = {
 0, // No itinerary
 0 // End bypass tables
};

static const llvm::InstrItinerary CodasipItineraries[] = {
  { 0, 0, 0, 0, 0 }, // 0 NoInstrModel
  { 1, 1, 4, 0, 0 }, // 1 Itin_sc_load
  { 0, ~0U, ~0U, ~0U, ~0U } // end marker
};

// ===============================================================
// Data tables for the new per-operand machine model.

// {ProcResourceIdx, Cycles}
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteProcResTable

// {Cycles, WriteResourceID}
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteLatencyTable

// {UseIdx, WriteResourceID, Cycles}
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[] = {
  {0,  0,  0}, // Invalid
}; // CodasipReadAdvanceTable

static const llvm::MCSchedModel NoSchedModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  0, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  nullptr}; // No Itinerary

static const llvm::MCSchedModel CodasipItinerariesModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  1, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  CodasipItineraries};

// Sorted (by key) array of itineraries for CPU subtype.
extern const llvm::SubtargetInfoKV CodasipProcSchedKV[] = {
  { "codasip", (const void *)&CodasipItinerariesModel }
};
#undef DBGFIELD
static inline MCSubtargetInfo *createCodasipMCSubtargetInfoImpl(const Triple &TT, StringRef CPU, StringRef FS) {
  return new MCSubtargetInfo(TT, CPU, FS, CodasipFeatureKV, CodasipSubTypeKV, 
                      CodasipProcSchedKV, CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                      CodasipStages, CodasipOperandCycles, CodasipForwardingPaths);
}

} // end namespace llvm

#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC

#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::CodasipSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  DEBUG(dbgs() << "\nFeatures:" << FS);
  DEBUG(dbgs() << "\nCPU:" << CPU << "\n\n");
  InitMCProcessorInfo(CPU, FS);
  const FeatureBitset& Bits = getFeatureBits();
  if (Bits[Codasip::CodasipFeature]) codasip = true;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER

namespace llvm {
class DFAPacketizer;
struct CodasipGenSubtargetInfo : public TargetSubtargetInfo {
  explicit CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS);
public:
  unsigned resolveSchedClass(unsigned SchedClass,  const MachineInstr *DefMI, const TargetSchedModel *SchedModel) const override;
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // end namespace llvm

#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR

#include "llvm/CodeGen/TargetSchedule.h"

namespace llvm {
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[];
extern const llvm::SubtargetFeatureKV CodasipSubTypeKV[];
extern const llvm::SubtargetInfoKV CodasipProcSchedKV[];
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[];
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[];
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[];
extern const llvm::InstrStage CodasipStages[];
extern const unsigned CodasipOperandCycles[];
extern const unsigned CodasipForwardingPaths[];
CodasipGenSubtargetInfo::CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo(TT, CPU, FS, makeArrayRef(CodasipFeatureKV, 1), makeArrayRef(CodasipSubTypeKV, 1), 
                        CodasipProcSchedKV, CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                        CodasipStages, CodasipOperandCycles, CodasipForwardingPaths) {}

unsigned CodasipGenSubtargetInfo
::resolveSchedClass(unsigned SchedClass, const MachineInstr *MI, const TargetSchedModel *SchedModel) const {
  report_fatal_error("Expected a variant SchedClass");
} // CodasipGenSubtargetInfo::resolveSchedClass
} // end namespace llvm

#endif // GET_SUBTARGETINFO_CTOR

