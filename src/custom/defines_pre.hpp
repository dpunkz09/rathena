// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

#ifndef CONFIG_CUSTOM_DEFINES_PRE_HPP
#define CONFIG_CUSTOM_DEFINES_PRE_HPP

/**
 * rAthena configuration file (http://rathena.org)
 * For detailed guidance on these check http://rathena.org/wiki/SRC/config/
 **/

/**
 * Client Packet Version
 * Set this to match your client's date (YYYYMMDD format)
 * Example: 2023-09-20 ragexe = 20230920
 **/
#define PACKETVER 20250604

/**
 * Renewal Mode
 * Comment out PRERE to enable Renewal mode (default)
 * Uncomment PRERE for Pre-Renewal (classic) mode
 * Renewal includes: Renewal formulas, cast times, drop rates, exp rates, level damage, ASPD, and stats
 **/
#define PRERE

#endif /* CONFIG_CUSTOM_DEFINES_PRE_HPP */
