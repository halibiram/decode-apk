.class public Lnet/openvpn/openvpn/ovpncliJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->swig_module_init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final native ClientAPI_Config_altProxy_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_altProxy_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_autologinSessions_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_autologinSessions_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_compressionMode_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_compressionMode_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_connTimeout_get(JLnet/openvpn/openvpn/ClientAPI_Config;)I
.end method

.method public static final native ClientAPI_Config_connTimeout_set(JLnet/openvpn/openvpn/ClientAPI_Config;I)V
.end method

.method public static final native ClientAPI_Config_contentList_get(JLnet/openvpn/openvpn/ClientAPI_Config;)J
.end method

.method public static final native ClientAPI_Config_contentList_set(JLnet/openvpn/openvpn/ClientAPI_Config;J)V
.end method

.method public static final native ClientAPI_Config_content_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_content_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_dco_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_dco_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_defaultKeyDirection_get(JLnet/openvpn/openvpn/ClientAPI_Config;)I
.end method

.method public static final native ClientAPI_Config_defaultKeyDirection_set(JLnet/openvpn/openvpn/ClientAPI_Config;I)V
.end method

.method public static final native ClientAPI_Config_disableClientCert_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_disableClientCert_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_echo_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_echo_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_externalPkiAlias_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_externalPkiAlias_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_forceAesCbcCiphersuites_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_forceAesCbcCiphersuites_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_googleDnsFallback_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_googleDnsFallback_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_gremlinConfig_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_gremlinConfig_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_guiVersion_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_guiVersion_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_info_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_info_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_ipv6_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_ipv6_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_peerInfo_get(JLnet/openvpn/openvpn/ClientAPI_Config;)J
.end method

.method public static final native ClientAPI_Config_peerInfo_set(JLnet/openvpn/openvpn/ClientAPI_Config;J)V
.end method

.method public static final native ClientAPI_Config_privateKeyPassword_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_privateKeyPassword_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_protoOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_protoOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_proxyAllowCleartextAuth_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_proxyAllowCleartextAuth_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_Config_proxyHost_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_proxyHost_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_proxyPassword_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_proxyPassword_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_proxyPort_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_proxyPort_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_proxyUsername_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_proxyUsername_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_serverOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_serverOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_tlsVersionMinOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Config_tlsVersionMinOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Config_tunPersist_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z
.end method

.method public static final native ClientAPI_Config_tunPersist_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V
.end method

.method public static final native ClientAPI_ConnectionInfo_clientIp_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_clientIp_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_defined_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Z
.end method

.method public static final native ClientAPI_ConnectionInfo_defined_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Z)V
.end method

