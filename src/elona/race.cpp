#include "race.hpp"

#include "ability.hpp"
#include "character.hpp"
#include "elona.hpp"
#include "i18n.hpp"
#include "random.hpp"
#include "variables.hpp"



namespace elona
{

void race_init_chara(Character& chara, data::InstanceId race_id)
{
    auto data = the_race_db[race_id];
    if (!data)
        return;

    cdatan(2, chara.index) = race_id.get();

    chara.melee_attack_type = data->melee_attack_type;
    chara.special_attack_type = data->special_attack_type;
    chara.dv_correction_value = data->dv_multiplier;
    chara.pv_correction_value = data->pv_multiplier;

    chara.birth_year = game_data.date.year -
        (rnd(data->max_age - data->min_age + 1) + data->min_age);
    chara.height = data->height;

    if (mode == 1)
    {
        chara.sex = cmsex;
    }
    else
    {
        chara.sex = (rnd(100) < data->male_ratio) ? 0 : 1;
    }

    chara.image = (chara.sex == 0) ? data->male_image : data->female_image;

    if (data->is_made_of_rock)
    {
        chara.breaks_into_debris() = true;
    }

    {
        size_t index{};
        for (const auto& limb : data->body_parts)
        {
            chara.body_parts[index] = limb * 10'000;
            ++index;
        }
        chara.body_parts[index] = 10 * 10'000;
        ++index;
        chara.body_parts[index] = 11 * 10'000;
        ++index;
    }

    for (const auto& pair : data->skills)
    {
        if (const auto ability_data = the_ability_db[pair.first])
        {
            chara_init_skill(chara, ability_data->legacy_id, pair.second);
        }
        else
        {
            // Skip the skill if undefined.
            ELONA_WARN("lua.data") << "Undefined skill ID: " << pair.first.get()
                                   << " (race " << race_id.get() << ")";
        }
    }

    for (const auto& pair : data->resistances)
    {
        if (const auto ability_data = the_ability_db[pair.first])
        {
            sdata(ability_data->legacy_id, chara.index) = pair.second;
        }
        else
        {
            // Skip the resistance if undefined.
            ELONA_WARN("lua.data")
                << "Undefined resistance ID: " << pair.first.get() << " (race "
                << race_id.get() << ")";
        }
    }
}



std::vector<std::reference_wrapper<const RaceData>> race_get_available(
    bool is_extra_race)
{
    std::vector<std::reference_wrapper<const RaceData>> ret;
    for (const auto& race : the_race_db.values())
    {
        if (race.is_extra == is_extra_race)
        {
            ret.emplace_back(race);
        }
    }
    range::sort(ret, [](const auto& a, const auto& b) {
        return a.get().ordering < b.get().ordering;
    });
    return ret;
}



void gain_race_feat()
{
    if (cdatan(2, 0) == u8"core.dwarf"s)
    {
        trait(152) = 2;
        trait(155) = 1;
    }
    if (cdatan(2, 0) == u8"core.elea"s)
    {
        trait(168) = 1;
        trait(156) = 1;
    }
    if (cdatan(2, 0) == u8"core.eulderna"s)
    {
        trait(153) = 1;
    }
    if (cdatan(2, 0) == u8"core.lich"s)
    {
        trait(151) = 1;
        trait(155) = 2;
        trait(152) = 1;
    }
    if (cdatan(2, 0) == u8"core.golem"s)
    {
        trait(157) = 1;
        trait(152) = 2;
    }
    if (cdatan(2, 0) == u8"core.yerles"s)
    {
        trait(154) = 1;
    }
    if (cdatan(2, 0) == u8"core.juere"s)
    {
        trait(158) = 1;
        trait(159) = 1;
    }
    if (cdatan(2, 0) == u8"core.goblin"s)
    {
        trait(155) = 1;
        trait(159) = 1;
    }
    if (cdatan(2, 0) == u8"core.mutant"s)
    {
        trait(0) = 1;
    }
    if (cdatan(2, 0) == u8"core.fairy"s)
    {
        trait(160) = 1;
        trait(161) = 1;
    }
}

} // namespace elona
