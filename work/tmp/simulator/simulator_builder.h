#ifndef _SIMULATOR_BUILDER_H_
#define _SIMULATOR_BUILDER_H_
#include "codasip_interface.h"
#include "codasip_simulator_MI17codasip_top_level_Sim.h"
namespace codasip {
namespace simulator {
inline SimulatorPrivateInterface* BuildSimulator() {
return new codasip::simulator::MI17codasip_top_level::Sim("codasip_top_level");
}
}
}
#endif
