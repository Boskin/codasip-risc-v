#ifndef _PROFILER_BUILDER_H_
#define _PROFILER_BUILDER_H_
#include "profiler_interface.h"
#include "codasip_profiler_MI7RISC_V5_Profiler.h"
namespace codasip {
namespace profiler {
ProfilerInterface* BuildProfiler() {
return new codasip::profiler::MI7RISC_V5::Profiler();
}
}
}
#endif
