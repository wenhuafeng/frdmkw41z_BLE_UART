/*! *********************************************************************************
 * \addtogroup Wireless UART Profile
 * @{
 ********************************************************************************** */
/*!
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 *
 * \file
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/************************************************************************************
*************************************************************************************
* Include
*************************************************************************************
************************************************************************************/
#include "FunctionLib.h"
#include "ble_general.h"
#include "gatt_db_app_interface.h"
#include "gatt_server_interface.h"
#include "gap_interface.h"
#include "wireless_uart_interface.h"
/************************************************************************************
*************************************************************************************
* Private constants & macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/

/*! wireless_uart Service - Subscribed Client*/
static deviceId_t mWus_SubscribedClientId;

/************************************************************************************
*************************************************************************************
* Private functions prototypes
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
bleResult_t Wus_Start (wusConfig_t *pServiceConfig)
{    
    mWus_SubscribedClientId = gInvalidDeviceId_c;
    
    return gBleSuccess_c;
}

bleResult_t Wus_Stop (wusConfig_t *pServiceConfig)
{
    return Wus_Unsubscribe();
}

bleResult_t Wus_Subscribe(deviceId_t deviceId)
{
    //if (mWus_SubscribedClientId != gInvalidDeviceId_c)
        mWus_SubscribedClientId = deviceId;

    return gBleSuccess_c;
}

bleResult_t Wus_Unsubscribe()
{
	mWus_SubscribedClientId = gInvalidDeviceId_c;
    return gBleSuccess_c;
}

bleResult_t Wus_SendNotifications
(
		uint16_t serviceHandle
)
{
    uint16_t  handleCccd;
    bool_t isNotifActive;

    uint16_t  handle;
    bleResult_t result;
    bleUuid_t uuid = Uuid16(gBleSig_IntermediateTemperature_d);
    //uint8_t UuidBuff[16] = {0xE0, 0x1C, 0x4B, 0x5E, 0x1E, 0xEB, 0xA1, 0x5C, 0xEE, 0xF4, 0x5E, 0xBA, 0x02, 0x01, 0xFF, 0x01};
    //uuid.uuid128[16] = UuidBuff[16];

    /* Get handle of  characteristic */
    result = GattDb_FindCharValueHandleInService(serviceHandle,
        gBleUuidType16_c, &uuid, &handle);

    if (result != gBleSuccess_c)
        return result;

    /* Get handle of CCCD */
    if (GattDb_FindCccdHandleForCharValueHandle(handle, &handleCccd) == gBleSuccess_c)
    {
		if (gBleSuccess_c == Gap_CheckNotificationStatus
			(mWus_SubscribedClientId, handleCccd, &isNotifActive) &&
			TRUE == isNotifActive)
		{
			GattServer_SendNotification(mWus_SubscribedClientId, handle);
		}
    }

    return gBleSuccess_c;
}

/************************************************************************************
*************************************************************************************
* Private functions
*************************************************************************************
************************************************************************************/
/*! *********************************************************************************
 * @}
 ********************************************************************************** */
