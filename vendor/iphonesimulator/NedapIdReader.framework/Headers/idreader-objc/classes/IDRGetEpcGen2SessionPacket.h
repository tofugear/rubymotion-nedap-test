#pragma once

#include "../util/IDRCommon.h"

#include "../enums/IDREnums.h"
#include "../classes/IDRSendablePacket.h"
#include "IDRClassDeclarations.h"

/*! 
 * @brief Command to retrieve the EPC Gen2 session parameters. The reader will respond with a EpcGen2Session response.
 */
@interface IDRGetEpcGen2SessionPacket : IDRSendablePacket

/*! 
 * @brief Construct a GetEpcGen2Session command.
 */
- (nonnull instancetype)init;

/*!
 * @brief Constructs a wrapped class from a C++ object.
 *
 * Creates an internally managed copy of the C++ object. For internal API usage only.
 * 
 * @param object Pointer to the C++ object.
 */
+ (nonnull instancetype)packetWithObject:(nonnull const void *)object;

/*! 
 * @brief Construct a GetEpcGen2Session command.
 */
+ (nonnull instancetype)packet;


@end