.method public static final native ClientAPI_ConnectionInfo_serverHost_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_serverHost_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_serverIp_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_serverIp_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_serverPort_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_serverPort_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_serverProto_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_serverProto_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_tunName_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_tunName_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_user_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_user_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_vpnIp4_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_vpnIp4_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ConnectionInfo_vpnIp6_get(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ConnectionInfo_vpnIp6_set(JLnet/openvpn/openvpn/ClientAPI_ConnectionInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_DynamicChallenge_challenge_get(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_DynamicChallenge_challenge_set(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_DynamicChallenge_echo_get(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z
.end method

.method public static final native ClientAPI_DynamicChallenge_echo_set(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;Z)V
.end method

.method public static final native ClientAPI_DynamicChallenge_responseRequired_get(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z
.end method

.method public static final native ClientAPI_DynamicChallenge_responseRequired_set(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;Z)V
.end method

.method public static final native ClientAPI_DynamicChallenge_stateID_get(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_DynamicChallenge_stateID_set(JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_allowPasswordSave_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_allowPasswordSave_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_autologin_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_autologin_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_error_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_error_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_externalPki_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_externalPki_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_friendlyName_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_friendlyName_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_message_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_message_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_privateKeyPasswordRequired_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_privateKeyPasswordRequired_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_profileName_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_profileName_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_remoteHost_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_remoteHost_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_remotePort_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_remotePort_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_remoteProto_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_remoteProto_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_serverList_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)J
.end method

.method public static final native ClientAPI_EvalConfig_serverList_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;)V
.end method

.method public static final native ClientAPI_EvalConfig_staticChallengeEcho_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Z
.end method

.method public static final native ClientAPI_EvalConfig_staticChallengeEcho_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Z)V
.end method

.method public static final native ClientAPI_EvalConfig_staticChallenge_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_staticChallenge_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_EvalConfig_userlockedUsername_get(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_EvalConfig_userlockedUsername_set(JLnet/openvpn/openvpn/ClientAPI_EvalConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Event_error_get(JLnet/openvpn/openvpn/ClientAPI_Event;)Z
.end method

.method public static final native ClientAPI_Event_error_set(JLnet/openvpn/openvpn/ClientAPI_Event;Z)V
.end method

.method public static final native ClientAPI_Event_fatal_get(JLnet/openvpn/openvpn/ClientAPI_Event;)Z
.end method

.method public static final native ClientAPI_Event_fatal_set(JLnet/openvpn/openvpn/ClientAPI_Event;Z)V
.end method

.method public static final native ClientAPI_Event_info_get(JLnet/openvpn/openvpn/ClientAPI_Event;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Event_info_set(JLnet/openvpn/openvpn/ClientAPI_Event;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Event_name_get(JLnet/openvpn/openvpn/ClientAPI_Event;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Event_name_set(JLnet/openvpn/openvpn/ClientAPI_Event;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKIBase_sign(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;Ljava/lang/String;J)Z
.end method

.method public static final native ClientAPI_ExternalPKICertRequest_SWIGUpcast(J)J
.end method

.method public static final native ClientAPI_ExternalPKICertRequest_cert_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKICertRequest_cert_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKICertRequest_supportingChain_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKICertRequest_supportingChain_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_alias_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_alias_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_errorText_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_errorText_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_error_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;)Z
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_error_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;Z)V
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_invalidAlias_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;)Z
.end method

.method public static final native ClientAPI_ExternalPKIRequestBase_invalidAlias_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;Z)V
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_SWIGUpcast(J)J
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_data_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_data_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_sigType_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_sigType_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_sig_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ExternalPKISignRequest_sig_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_InterfaceStats_bytesIn_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_bytesIn_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_InterfaceStats_bytesOut_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_bytesOut_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_InterfaceStats_errorsIn_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_errorsIn_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_InterfaceStats_errorsOut_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_errorsOut_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_InterfaceStats_packetsIn_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_packetsIn_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_InterfaceStats_packetsOut_get(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;)J
.end method

.method public static final native ClientAPI_InterfaceStats_packetsOut_set(JLnet/openvpn/openvpn/ClientAPI_InterfaceStats;J)V
.end method

.method public static final native ClientAPI_KeyValue_key_get(JLnet/openvpn/openvpn/ClientAPI_KeyValue;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_KeyValue_key_set(JLnet/openvpn/openvpn/ClientAPI_KeyValue;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_KeyValue_value_get(JLnet/openvpn/openvpn/ClientAPI_KeyValue;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_KeyValue_value_set(JLnet/openvpn/openvpn/ClientAPI_KeyValue;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_LLVector_add(JLnet/openvpn/openvpn/ClientAPI_LLVector;J)V
.end method

.method public static final native ClientAPI_LLVector_capacity(JLnet/openvpn/openvpn/ClientAPI_LLVector;)J
.end method

.method public static final native ClientAPI_LLVector_clear(JLnet/openvpn/openvpn/ClientAPI_LLVector;)V
.end method

.method public static final native ClientAPI_LLVector_get(JLnet/openvpn/openvpn/ClientAPI_LLVector;I)J
.end method

.method public static final native ClientAPI_LLVector_isEmpty(JLnet/openvpn/openvpn/ClientAPI_LLVector;)Z
.end method

.method public static final native ClientAPI_LLVector_reserve(JLnet/openvpn/openvpn/ClientAPI_LLVector;J)V
.end method

.method public static final native ClientAPI_LLVector_set(JLnet/openvpn/openvpn/ClientAPI_LLVector;IJ)V
.end method

.method public static final native ClientAPI_LLVector_size(JLnet/openvpn/openvpn/ClientAPI_LLVector;)J
.end method

.method public static final native ClientAPI_LogInfo_text_get(JLnet/openvpn/openvpn/ClientAPI_LogInfo;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_LogInfo_text_set(JLnet/openvpn/openvpn/ClientAPI_LogInfo;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_MergeConfig_basename_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_MergeConfig_basename_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_MergeConfig_errorText_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_MergeConfig_errorText_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_MergeConfig_profileContent_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_MergeConfig_profileContent_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_MergeConfig_refPathList_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)J
.end method

.method public static final native ClientAPI_MergeConfig_refPathList_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;J)V
.end method

.method public static final native ClientAPI_MergeConfig_status_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_MergeConfig_status_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_SWIGUpcast(J)J
.end method

.method public static final native ClientAPI_OpenVPNClient_app_expire()I
.end method

.method public static final native ClientAPI_OpenVPNClient_change_ownership(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JZ)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_attach(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_attachSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_detach(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_detachSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_pre_run(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_pre_runSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_run(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_runSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_session_stop(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connect_session_stopSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_connection_info(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_copyright()Ljava/lang/String;
.end method

.method public static final native ClientAPI_OpenVPNClient_crypto_self_test()Ljava/lang/String;
.end method

.method public static final native ClientAPI_OpenVPNClient_director_connect(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JZZ)V
.end method

.method public static final native ClientAPI_OpenVPNClient_eval_config(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_Config;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_eval_config_static(JLnet/openvpn/openvpn/ClientAPI_Config;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_event(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_Event;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_external_pki_cert_request(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_external_pki_sign_request(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_init_process()V
.end method

.method public static final native ClientAPI_OpenVPNClient_log(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_LogInfo;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_max_profile_size()I
.end method

.method public static final native ClientAPI_OpenVPNClient_merge_config_static(Ljava/lang/String;Z)J
.end method

.method public static final native ClientAPI_OpenVPNClient_merge_config_string_static(Ljava/lang/String;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_parse_dynamic_challenge(Ljava/lang/String;JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z
.end method

.method public static final native ClientAPI_OpenVPNClient_pause(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_pause_on_connection_timeout(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)Z
.end method

.method public static final native ClientAPI_OpenVPNClient_platform()Ljava/lang/String;
.end method

.method public static final native ClientAPI_OpenVPNClient_provide_creds(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_reconnect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)V
.end method

.method public static final native ClientAPI_OpenVPNClient_resume(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_session_token(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_SessionToken;)Z
.end method

.method public static final native ClientAPI_OpenVPNClient_socket_protect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z
.end method

.method public static final native ClientAPI_OpenVPNClient_stats_bundle(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_stats_n()I
.end method

.method public static final native ClientAPI_OpenVPNClient_stats_name(I)Ljava/lang/String;
.end method

.method public static final native ClientAPI_OpenVPNClient_stats_value(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)J
.end method

.method public static final native ClientAPI_OpenVPNClient_stop(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
.end method

.method public static final native ClientAPI_OpenVPNClient_transport_stats(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_tun_stats(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
.end method

.method public static final native ClientAPI_OpenVPNClient_uninit_process()V
.end method

.method public static final native ClientAPI_ProvideCreds_cachePassword_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Z
.end method

.method public static final native ClientAPI_ProvideCreds_cachePassword_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Z)V
.end method

.method public static final native ClientAPI_ProvideCreds_dynamicChallengeCookie_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ProvideCreds_dynamicChallengeCookie_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ProvideCreds_password_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ProvideCreds_password_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ProvideCreds_replacePasswordWithSessionID_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Z
.end method

.method public static final native ClientAPI_ProvideCreds_replacePasswordWithSessionID_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Z)V
.end method

.method public static final native ClientAPI_ProvideCreds_response_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ProvideCreds_response_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ProvideCreds_username_get(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ProvideCreds_username_set(JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ServerEntryVector_add(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;JLnet/openvpn/openvpn/ClientAPI_ServerEntry;)V
.end method

.method public static final native ClientAPI_ServerEntryVector_capacity(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;)J
.end method

.method public static final native ClientAPI_ServerEntryVector_clear(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;)V
.end method

.method public static final native ClientAPI_ServerEntryVector_get(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;I)J
.end method

.method public static final native ClientAPI_ServerEntryVector_isEmpty(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;)Z
.end method

.method public static final native ClientAPI_ServerEntryVector_reserve(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;J)V
.end method

.method public static final native ClientAPI_ServerEntryVector_set(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;IJLnet/openvpn/openvpn/ClientAPI_ServerEntry;)V
.end method

.method public static final native ClientAPI_ServerEntryVector_size(JLnet/openvpn/openvpn/ClientAPI_ServerEntryVector;)J
.end method

.method public static final native ClientAPI_ServerEntry_friendlyName_get(JLnet/openvpn/openvpn/ClientAPI_ServerEntry;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ServerEntry_friendlyName_set(JLnet/openvpn/openvpn/ClientAPI_ServerEntry;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_ServerEntry_server_get(JLnet/openvpn/openvpn/ClientAPI_ServerEntry;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_ServerEntry_server_set(JLnet/openvpn/openvpn/ClientAPI_ServerEntry;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_SessionToken_session_id_get(JLnet/openvpn/openvpn/ClientAPI_SessionToken;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_SessionToken_session_id_set(JLnet/openvpn/openvpn/ClientAPI_SessionToken;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_SessionToken_username_get(JLnet/openvpn/openvpn/ClientAPI_SessionToken;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_SessionToken_username_set(JLnet/openvpn/openvpn/ClientAPI_SessionToken;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Status_error_get(JLnet/openvpn/openvpn/ClientAPI_Status;)Z
.end method

.method public static final native ClientAPI_Status_error_set(JLnet/openvpn/openvpn/ClientAPI_Status;Z)V
.end method

.method public static final native ClientAPI_Status_message_get(JLnet/openvpn/openvpn/ClientAPI_Status;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Status_message_set(JLnet/openvpn/openvpn/ClientAPI_Status;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_Status_status_get(JLnet/openvpn/openvpn/ClientAPI_Status;)Ljava/lang/String;
.end method

.method public static final native ClientAPI_Status_status_set(JLnet/openvpn/openvpn/ClientAPI_Status;Ljava/lang/String;)V
.end method

.method public static final native ClientAPI_TransportStats_bytesIn_get(JLnet/openvpn/openvpn/ClientAPI_TransportStats;)J
.end method

.method public static final native ClientAPI_TransportStats_bytesIn_set(JLnet/openvpn/openvpn/ClientAPI_TransportStats;J)V
.end method

.method public static final native ClientAPI_TransportStats_bytesOut_get(JLnet/openvpn/openvpn/ClientAPI_TransportStats;)J
.end method

.method public static final native ClientAPI_TransportStats_bytesOut_set(JLnet/openvpn/openvpn/ClientAPI_TransportStats;J)V
.end method

.method public static final native ClientAPI_TransportStats_lastPacketReceived_get(JLnet/openvpn/openvpn/ClientAPI_TransportStats;)I
.end method

.method public static final native ClientAPI_TransportStats_lastPacketReceived_set(JLnet/openvpn/openvpn/ClientAPI_TransportStats;I)V
.end method

.method public static final native ClientAPI_TransportStats_packetsIn_get(JLnet/openvpn/openvpn/ClientAPI_TransportStats;)J
.end method

.method public static final native ClientAPI_TransportStats_packetsIn_set(JLnet/openvpn/openvpn/ClientAPI_TransportStats;J)V
.end method

.method public static final native ClientAPI_TransportStats_packetsOut_get(JLnet/openvpn/openvpn/ClientAPI_TransportStats;)J
.end method

.method public static final native ClientAPI_TransportStats_packetsOut_set(JLnet/openvpn/openvpn/ClientAPI_TransportStats;J)V
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_address(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;ILjava/lang/String;ZZ)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_dns_server(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;Z)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_proxy_bypass(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_route(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;IIZ)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_search_domain(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_add_wins_server(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_establish(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)I
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_establish_lite(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)V
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_exclude_route(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;IIZ)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_new(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_persist(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_reroute_gw(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;ZZJ)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_adapter_domain_suffix(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_block_ipv6(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Z)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_layer(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_mtu(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_proxy_auto_config_url(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_proxy_http(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;I)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_proxy_https(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;I)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_remote_address(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;Z)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_route_metric_default(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_set_session_name(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z
.end method

.method public static final native ClientAPI_TunBuilderBase_tun_builder_teardown(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Z)V
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_connect_attach(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect_attach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_connect_detach(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect_detach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_connect_pre_run(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect_pre_run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_connect_run(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect_run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_connect_session_stop(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect_session_stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_event(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;J)V
    .locals 2

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_Event;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lnet/openvpn/openvpn/ClientAPI_Event;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->event(Lnet/openvpn/openvpn/ClientAPI_Event;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;J)V
    .locals 2

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;J)V
    .locals 2

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_log(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;J)V
    .locals 2

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_LogInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lnet/openvpn/openvpn/ClientAPI_LogInfo;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_pause_on_connection_timeout(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->pause_on_connection_timeout()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_socket_protect(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->socket_protect(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_address(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_dns_server(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_dns_server(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_proxy_bypass(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_proxy_bypass(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_route(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;IIZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_route(Ljava/lang/String;IIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_search_domain(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_search_domain(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_add_wins_server(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_add_wins_server(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_establish(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_establish()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_establish_lite(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_establish_lite()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_exclude_route(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;IIZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_exclude_route(Ljava/lang/String;IIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_new(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_new()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_persist(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_persist()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_reroute_gw(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;ZZJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_reroute_gw(ZZJ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_adapter_domain_suffix(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_adapter_domain_suffix(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_block_ipv6(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_block_ipv6(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_layer(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_layer(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_mtu(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_mtu(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_proxy_auto_config_url(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_proxy_auto_config_url(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_proxy_http(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_proxy_http(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_proxy_https(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_proxy_https(Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_remote_address(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_remote_address(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_route_metric_default(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_route_metric_default(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_set_session_name(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_set_session_name(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static SwigDirector_ClientAPI_OpenVPNClient_tun_builder_teardown(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->tun_builder_teardown(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final native delete_ClientAPI_Config(J)V
.end method

.method public static final native delete_ClientAPI_ConnectionInfo(J)V
.end method

.method public static final native delete_ClientAPI_DynamicChallenge(J)V
.end method

.method public static final native delete_ClientAPI_EvalConfig(J)V
.end method

.method public static final native delete_ClientAPI_Event(J)V
.end method

.method public static final native delete_ClientAPI_ExternalPKIBase(J)V
.end method

.method public static final native delete_ClientAPI_ExternalPKICertRequest(J)V
.end method

.method public static final native delete_ClientAPI_ExternalPKIRequestBase(J)V
.end method

.method public static final native delete_ClientAPI_ExternalPKISignRequest(J)V
.end method

.method public static final native delete_ClientAPI_InterfaceStats(J)V
.end method

.method public static final native delete_ClientAPI_KeyValue(J)V
.end method

.method public static final native delete_ClientAPI_LLVector(J)V
.end method

.method public static final native delete_ClientAPI_LogInfo(J)V
.end method

.method public static final native delete_ClientAPI_MergeConfig(J)V
.end method

.method public static final native delete_ClientAPI_OpenVPNClient(J)V
.end method

.method public static final native delete_ClientAPI_ProvideCreds(J)V
.end method

.method public static final native delete_ClientAPI_ServerEntry(J)V
.end method

.method public static final native delete_ClientAPI_ServerEntryVector(J)V
.end method

.method public static final native delete_ClientAPI_SessionToken(J)V
.end method

.method public static final native delete_ClientAPI_Status(J)V
.end method

.method public static final native delete_ClientAPI_TransportStats(J)V
.end method

.method public static final native delete_ClientAPI_TunBuilderBase(J)V
.end method

.method public static final native new_ClientAPI_Config()J
.end method

.method public static final native new_ClientAPI_ConnectionInfo()J
.end method

.method public static final native new_ClientAPI_DynamicChallenge()J
.end method

.method public static final native new_ClientAPI_EvalConfig()J
.end method

.method public static final native new_ClientAPI_Event()J
.end method

.method public static final native new_ClientAPI_ExternalPKICertRequest()J
.end method

.method public static final native new_ClientAPI_ExternalPKIRequestBase()J
.end method

.method public static final native new_ClientAPI_ExternalPKISignRequest()J
.end method

.method public static final native new_ClientAPI_InterfaceStats()J
.end method

.method public static final native new_ClientAPI_KeyValue__SWIG_0()J
.end method

.method public static final native new_ClientAPI_KeyValue__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_ClientAPI_LLVector__SWIG_0()J
.end method

.method public static final native new_ClientAPI_LLVector__SWIG_1(J)J
.end method

.method public static final native new_ClientAPI_LogInfo__SWIG_0()J
.end method

.method public static final native new_ClientAPI_LogInfo__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_ClientAPI_MergeConfig()J
.end method

.method public static final native new_ClientAPI_OpenVPNClient()J
.end method

.method public static final native new_ClientAPI_ProvideCreds()J
.end method

.method public static final native new_ClientAPI_ServerEntry()J
.end method

.method public static final native new_ClientAPI_ServerEntryVector__SWIG_0()J
.end method

.method public static final native new_ClientAPI_ServerEntryVector__SWIG_1(J)J
.end method

.method public static final native new_ClientAPI_SessionToken()J
.end method

.method public static final native new_ClientAPI_Status()J
.end method

.method public static final native new_ClientAPI_TransportStats()J
.end method

.method public static final native new_ClientAPI_TunBuilderBase()J
.end method

.method private static final native swig_module_init()V
.end method
