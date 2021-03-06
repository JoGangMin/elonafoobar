#pragma once

#include "../base_database.hpp"



namespace elona
{

struct SoundData
{
    data::InstanceId id;
    int legacy_id;
    fs::path file;
};



ELONA_DEFINE_LUA_DB(SoundDB, SoundData, "core.sound")


extern SoundDB the_sound_db;

} // namespace elona
