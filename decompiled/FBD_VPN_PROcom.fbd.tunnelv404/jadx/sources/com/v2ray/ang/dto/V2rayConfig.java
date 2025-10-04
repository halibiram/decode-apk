package com.v2ray.ang.dto;

import androidx.core.app.NotificationCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.gson.annotations.SerializedName;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AppConfig;
import com.v2ray.ang.util.Utils;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1197x89633db9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001:\tXYZ[\\]^_`BË\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\nj\b\u0012\u0004\u0012\u00020\u000e`\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010?\u001a\u0004\u0018\u00010\u000eJ\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u000e0AJ\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\t\u0010D\u001a\u00020\u0006HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0019\u0010F\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fHÆ\u0003J\u0019\u0010G\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\nj\b\u0012\u0004\u0012\u00020\u000e`\fHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010I\u001a\u00020\u0012HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0001HÆ\u0003JÕ\u0001\u0010Q\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0018\b\u0002\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0018\b\u0002\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\nj\b\u0012\u0004\u0012\u00020\u000e`\f2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010R\u001a\u00020S2\b\u0010T\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010U\u001a\u00020VHÖ\u0001J\t\u0010W\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R!\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\nj\b\u0012\u0004\u0012\u00020\u000e`\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010+\"\u0004\b-\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b5\u0010!R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b6\u0010!R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b7\u0010!R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010!\"\u0004\b9\u0010#R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b:\u0010!R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010!\"\u0004\b<\u0010#R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010!\"\u0004\b>\u0010#¨\u0006a"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig;", "", "remarks", "", "stats", "log", "Lcom/v2ray/ang/dto/V2rayConfig$LogBean;", "policy", "Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;", "inbounds", "Ljava/util/ArrayList;", "Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;", "Lkotlin/collections/ArrayList;", "outbounds", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "dns", "Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;", "routing", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;", "api", NotificationCompat.CATEGORY_TRANSPORT, "reverse", "fakedns", "browserForwarder", "observatory", "burstObservatory", "<init>", "(Ljava/lang/String;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$LogBean;Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "getRemarks", "()Ljava/lang/String;", "setRemarks", "(Ljava/lang/String;)V", "getStats", "()Ljava/lang/Object;", "setStats", "(Ljava/lang/Object;)V", "getLog", "()Lcom/v2ray/ang/dto/V2rayConfig$LogBean;", "getPolicy", "()Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;", "setPolicy", "(Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;)V", "getInbounds", "()Ljava/util/ArrayList;", "getOutbounds", "setOutbounds", "(Ljava/util/ArrayList;)V", "getDns", "()Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;", "setDns", "(Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;)V", "getRouting", "()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;", "getApi", "getTransport", "getReverse", "getFakedns", "setFakedns", "getBrowserForwarder", "getObservatory", "setObservatory", "getBurstObservatory", "setBurstObservatory", "getProxyOutbound", "getAllProxyOutbound", "", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "", "other", "hashCode", "", "toString", "LogBean", "InboundBean", "OutboundBean", "DnsBean", "RoutingBean", "PolicyBean", "ObservatoryObject", "BurstObservatoryObject", "FakednsBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nV2rayConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2rayConfig.kt\ncom/v2ray/ang/dto/V2rayConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,603:1\n1869#2:604\n1869#2,2:605\n1870#2:607\n774#2:608\n865#2:609\n1761#2,3:610\n866#2:613\n*S KotlinDebug\n*F\n+ 1 V2rayConfig.kt\ncom/v2ray/ang/dto/V2rayConfig\n*L\n587#1:604\n588#1:605,2\n587#1:607\n598#1:608\n598#1:609\n599#1:610,3\n598#1:613\n*E\n"})
/* loaded from: classes3.dex */
public final /* data */ class V2rayConfig {

    @Nullable
    private final Object api;

    @Nullable
    private final Object browserForwarder;

    @Nullable
    private Object burstObservatory;

    @Nullable
    private DnsBean dns;

    @Nullable
    private Object fakedns;

    @NotNull
    private final ArrayList<InboundBean> inbounds;

    @NotNull
    private final LogBean log;

    @Nullable
    private Object observatory;

    @NotNull
    private ArrayList<OutboundBean> outbounds;

    @Nullable
    private PolicyBean policy;

    @Nullable
    private String remarks;

    @Nullable
    private final Object reverse;

    @NotNull
    private final RoutingBean routing;

    @Nullable
    private Object stats;

    @Nullable
    private final Object transport;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001e\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001+Bm\u0012\u001c\b\u0002\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0004\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0004HÆ\u0003J\u0017\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jt\u0010$\u001a\u00020\u00002\u001c\b\u0002\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u00042\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\n2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0007HÖ\u0001R.\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018¨\u0006,"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;", "", "servers", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "hosts", "", "", "clientIp", "disableCache", "", "queryStrategy", "tag", "<init>", "(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getServers", "()Ljava/util/ArrayList;", "setServers", "(Ljava/util/ArrayList;)V", "getHosts", "()Ljava/util/Map;", "setHosts", "(Ljava/util/Map;)V", "getClientIp", "()Ljava/lang/String;", "getDisableCache", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getQueryStrategy", "getTag", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;", "equals", "other", "hashCode", "", "toString", "ServersBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class DnsBean {

        @Nullable
        private final String clientIp;

        @Nullable
        private final Boolean disableCache;

        @Nullable
        private Map<String, ? extends Object> hosts;

        @Nullable
        private final String queryStrategy;

        @Nullable
        private ArrayList<Object> servers;

        @Nullable
        private final String tag;

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\"\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001fJ`\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\u000b2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0005HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u000fR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001f¨\u0006-"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;", "", "address", "", "port", "", "domains", "", "expectIPs", "clientIp", "skipFallback", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getPort", "()Ljava/lang/Integer;", "setPort", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDomains", "()Ljava/util/List;", "setDomains", "(Ljava/util/List;)V", "getExpectIPs", "setExpectIPs", "getClientIp", "getSkipFallback", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class ServersBean {

            @NotNull
            private String address;

            @Nullable
            private final String clientIp;

            @Nullable
            private List<String> domains;

            @Nullable
            private List<String> expectIPs;

            @Nullable
            private Integer port;

            @Nullable
            private final Boolean skipFallback;

            public ServersBean() {
                this(null, null, null, null, null, null, 63, null);
            }

            public static /* synthetic */ ServersBean copy$default(ServersBean serversBean, String str, Integer num, List list, List list2, String str2, Boolean bool, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = serversBean.address;
                }
                if ((i & 2) != 0) {
                    num = serversBean.port;
                }
                Integer num2 = num;
                if ((i & 4) != 0) {
                    list = serversBean.domains;
                }
                List list3 = list;
                if ((i & 8) != 0) {
                    list2 = serversBean.expectIPs;
                }
                List list4 = list2;
                if ((i & 16) != 0) {
                    str2 = serversBean.clientIp;
                }
                String str3 = str2;
                if ((i & 32) != 0) {
                    bool = serversBean.skipFallback;
                }
                return serversBean.copy(str, num2, list3, list4, str3, bool);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getAddress() {
                return this.address;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            public final List<String> component3() {
                return this.domains;
            }

            @Nullable
            public final List<String> component4() {
                return this.expectIPs;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final String getClientIp() {
                return this.clientIp;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final Boolean getSkipFallback() {
                return this.skipFallback;
            }

            @NotNull
            public final ServersBean copy(@NotNull String address, @Nullable Integer port, @Nullable List<String> domains, @Nullable List<String> expectIPs, @Nullable String clientIp, @Nullable Boolean skipFallback) {
                Intrinsics.checkNotNullParameter(address, new ObfuscatedString(new long[]{-7980311115440816036L, 8857306012016211956L}).toString());
                return new ServersBean(address, port, domains, expectIPs, clientIp, skipFallback);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ServersBean)) {
                    return false;
                }
                ServersBean serversBean = (ServersBean) other;
                return Intrinsics.areEqual(this.address, serversBean.address) && Intrinsics.areEqual(this.port, serversBean.port) && Intrinsics.areEqual(this.domains, serversBean.domains) && Intrinsics.areEqual(this.expectIPs, serversBean.expectIPs) && Intrinsics.areEqual(this.clientIp, serversBean.clientIp) && Intrinsics.areEqual(this.skipFallback, serversBean.skipFallback);
            }

            @NotNull
            public final String getAddress() {
                return this.address;
            }

            @Nullable
            public final String getClientIp() {
                return this.clientIp;
            }

            @Nullable
            public final List<String> getDomains() {
                return this.domains;
            }

            @Nullable
            public final List<String> getExpectIPs() {
                return this.expectIPs;
            }

            @Nullable
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            public final Boolean getSkipFallback() {
                return this.skipFallback;
            }

            public int hashCode() {
                int hashCode = this.address.hashCode() * 31;
                Integer num = this.port;
                int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
                List<String> list = this.domains;
                int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
                List<String> list2 = this.expectIPs;
                int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
                String str = this.clientIp;
                int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
                Boolean bool = this.skipFallback;
                return hashCode5 + (bool != null ? bool.hashCode() : 0);
            }

            public final void setAddress(@NotNull String str) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7743178331332880431L, -3763434250065122446L}).toString());
                this.address = str;
            }

            public final void setDomains(@Nullable List<String> list) {
                this.domains = list;
            }

            public final void setExpectIPs(@Nullable List<String> list) {
                this.expectIPs = list;
            }

            public final void setPort(@Nullable Integer num) {
                this.port = num;
            }

            @NotNull
            public String toString() {
                return "ServersBean(address=" + this.address + ", port=" + this.port + ", domains=" + this.domains + ", expectIPs=" + this.expectIPs + ", clientIp=" + this.clientIp + ", skipFallback=" + this.skipFallback + ")";
            }

            public ServersBean(@NotNull String str, @Nullable Integer num, @Nullable List<String> list, @Nullable List<String> list2, @Nullable String str2, @Nullable Boolean bool) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4831654942967746282L, -7560613791294194900L}).toString());
                this.address = str;
                this.port = num;
                this.domains = list;
                this.expectIPs = list2;
                this.clientIp = str2;
                this.skipFallback = bool;
            }

            public /* synthetic */ ServersBean(String str, Integer num, List list, List list2, String str2, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ObfuscatedString(new long[]{-8562080427982671715L}).toString() : str, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : list2, (i & 16) != 0 ? null : str2, (i & 32) == 0 ? bool : null);
            }
        }

        public DnsBean() {
            this(null, null, null, null, null, null, 63, null);
        }

        public static /* synthetic */ DnsBean copy$default(DnsBean dnsBean, ArrayList arrayList, Map map, String str, Boolean bool, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                arrayList = dnsBean.servers;
            }
            if ((i & 2) != 0) {
                map = dnsBean.hosts;
            }
            Map map2 = map;
            if ((i & 4) != 0) {
                str = dnsBean.clientIp;
            }
            String str4 = str;
            if ((i & 8) != 0) {
                bool = dnsBean.disableCache;
            }
            Boolean bool2 = bool;
            if ((i & 16) != 0) {
                str2 = dnsBean.queryStrategy;
            }
            String str5 = str2;
            if ((i & 32) != 0) {
                str3 = dnsBean.tag;
            }
            return dnsBean.copy(arrayList, map2, str4, bool2, str5, str3);
        }

        @Nullable
        public final ArrayList<Object> component1() {
            return this.servers;
        }

        @Nullable
        public final Map<String, Object> component2() {
            return this.hosts;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final String getClientIp() {
            return this.clientIp;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final Boolean getDisableCache() {
            return this.disableCache;
        }

        @Nullable
        /* renamed from: component5, reason: from getter */
        public final String getQueryStrategy() {
            return this.queryStrategy;
        }

        @Nullable
        /* renamed from: component6, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        @NotNull
        public final DnsBean copy(@Nullable ArrayList<Object> servers, @Nullable Map<String, ? extends Object> hosts, @Nullable String clientIp, @Nullable Boolean disableCache, @Nullable String queryStrategy, @Nullable String tag) {
            return new DnsBean(servers, hosts, clientIp, disableCache, queryStrategy, tag);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DnsBean)) {
                return false;
            }
            DnsBean dnsBean = (DnsBean) other;
            return Intrinsics.areEqual(this.servers, dnsBean.servers) && Intrinsics.areEqual(this.hosts, dnsBean.hosts) && Intrinsics.areEqual(this.clientIp, dnsBean.clientIp) && Intrinsics.areEqual(this.disableCache, dnsBean.disableCache) && Intrinsics.areEqual(this.queryStrategy, dnsBean.queryStrategy) && Intrinsics.areEqual(this.tag, dnsBean.tag);
        }

        @Nullable
        public final String getClientIp() {
            return this.clientIp;
        }

        @Nullable
        public final Boolean getDisableCache() {
            return this.disableCache;
        }

        @Nullable
        public final Map<String, Object> getHosts() {
            return this.hosts;
        }

        @Nullable
        public final String getQueryStrategy() {
            return this.queryStrategy;
        }

        @Nullable
        public final ArrayList<Object> getServers() {
            return this.servers;
        }

        @Nullable
        public final String getTag() {
            return this.tag;
        }

        public int hashCode() {
            ArrayList<Object> arrayList = this.servers;
            int hashCode = (arrayList == null ? 0 : arrayList.hashCode()) * 31;
            Map<String, ? extends Object> map = this.hosts;
            int hashCode2 = (hashCode + (map == null ? 0 : map.hashCode())) * 31;
            String str = this.clientIp;
            int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            Boolean bool = this.disableCache;
            int hashCode4 = (hashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
            String str2 = this.queryStrategy;
            int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.tag;
            return hashCode5 + (str3 != null ? str3.hashCode() : 0);
        }

        public final void setHosts(@Nullable Map<String, ? extends Object> map) {
            this.hosts = map;
        }

        public final void setServers(@Nullable ArrayList<Object> arrayList) {
            this.servers = arrayList;
        }

        @NotNull
        public String toString() {
            return "DnsBean(servers=" + this.servers + ", hosts=" + this.hosts + ", clientIp=" + this.clientIp + ", disableCache=" + this.disableCache + ", queryStrategy=" + this.queryStrategy + ", tag=" + this.tag + ")";
        }

        public DnsBean(@Nullable ArrayList<Object> arrayList, @Nullable Map<String, ? extends Object> map, @Nullable String str, @Nullable Boolean bool, @Nullable String str2, @Nullable String str3) {
            this.servers = arrayList;
            this.hosts = map;
            this.clientIp = str;
            this.disableCache = bool;
            this.queryStrategy = str2;
            this.tag = str3;
        }

        public /* synthetic */ DnsBean(ArrayList arrayList, Map map, String str, Boolean bool, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : arrayList, (i & 2) != 0 ? null : map, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;", "", "ipPool", "", "poolSize", "", "<init>", "(Ljava/lang/String;I)V", "getIpPool", "()Ljava/lang/String;", "setIpPool", "(Ljava/lang/String;)V", "getPoolSize", "()I", "setPoolSize", "(I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class FakednsBean {

        @NotNull
        private String ipPool;
        private int poolSize;

        /* JADX WARN: Multi-variable type inference failed */
        public FakednsBean() {
            this(null, 0, 3, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ FakednsBean copy$default(FakednsBean fakednsBean, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = fakednsBean.ipPool;
            }
            if ((i2 & 2) != 0) {
                i = fakednsBean.poolSize;
            }
            return fakednsBean.copy(str, i);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getIpPool() {
            return this.ipPool;
        }

        /* renamed from: component2, reason: from getter */
        public final int getPoolSize() {
            return this.poolSize;
        }

        @NotNull
        public final FakednsBean copy(@NotNull String ipPool, int poolSize) {
            Intrinsics.checkNotNullParameter(ipPool, new ObfuscatedString(new long[]{6626230163280142464L, -910893233187743633L}).toString());
            return new FakednsBean(ipPool, poolSize);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FakednsBean)) {
                return false;
            }
            FakednsBean fakednsBean = (FakednsBean) other;
            return Intrinsics.areEqual(this.ipPool, fakednsBean.ipPool) && this.poolSize == fakednsBean.poolSize;
        }

        @NotNull
        public final String getIpPool() {
            return this.ipPool;
        }

        public final int getPoolSize() {
            return this.poolSize;
        }

        public int hashCode() {
            return (this.ipPool.hashCode() * 31) + this.poolSize;
        }

        public final void setIpPool(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7499170843915169917L, 3254305839371184556L}).toString());
            this.ipPool = str;
        }

        public final void setPoolSize(int i) {
            this.poolSize = i;
        }

        @NotNull
        public String toString() {
            return "FakednsBean(ipPool=" + this.ipPool + ", poolSize=" + this.poolSize + ")";
        }

        public FakednsBean(@NotNull String str, int i) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7424480827849615496L, 7277916167668196074L}).toString());
            this.ipPool = str;
            this.poolSize = i;
        }

        public /* synthetic */ FakednsBean(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new ObfuscatedString(new long[]{8290624305748666400L, -1083048732971043096L, 4866147867810007684L}).toString() : str, (i2 & 2) != 0 ? 10000 : i);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0011J>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000b\"\u0004\b\u000e\u0010\u000fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$LogBean;", "", "access", "", "error", "loglevel", "dnsLog", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAccess", "()Ljava/lang/String;", "getError", "getLoglevel", "setLoglevel", "(Ljava/lang/String;)V", "getDnsLog", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$LogBean;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class LogBean {

        @Nullable
        private final String access;

        @Nullable
        private final Boolean dnsLog;

        @Nullable
        private final String error;

        @Nullable
        private String loglevel;

        public LogBean() {
            this(null, null, null, null, 15, null);
        }

        public static /* synthetic */ LogBean copy$default(LogBean logBean, String str, String str2, String str3, Boolean bool, int i, Object obj) {
            if ((i & 1) != 0) {
                str = logBean.access;
            }
            if ((i & 2) != 0) {
                str2 = logBean.error;
            }
            if ((i & 4) != 0) {
                str3 = logBean.loglevel;
            }
            if ((i & 8) != 0) {
                bool = logBean.dnsLog;
            }
            return logBean.copy(str, str2, str3, bool);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getAccess() {
            return this.access;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final String getError() {
            return this.error;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final String getLoglevel() {
            return this.loglevel;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final Boolean getDnsLog() {
            return this.dnsLog;
        }

        @NotNull
        public final LogBean copy(@Nullable String access, @Nullable String error, @Nullable String loglevel, @Nullable Boolean dnsLog) {
            return new LogBean(access, error, loglevel, dnsLog);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LogBean)) {
                return false;
            }
            LogBean logBean = (LogBean) other;
            return Intrinsics.areEqual(this.access, logBean.access) && Intrinsics.areEqual(this.error, logBean.error) && Intrinsics.areEqual(this.loglevel, logBean.loglevel) && Intrinsics.areEqual(this.dnsLog, logBean.dnsLog);
        }

        @Nullable
        public final String getAccess() {
            return this.access;
        }

        @Nullable
        public final Boolean getDnsLog() {
            return this.dnsLog;
        }

        @Nullable
        public final String getError() {
            return this.error;
        }

        @Nullable
        public final String getLoglevel() {
            return this.loglevel;
        }

        public int hashCode() {
            String str = this.access;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.error;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.loglevel;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Boolean bool = this.dnsLog;
            return hashCode3 + (bool != null ? bool.hashCode() : 0);
        }

        public final void setLoglevel(@Nullable String str) {
            this.loglevel = str;
        }

        @NotNull
        public String toString() {
            String str = this.access;
            String str2 = this.error;
            String str3 = this.loglevel;
            Boolean bool = this.dnsLog;
            StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("LogBean(access=", str, ", error=", str2, ", loglevel=");
            m2944x4440ab85.append(str3);
            m2944x4440ab85.append(", dnsLog=");
            m2944x4440ab85.append(bool);
            m2944x4440ab85.append(")");
            return m2944x4440ab85.toString();
        }

        public LogBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool) {
            this.access = str;
            this.error = str2;
            this.loglevel = str3;
            this.dnsLog = bool;
        }

        public /* synthetic */ LogBean(String str, String str2, String str3, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : bool);
        }
    }

    public V2rayConfig(@Nullable String str, @Nullable Object obj, @NotNull LogBean logBean, @Nullable PolicyBean policyBean, @NotNull ArrayList<InboundBean> arrayList, @NotNull ArrayList<OutboundBean> arrayList2, @Nullable DnsBean dnsBean, @NotNull RoutingBean routingBean, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6, @Nullable Object obj7, @Nullable Object obj8) {
        Intrinsics.checkNotNullParameter(logBean, new ObfuscatedString(new long[]{-2029904828285891708L, 3902039290485045587L}).toString());
        Intrinsics.checkNotNullParameter(arrayList, new ObfuscatedString(new long[]{-3187877833492242002L, -9211506106386045936L}).toString());
        Intrinsics.checkNotNullParameter(arrayList2, new ObfuscatedString(new long[]{3446656092651647708L, 8015692641513792335L, -185012910952397343L}).toString());
        Intrinsics.checkNotNullParameter(routingBean, new ObfuscatedString(new long[]{-7393465709125046987L, -7066285370392104038L}).toString());
        this.remarks = str;
        this.stats = obj;
        this.log = logBean;
        this.policy = policyBean;
        this.inbounds = arrayList;
        this.outbounds = arrayList2;
        this.dns = dnsBean;
        this.routing = routingBean;
        this.api = obj2;
        this.transport = obj3;
        this.reverse = obj4;
        this.fakedns = obj5;
        this.browserForwarder = obj6;
        this.observatory = obj7;
        this.burstObservatory = obj8;
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    /* renamed from: component10, reason: from getter */
    public final Object getTransport() {
        return this.transport;
    }

    @Nullable
    /* renamed from: component11, reason: from getter */
    public final Object getReverse() {
        return this.reverse;
    }

    @Nullable
    /* renamed from: component12, reason: from getter */
    public final Object getFakedns() {
        return this.fakedns;
    }

    @Nullable
    /* renamed from: component13, reason: from getter */
    public final Object getBrowserForwarder() {
        return this.browserForwarder;
    }

    @Nullable
    /* renamed from: component14, reason: from getter */
    public final Object getObservatory() {
        return this.observatory;
    }

    @Nullable
    /* renamed from: component15, reason: from getter */
    public final Object getBurstObservatory() {
        return this.burstObservatory;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Object getStats() {
        return this.stats;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final LogBean getLog() {
        return this.log;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final PolicyBean getPolicy() {
        return this.policy;
    }

    @NotNull
    public final ArrayList<InboundBean> component5() {
        return this.inbounds;
    }

    @NotNull
    public final ArrayList<OutboundBean> component6() {
        return this.outbounds;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final DnsBean getDns() {
        return this.dns;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final RoutingBean getRouting() {
        return this.routing;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final Object getApi() {
        return this.api;
    }

    @NotNull
    public final V2rayConfig copy(@Nullable String remarks, @Nullable Object stats, @NotNull LogBean log, @Nullable PolicyBean policy, @NotNull ArrayList<InboundBean> inbounds, @NotNull ArrayList<OutboundBean> outbounds, @Nullable DnsBean dns, @NotNull RoutingBean routing, @Nullable Object api, @Nullable Object transport, @Nullable Object reverse, @Nullable Object fakedns, @Nullable Object browserForwarder, @Nullable Object observatory, @Nullable Object burstObservatory) {
        Intrinsics.checkNotNullParameter(log, new ObfuscatedString(new long[]{-3407508203909677826L, 7771249752772464509L}).toString());
        Intrinsics.checkNotNullParameter(inbounds, new ObfuscatedString(new long[]{-5474136095592526636L, -2418837658022139470L}).toString());
        Intrinsics.checkNotNullParameter(outbounds, new ObfuscatedString(new long[]{-4646869141834934845L, 5849580484250173243L, -4329161136808106547L}).toString());
        Intrinsics.checkNotNullParameter(routing, new ObfuscatedString(new long[]{7212057142535458113L, -5312878425573893283L}).toString());
        return new V2rayConfig(remarks, stats, log, policy, inbounds, outbounds, dns, routing, api, transport, reverse, fakedns, browserForwarder, observatory, burstObservatory);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof V2rayConfig)) {
            return false;
        }
        V2rayConfig v2rayConfig = (V2rayConfig) other;
        return Intrinsics.areEqual(this.remarks, v2rayConfig.remarks) && Intrinsics.areEqual(this.stats, v2rayConfig.stats) && Intrinsics.areEqual(this.log, v2rayConfig.log) && Intrinsics.areEqual(this.policy, v2rayConfig.policy) && Intrinsics.areEqual(this.inbounds, v2rayConfig.inbounds) && Intrinsics.areEqual(this.outbounds, v2rayConfig.outbounds) && Intrinsics.areEqual(this.dns, v2rayConfig.dns) && Intrinsics.areEqual(this.routing, v2rayConfig.routing) && Intrinsics.areEqual(this.api, v2rayConfig.api) && Intrinsics.areEqual(this.transport, v2rayConfig.transport) && Intrinsics.areEqual(this.reverse, v2rayConfig.reverse) && Intrinsics.areEqual(this.fakedns, v2rayConfig.fakedns) && Intrinsics.areEqual(this.browserForwarder, v2rayConfig.browserForwarder) && Intrinsics.areEqual(this.observatory, v2rayConfig.observatory) && Intrinsics.areEqual(this.burstObservatory, v2rayConfig.burstObservatory);
    }

    @NotNull
    public final List<OutboundBean> getAllProxyOutbound() {
        ArrayList<OutboundBean> arrayList = this.outbounds;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            OutboundBean outboundBean = (OutboundBean) obj;
            EnumEntries<EConfigType> entries = EConfigType.getEntries();
            if (!(entries instanceof Collection) || !entries.isEmpty()) {
                Iterator<E> it = entries.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (AbstractC1197x89633db9.equals(((EConfigType) it.next()).name(), outboundBean.getProtocol(), true)) {
                        arrayList2.add(obj);
                        break;
                    }
                }
            }
        }
        return arrayList2;
    }

    @Nullable
    public final Object getApi() {
        return this.api;
    }

    @Nullable
    public final Object getBrowserForwarder() {
        return this.browserForwarder;
    }

    @Nullable
    public final Object getBurstObservatory() {
        return this.burstObservatory;
    }

    @Nullable
    public final DnsBean getDns() {
        return this.dns;
    }

    @Nullable
    public final Object getFakedns() {
        return this.fakedns;
    }

    @NotNull
    public final ArrayList<InboundBean> getInbounds() {
        return this.inbounds;
    }

    @NotNull
    public final LogBean getLog() {
        return this.log;
    }

    @Nullable
    public final Object getObservatory() {
        return this.observatory;
    }

    @NotNull
    public final ArrayList<OutboundBean> getOutbounds() {
        return this.outbounds;
    }

    @Nullable
    public final PolicyBean getPolicy() {
        return this.policy;
    }

    @Nullable
    public final OutboundBean getProxyOutbound() {
        for (OutboundBean outboundBean : this.outbounds) {
            Iterator<E> it = EConfigType.getEntries().iterator();
            while (it.hasNext()) {
                if (AbstractC1197x89633db9.equals(outboundBean.getProtocol(), ((EConfigType) it.next()).name(), true)) {
                    return outboundBean;
                }
            }
        }
        return null;
    }

    @Nullable
    public final String getRemarks() {
        return this.remarks;
    }

    @Nullable
    public final Object getReverse() {
        return this.reverse;
    }

    @NotNull
    public final RoutingBean getRouting() {
        return this.routing;
    }

    @Nullable
    public final Object getStats() {
        return this.stats;
    }

    @Nullable
    public final Object getTransport() {
        return this.transport;
    }

    public int hashCode() {
        String str = this.remarks;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Object obj = this.stats;
        int hashCode2 = (this.log.hashCode() + ((hashCode + (obj == null ? 0 : obj.hashCode())) * 31)) * 31;
        PolicyBean policyBean = this.policy;
        int hashCode3 = (this.outbounds.hashCode() + ((this.inbounds.hashCode() + ((hashCode2 + (policyBean == null ? 0 : policyBean.hashCode())) * 31)) * 31)) * 31;
        DnsBean dnsBean = this.dns;
        int hashCode4 = (this.routing.hashCode() + ((hashCode3 + (dnsBean == null ? 0 : dnsBean.hashCode())) * 31)) * 31;
        Object obj2 = this.api;
        int hashCode5 = (hashCode4 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.transport;
        int hashCode6 = (hashCode5 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        Object obj4 = this.reverse;
        int hashCode7 = (hashCode6 + (obj4 == null ? 0 : obj4.hashCode())) * 31;
        Object obj5 = this.fakedns;
        int hashCode8 = (hashCode7 + (obj5 == null ? 0 : obj5.hashCode())) * 31;
        Object obj6 = this.browserForwarder;
        int hashCode9 = (hashCode8 + (obj6 == null ? 0 : obj6.hashCode())) * 31;
        Object obj7 = this.observatory;
        int hashCode10 = (hashCode9 + (obj7 == null ? 0 : obj7.hashCode())) * 31;
        Object obj8 = this.burstObservatory;
        return hashCode10 + (obj8 != null ? obj8.hashCode() : 0);
    }

    public final void setBurstObservatory(@Nullable Object obj) {
        this.burstObservatory = obj;
    }

    public final void setDns(@Nullable DnsBean dnsBean) {
        this.dns = dnsBean;
    }

    public final void setFakedns(@Nullable Object obj) {
        this.fakedns = obj;
    }

    public final void setObservatory(@Nullable Object obj) {
        this.observatory = obj;
    }

    public final void setOutbounds(@NotNull ArrayList<OutboundBean> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, new ObfuscatedString(new long[]{1336891830023847233L, -6494008148880574690L}).toString());
        this.outbounds = arrayList;
    }

    public final void setPolicy(@Nullable PolicyBean policyBean) {
        this.policy = policyBean;
    }

    public final void setRemarks(@Nullable String str) {
        this.remarks = str;
    }

    public final void setStats(@Nullable Object obj) {
        this.stats = obj;
    }

    @NotNull
    public String toString() {
        return "V2rayConfig(remarks=" + this.remarks + ", stats=" + this.stats + ", log=" + this.log + ", policy=" + this.policy + ", inbounds=" + this.inbounds + ", outbounds=" + this.outbounds + ", dns=" + this.dns + ", routing=" + this.routing + ", api=" + this.api + ", transport=" + this.transport + ", reverse=" + this.reverse + ", fakedns=" + this.fakedns + ", browserForwarder=" + this.browserForwarder + ", observatory=" + this.observatory + ", burstObservatory=" + this.burstObservatory + ")";
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB'\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001R&\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;", "", "levels", "", "", "Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean$LevelBean;", "system", "<init>", "(Ljava/util/Map;Ljava/lang/Object;)V", "getLevels", "()Ljava/util/Map;", "setLevels", "(Ljava/util/Map;)V", "getSystem", "()Ljava/lang/Object;", "setSystem", "(Ljava/lang/Object;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "LevelBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class PolicyBean {

        @NotNull
        private Map<String, LevelBean> levels;

        @Nullable
        private Object system;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJb\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\b2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0014\u0010\u000e\"\u0004\b\u0015\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u0017\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u001c\u0010\u000e\"\u0004\b\u001d\u0010\u0010¨\u0006,"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean$LevelBean;", "", "handshake", "", "connIdle", "uplinkOnly", "downlinkOnly", "statsUserUplink", "", "statsUserDownlink", "bufferSize", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getHandshake", "()Ljava/lang/Integer;", "setHandshake", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getConnIdle", "setConnIdle", "getUplinkOnly", "setUplinkOnly", "getDownlinkOnly", "setDownlinkOnly", "getStatsUserUplink", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getStatsUserDownlink", "getBufferSize", "setBufferSize", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean$LevelBean;", "equals", "other", "hashCode", "toString", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class LevelBean {

            @Nullable
            private Integer bufferSize;

            @Nullable
            private Integer connIdle;

            @Nullable
            private Integer downlinkOnly;

            @Nullable
            private Integer handshake;

            @Nullable
            private final Boolean statsUserDownlink;

            @Nullable
            private final Boolean statsUserUplink;

            @Nullable
            private Integer uplinkOnly;

            public LevelBean() {
                this(null, null, null, null, null, null, null, 127, null);
            }

            public static /* synthetic */ LevelBean copy$default(LevelBean levelBean, Integer num, Integer num2, Integer num3, Integer num4, Boolean bool, Boolean bool2, Integer num5, int i, Object obj) {
                if ((i & 1) != 0) {
                    num = levelBean.handshake;
                }
                if ((i & 2) != 0) {
                    num2 = levelBean.connIdle;
                }
                Integer num6 = num2;
                if ((i & 4) != 0) {
                    num3 = levelBean.uplinkOnly;
                }
                Integer num7 = num3;
                if ((i & 8) != 0) {
                    num4 = levelBean.downlinkOnly;
                }
                Integer num8 = num4;
                if ((i & 16) != 0) {
                    bool = levelBean.statsUserUplink;
                }
                Boolean bool3 = bool;
                if ((i & 32) != 0) {
                    bool2 = levelBean.statsUserDownlink;
                }
                Boolean bool4 = bool2;
                if ((i & 64) != 0) {
                    num5 = levelBean.bufferSize;
                }
                return levelBean.copy(num, num6, num7, num8, bool3, bool4, num5);
            }

            @Nullable
            /* renamed from: component1, reason: from getter */
            public final Integer getHandshake() {
                return this.handshake;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final Integer getConnIdle() {
                return this.connIdle;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final Integer getUplinkOnly() {
                return this.uplinkOnly;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final Integer getDownlinkOnly() {
                return this.downlinkOnly;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final Boolean getStatsUserUplink() {
                return this.statsUserUplink;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final Boolean getStatsUserDownlink() {
                return this.statsUserDownlink;
            }

            @Nullable
            /* renamed from: component7, reason: from getter */
            public final Integer getBufferSize() {
                return this.bufferSize;
            }

            @NotNull
            public final LevelBean copy(@Nullable Integer handshake, @Nullable Integer connIdle, @Nullable Integer uplinkOnly, @Nullable Integer downlinkOnly, @Nullable Boolean statsUserUplink, @Nullable Boolean statsUserDownlink, @Nullable Integer bufferSize) {
                return new LevelBean(handshake, connIdle, uplinkOnly, downlinkOnly, statsUserUplink, statsUserDownlink, bufferSize);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof LevelBean)) {
                    return false;
                }
                LevelBean levelBean = (LevelBean) other;
                return Intrinsics.areEqual(this.handshake, levelBean.handshake) && Intrinsics.areEqual(this.connIdle, levelBean.connIdle) && Intrinsics.areEqual(this.uplinkOnly, levelBean.uplinkOnly) && Intrinsics.areEqual(this.downlinkOnly, levelBean.downlinkOnly) && Intrinsics.areEqual(this.statsUserUplink, levelBean.statsUserUplink) && Intrinsics.areEqual(this.statsUserDownlink, levelBean.statsUserDownlink) && Intrinsics.areEqual(this.bufferSize, levelBean.bufferSize);
            }

            @Nullable
            public final Integer getBufferSize() {
                return this.bufferSize;
            }

            @Nullable
            public final Integer getConnIdle() {
                return this.connIdle;
            }

            @Nullable
            public final Integer getDownlinkOnly() {
                return this.downlinkOnly;
            }

            @Nullable
            public final Integer getHandshake() {
                return this.handshake;
            }

            @Nullable
            public final Boolean getStatsUserDownlink() {
                return this.statsUserDownlink;
            }

            @Nullable
            public final Boolean getStatsUserUplink() {
                return this.statsUserUplink;
            }

            @Nullable
            public final Integer getUplinkOnly() {
                return this.uplinkOnly;
            }

            public int hashCode() {
                Integer num = this.handshake;
                int hashCode = (num == null ? 0 : num.hashCode()) * 31;
                Integer num2 = this.connIdle;
                int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
                Integer num3 = this.uplinkOnly;
                int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
                Integer num4 = this.downlinkOnly;
                int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
                Boolean bool = this.statsUserUplink;
                int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
                Boolean bool2 = this.statsUserDownlink;
                int hashCode6 = (hashCode5 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
                Integer num5 = this.bufferSize;
                return hashCode6 + (num5 != null ? num5.hashCode() : 0);
            }

            public final void setBufferSize(@Nullable Integer num) {
                this.bufferSize = num;
            }

            public final void setConnIdle(@Nullable Integer num) {
                this.connIdle = num;
            }

            public final void setDownlinkOnly(@Nullable Integer num) {
                this.downlinkOnly = num;
            }

            public final void setHandshake(@Nullable Integer num) {
                this.handshake = num;
            }

            public final void setUplinkOnly(@Nullable Integer num) {
                this.uplinkOnly = num;
            }

            @NotNull
            public String toString() {
                return "LevelBean(handshake=" + this.handshake + ", connIdle=" + this.connIdle + ", uplinkOnly=" + this.uplinkOnly + ", downlinkOnly=" + this.downlinkOnly + ", statsUserUplink=" + this.statsUserUplink + ", statsUserDownlink=" + this.statsUserDownlink + ", bufferSize=" + this.bufferSize + ")";
            }

            public LevelBean(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num5) {
                this.handshake = num;
                this.connIdle = num2;
                this.uplinkOnly = num3;
                this.downlinkOnly = num4;
                this.statsUserUplink = bool;
                this.statsUserDownlink = bool2;
                this.bufferSize = num5;
            }

            public /* synthetic */ LevelBean(Integer num, Integer num2, Integer num3, Integer num4, Boolean bool, Boolean bool2, Integer num5, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : num2, (i & 4) != 0 ? null : num3, (i & 8) != 0 ? null : num4, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? null : bool2, (i & 64) != 0 ? null : num5);
            }
        }

        public PolicyBean(@NotNull Map<String, LevelBean> map, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(map, new ObfuscatedString(new long[]{8183406950806395239L, 4095920480548283907L}).toString());
            this.levels = map;
            this.system = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PolicyBean copy$default(PolicyBean policyBean, Map map, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                map = policyBean.levels;
            }
            if ((i & 2) != 0) {
                obj = policyBean.system;
            }
            return policyBean.copy(map, obj);
        }

        @NotNull
        public final Map<String, LevelBean> component1() {
            return this.levels;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final Object getSystem() {
            return this.system;
        }

        @NotNull
        public final PolicyBean copy(@NotNull Map<String, LevelBean> levels, @Nullable Object system) {
            Intrinsics.checkNotNullParameter(levels, new ObfuscatedString(new long[]{5883115524745401289L, 784745250636654580L}).toString());
            return new PolicyBean(levels, system);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PolicyBean)) {
                return false;
            }
            PolicyBean policyBean = (PolicyBean) other;
            return Intrinsics.areEqual(this.levels, policyBean.levels) && Intrinsics.areEqual(this.system, policyBean.system);
        }

        @NotNull
        public final Map<String, LevelBean> getLevels() {
            return this.levels;
        }

        @Nullable
        public final Object getSystem() {
            return this.system;
        }

        public int hashCode() {
            int hashCode = this.levels.hashCode() * 31;
            Object obj = this.system;
            return hashCode + (obj == null ? 0 : obj.hashCode());
        }

        public final void setLevels(@NotNull Map<String, LevelBean> map) {
            Intrinsics.checkNotNullParameter(map, new ObfuscatedString(new long[]{9032306145641279499L, 5441277176530739031L}).toString());
            this.levels = map;
        }

        public final void setSystem(@Nullable Object obj) {
            this.system = obj;
        }

        @NotNull
        public String toString() {
            return "PolicyBean(levels=" + this.levels + ", system=" + this.system + ")";
        }

        public /* synthetic */ PolicyBean(Map map, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(map, (i & 2) != 0 ? null : obj);
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0005'()*+BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0019\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bHÆ\u0003J\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nHÆ\u0003JK\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R*\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006,"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;", "", "domainStrategy", "", "domainMatcher", "rules", "Ljava/util/ArrayList;", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;", "Lkotlin/collections/ArrayList;", "balancers", "", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V", "getDomainStrategy", "()Ljava/lang/String;", "setDomainStrategy", "(Ljava/lang/String;)V", "getDomainMatcher", "setDomainMatcher", "getRules", "()Ljava/util/ArrayList;", "setRules", "(Ljava/util/ArrayList;)V", "getBalancers", "()Ljava/util/List;", "setBalancers", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "RulesBean", "BalancerBean", "StrategyObject", "StrategySettingsObject", "CostObject", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class RoutingBean {

        @Nullable
        private List<BalancerBean> balancers;

        @Nullable
        private String domainMatcher;

        @NotNull
        private String domainStrategy;

        @NotNull
        private ArrayList<RulesBean> rules;

        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b2\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bé\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006\u0012\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u001d\u00102\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006HÆ\u0003J\u001d\u00103\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u00109\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\u0011\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\u0011\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\u0011\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jë\u0001\u0010?\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00062\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010@\u001a\u00020A2\b\u0010B\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010C\u001a\u00020DHÖ\u0001J\t\u0010E\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001b\"\u0004\b\u001f\u0010\u001dR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0017R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b*\u0010)R\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010)\"\u0004\b,\u0010-R\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b.\u0010)R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0017R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0017¨\u0006F"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "ip", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "domain", "outboundTag", "balancerTag", "port", "sourcePort", "network", "source", "", "user", "inboundTag", "protocol", "attrs", "domainMatcher", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getIp", "()Ljava/util/ArrayList;", "setIp", "(Ljava/util/ArrayList;)V", "getDomain", "setDomain", "getOutboundTag", "setOutboundTag", "getBalancerTag", "setBalancerTag", "getPort", "setPort", "getSourcePort", "getNetwork", "getSource", "()Ljava/util/List;", "getUser", "getInboundTag", "setInboundTag", "(Ljava/util/List;)V", "getProtocol", "getAttrs", "getDomainMatcher", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class RulesBean {

            @Nullable
            private final String attrs;

            @Nullable
            private String balancerTag;

            @Nullable
            private ArrayList<String> domain;

            @Nullable
            private final String domainMatcher;

            @Nullable
            private List<String> inboundTag;

            @Nullable
            private ArrayList<String> ip;

            @Nullable
            private final String network;

            @Nullable
            private String outboundTag;

            @Nullable
            private String port;

            @Nullable
            private final List<String> protocol;

            @Nullable
            private final List<String> source;

            @Nullable
            private final String sourcePort;

            @NotNull
            private String type;

            @Nullable
            private final List<String> user;

            public RulesBean() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getType() {
                return this.type;
            }

            @Nullable
            public final List<String> component10() {
                return this.user;
            }

            @Nullable
            public final List<String> component11() {
                return this.inboundTag;
            }

            @Nullable
            public final List<String> component12() {
                return this.protocol;
            }

            @Nullable
            /* renamed from: component13, reason: from getter */
            public final String getAttrs() {
                return this.attrs;
            }

            @Nullable
            /* renamed from: component14, reason: from getter */
            public final String getDomainMatcher() {
                return this.domainMatcher;
            }

            @Nullable
            public final ArrayList<String> component2() {
                return this.ip;
            }

            @Nullable
            public final ArrayList<String> component3() {
                return this.domain;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final String getOutboundTag() {
                return this.outboundTag;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final String getBalancerTag() {
                return this.balancerTag;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final String getPort() {
                return this.port;
            }

            @Nullable
            /* renamed from: component7, reason: from getter */
            public final String getSourcePort() {
                return this.sourcePort;
            }

            @Nullable
            /* renamed from: component8, reason: from getter */
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            public final List<String> component9() {
                return this.source;
            }

            @NotNull
            public final RulesBean copy(@NotNull String type, @Nullable ArrayList<String> ip, @Nullable ArrayList<String> domain, @Nullable String outboundTag, @Nullable String balancerTag, @Nullable String port, @Nullable String sourcePort, @Nullable String network, @Nullable List<String> source, @Nullable List<String> user, @Nullable List<String> inboundTag, @Nullable List<String> protocol, @Nullable String attrs, @Nullable String domainMatcher) {
                Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{3277030576660777672L, 5076539239257050829L}).toString());
                return new RulesBean(type, ip, domain, outboundTag, balancerTag, port, sourcePort, network, source, user, inboundTag, protocol, attrs, domainMatcher);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof RulesBean)) {
                    return false;
                }
                RulesBean rulesBean = (RulesBean) other;
                return Intrinsics.areEqual(this.type, rulesBean.type) && Intrinsics.areEqual(this.ip, rulesBean.ip) && Intrinsics.areEqual(this.domain, rulesBean.domain) && Intrinsics.areEqual(this.outboundTag, rulesBean.outboundTag) && Intrinsics.areEqual(this.balancerTag, rulesBean.balancerTag) && Intrinsics.areEqual(this.port, rulesBean.port) && Intrinsics.areEqual(this.sourcePort, rulesBean.sourcePort) && Intrinsics.areEqual(this.network, rulesBean.network) && Intrinsics.areEqual(this.source, rulesBean.source) && Intrinsics.areEqual(this.user, rulesBean.user) && Intrinsics.areEqual(this.inboundTag, rulesBean.inboundTag) && Intrinsics.areEqual(this.protocol, rulesBean.protocol) && Intrinsics.areEqual(this.attrs, rulesBean.attrs) && Intrinsics.areEqual(this.domainMatcher, rulesBean.domainMatcher);
            }

            @Nullable
            public final String getAttrs() {
                return this.attrs;
            }

            @Nullable
            public final String getBalancerTag() {
                return this.balancerTag;
            }

            @Nullable
            public final ArrayList<String> getDomain() {
                return this.domain;
            }

            @Nullable
            public final String getDomainMatcher() {
                return this.domainMatcher;
            }

            @Nullable
            public final List<String> getInboundTag() {
                return this.inboundTag;
            }

            @Nullable
            public final ArrayList<String> getIp() {
                return this.ip;
            }

            @Nullable
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            public final String getOutboundTag() {
                return this.outboundTag;
            }

            @Nullable
            public final String getPort() {
                return this.port;
            }

            @Nullable
            public final List<String> getProtocol() {
                return this.protocol;
            }

            @Nullable
            public final List<String> getSource() {
                return this.source;
            }

            @Nullable
            public final String getSourcePort() {
                return this.sourcePort;
            }

            @NotNull
            public final String getType() {
                return this.type;
            }

            @Nullable
            public final List<String> getUser() {
                return this.user;
            }

            public int hashCode() {
                int hashCode = this.type.hashCode() * 31;
                ArrayList<String> arrayList = this.ip;
                int hashCode2 = (hashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
                ArrayList<String> arrayList2 = this.domain;
                int hashCode3 = (hashCode2 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
                String str = this.outboundTag;
                int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.balancerTag;
                int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.port;
                int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.sourcePort;
                int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.network;
                int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
                List<String> list = this.source;
                int hashCode9 = (hashCode8 + (list == null ? 0 : list.hashCode())) * 31;
                List<String> list2 = this.user;
                int hashCode10 = (hashCode9 + (list2 == null ? 0 : list2.hashCode())) * 31;
                List<String> list3 = this.inboundTag;
                int hashCode11 = (hashCode10 + (list3 == null ? 0 : list3.hashCode())) * 31;
                List<String> list4 = this.protocol;
                int hashCode12 = (hashCode11 + (list4 == null ? 0 : list4.hashCode())) * 31;
                String str6 = this.attrs;
                int hashCode13 = (hashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
                String str7 = this.domainMatcher;
                return hashCode13 + (str7 != null ? str7.hashCode() : 0);
            }

            public final void setBalancerTag(@Nullable String str) {
                this.balancerTag = str;
            }

            public final void setDomain(@Nullable ArrayList<String> arrayList) {
                this.domain = arrayList;
            }

            public final void setInboundTag(@Nullable List<String> list) {
                this.inboundTag = list;
            }

            public final void setIp(@Nullable ArrayList<String> arrayList) {
                this.ip = arrayList;
            }

            public final void setOutboundTag(@Nullable String str) {
                this.outboundTag = str;
            }

            public final void setPort(@Nullable String str) {
                this.port = str;
            }

            public final void setType(@NotNull String str) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-9186615763268810664L, -7794913523874818623L}).toString());
                this.type = str;
            }

            @NotNull
            public String toString() {
                String str = this.type;
                ArrayList<String> arrayList = this.ip;
                ArrayList<String> arrayList2 = this.domain;
                String str2 = this.outboundTag;
                String str3 = this.balancerTag;
                String str4 = this.port;
                String str5 = this.sourcePort;
                String str6 = this.network;
                List<String> list = this.source;
                List<String> list2 = this.user;
                List<String> list3 = this.inboundTag;
                List<String> list4 = this.protocol;
                String str7 = this.attrs;
                String str8 = this.domainMatcher;
                StringBuilder sb = new StringBuilder("RulesBean(type=");
                sb.append(str);
                sb.append(", ip=");
                sb.append(arrayList);
                sb.append(", domain=");
                sb.append(arrayList2);
                sb.append(", outboundTag=");
                sb.append(str2);
                sb.append(", balancerTag=");
                AbstractC0749x8313616e.m3350x5ac5058d(sb, str3, ", port=", str4, ", sourcePort=");
                AbstractC0749x8313616e.m3350x5ac5058d(sb, str5, ", network=", str6, ", source=");
                sb.append(list);
                sb.append(", user=");
                sb.append(list2);
                sb.append(", inboundTag=");
                sb.append(list3);
                sb.append(", protocol=");
                sb.append(list4);
                sb.append(", attrs=");
                sb.append(str7);
                sb.append(", domainMatcher=");
                sb.append(str8);
                sb.append(")");
                return sb.toString();
            }

            public RulesBean(@NotNull String str, @Nullable ArrayList<String> arrayList, @Nullable ArrayList<String> arrayList2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @Nullable List<String> list4, @Nullable String str7, @Nullable String str8) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-7689488541096175321L, 718536261953814753L}).toString());
                this.type = str;
                this.ip = arrayList;
                this.domain = arrayList2;
                this.outboundTag = str2;
                this.balancerTag = str3;
                this.port = str4;
                this.sourcePort = str5;
                this.network = str6;
                this.source = list;
                this.user = list2;
                this.inboundTag = list3;
                this.protocol = list4;
                this.attrs = str7;
                this.domainMatcher = str8;
            }

            public /* synthetic */ RulesBean(String str, ArrayList arrayList, ArrayList arrayList2, String str2, String str3, String str4, String str5, String str6, List list, List list2, List list3, List list4, String str7, String str8, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ObfuscatedString(new long[]{-1012759191606425939L, -3280341048746587732L}).toString() : str, (2 & i) != 0 ? null : arrayList, (i & 4) != 0 ? null : arrayList2, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : list, (i & 512) != 0 ? null : list2, (i & 1024) != 0 ? null : list3, (i & 2048) != 0 ? null : list4, (i & 4096) != 0 ? null : str7, (i & 8192) == 0 ? str8 : null);
            }
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "settings", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;)V", "getType", "()Ljava/lang/String;", "getSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class StrategyObject {

            @Nullable
            private final StrategySettingsObject settings;

            @NotNull
            private final String type;

            /* JADX WARN: Multi-variable type inference failed */
            public StrategyObject() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public static /* synthetic */ StrategyObject copy$default(StrategyObject strategyObject, String str, StrategySettingsObject strategySettingsObject, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = strategyObject.type;
                }
                if ((i & 2) != 0) {
                    strategySettingsObject = strategyObject.settings;
                }
                return strategyObject.copy(str, strategySettingsObject);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getType() {
                return this.type;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final StrategySettingsObject getSettings() {
                return this.settings;
            }

            @NotNull
            public final StrategyObject copy(@NotNull String type, @Nullable StrategySettingsObject settings) {
                Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{-1164132255078756016L, -1438730019466718000L}).toString());
                return new StrategyObject(type, settings);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof StrategyObject)) {
                    return false;
                }
                StrategyObject strategyObject = (StrategyObject) other;
                return Intrinsics.areEqual(this.type, strategyObject.type) && Intrinsics.areEqual(this.settings, strategyObject.settings);
            }

            @Nullable
            public final StrategySettingsObject getSettings() {
                return this.settings;
            }

            @NotNull
            public final String getType() {
                return this.type;
            }

            public int hashCode() {
                int hashCode = this.type.hashCode() * 31;
                StrategySettingsObject strategySettingsObject = this.settings;
                return hashCode + (strategySettingsObject == null ? 0 : strategySettingsObject.hashCode());
            }

            @NotNull
            public String toString() {
                return "StrategyObject(type=" + this.type + ", settings=" + this.settings + ")";
            }

            public StrategyObject(@NotNull String str, @Nullable StrategySettingsObject strategySettingsObject) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6916525255534164841L, -1126358739973722881L}).toString());
                this.type = str;
                this.settings = strategySettingsObject;
            }

            public /* synthetic */ StrategyObject(String str, StrategySettingsObject strategySettingsObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ObfuscatedString(new long[]{5262630943273539987L, -4694713473626185170L}).toString() : str, (i & 2) != 0 ? null : strategySettingsObject);
            }
        }

        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tHÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tHÆ\u0003JV\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017¨\u0006%"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;", "", "expected", "", "maxRTT", "", "tolerance", "", "baselines", "", "costs", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;)V", "getExpected", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMaxRTT", "()Ljava/lang/String;", "getTolerance", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getBaselines", "()Ljava/util/List;", "getCosts", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class StrategySettingsObject {

            @Nullable
            private final List<String> baselines;

            @Nullable
            private final List<CostObject> costs;

            @Nullable
            private final Integer expected;

            @Nullable
            private final String maxRTT;

            @Nullable
            private final Double tolerance;

            public StrategySettingsObject() {
                this(null, null, null, null, null, 31, null);
            }

            public static /* synthetic */ StrategySettingsObject copy$default(StrategySettingsObject strategySettingsObject, Integer num, String str, Double d, List list, List list2, int i, Object obj) {
                if ((i & 1) != 0) {
                    num = strategySettingsObject.expected;
                }
                if ((i & 2) != 0) {
                    str = strategySettingsObject.maxRTT;
                }
                String str2 = str;
                if ((i & 4) != 0) {
                    d = strategySettingsObject.tolerance;
                }
                Double d2 = d;
                if ((i & 8) != 0) {
                    list = strategySettingsObject.baselines;
                }
                List list3 = list;
                if ((i & 16) != 0) {
                    list2 = strategySettingsObject.costs;
                }
                return strategySettingsObject.copy(num, str2, d2, list3, list2);
            }

            @Nullable
            /* renamed from: component1, reason: from getter */
            public final Integer getExpected() {
                return this.expected;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final String getMaxRTT() {
                return this.maxRTT;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final Double getTolerance() {
                return this.tolerance;
            }

            @Nullable
            public final List<String> component4() {
                return this.baselines;
            }

            @Nullable
            public final List<CostObject> component5() {
                return this.costs;
            }

            @NotNull
            public final StrategySettingsObject copy(@Nullable Integer expected, @Nullable String maxRTT, @Nullable Double tolerance, @Nullable List<String> baselines, @Nullable List<CostObject> costs) {
                return new StrategySettingsObject(expected, maxRTT, tolerance, baselines, costs);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof StrategySettingsObject)) {
                    return false;
                }
                StrategySettingsObject strategySettingsObject = (StrategySettingsObject) other;
                return Intrinsics.areEqual(this.expected, strategySettingsObject.expected) && Intrinsics.areEqual(this.maxRTT, strategySettingsObject.maxRTT) && Intrinsics.areEqual((Object) this.tolerance, (Object) strategySettingsObject.tolerance) && Intrinsics.areEqual(this.baselines, strategySettingsObject.baselines) && Intrinsics.areEqual(this.costs, strategySettingsObject.costs);
            }

            @Nullable
            public final List<String> getBaselines() {
                return this.baselines;
            }

            @Nullable
            public final List<CostObject> getCosts() {
                return this.costs;
            }

            @Nullable
            public final Integer getExpected() {
                return this.expected;
            }

            @Nullable
            public final String getMaxRTT() {
                return this.maxRTT;
            }

            @Nullable
            public final Double getTolerance() {
                return this.tolerance;
            }

            public int hashCode() {
                Integer num = this.expected;
                int hashCode = (num == null ? 0 : num.hashCode()) * 31;
                String str = this.maxRTT;
                int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                Double d = this.tolerance;
                int hashCode3 = (hashCode2 + (d == null ? 0 : d.hashCode())) * 31;
                List<String> list = this.baselines;
                int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
                List<CostObject> list2 = this.costs;
                return hashCode4 + (list2 != null ? list2.hashCode() : 0);
            }

            @NotNull
            public String toString() {
                return "StrategySettingsObject(expected=" + this.expected + ", maxRTT=" + this.maxRTT + ", tolerance=" + this.tolerance + ", baselines=" + this.baselines + ", costs=" + this.costs + ")";
            }

            public StrategySettingsObject(@Nullable Integer num, @Nullable String str, @Nullable Double d, @Nullable List<String> list, @Nullable List<CostObject> list2) {
                this.expected = num;
                this.maxRTT = str;
                this.tolerance = d;
                this.baselines = list;
                this.costs = list2;
            }

            public /* synthetic */ StrategySettingsObject(Integer num, String str, Double d, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : d, (i & 8) != 0 ? null : list, (i & 16) != 0 ? null : list2);
            }
        }

        public RoutingBean(@NotNull String str, @Nullable String str2, @NotNull ArrayList<RulesBean> arrayList, @Nullable List<BalancerBean> list) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{5745052167107876010L, -3435502725787409371L, -8175189190241822597L}).toString());
            Intrinsics.checkNotNullParameter(arrayList, new ObfuscatedString(new long[]{8856303008210092726L, -8891949926231602220L}).toString());
            this.domainStrategy = str;
            this.domainMatcher = str2;
            this.rules = arrayList;
            this.balancers = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RoutingBean copy$default(RoutingBean routingBean, String str, String str2, ArrayList arrayList, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = routingBean.domainStrategy;
            }
            if ((i & 2) != 0) {
                str2 = routingBean.domainMatcher;
            }
            if ((i & 4) != 0) {
                arrayList = routingBean.rules;
            }
            if ((i & 8) != 0) {
                list = routingBean.balancers;
            }
            return routingBean.copy(str, str2, arrayList, list);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getDomainStrategy() {
            return this.domainStrategy;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final String getDomainMatcher() {
            return this.domainMatcher;
        }

        @NotNull
        public final ArrayList<RulesBean> component3() {
            return this.rules;
        }

        @Nullable
        public final List<BalancerBean> component4() {
            return this.balancers;
        }

        @NotNull
        public final RoutingBean copy(@NotNull String domainStrategy, @Nullable String domainMatcher, @NotNull ArrayList<RulesBean> rules, @Nullable List<BalancerBean> balancers) {
            Intrinsics.checkNotNullParameter(domainStrategy, new ObfuscatedString(new long[]{-8134129984192668058L, 2906309019665623942L, 9125581847670827221L}).toString());
            Intrinsics.checkNotNullParameter(rules, new ObfuscatedString(new long[]{766021690256186169L, 4130015021233196708L}).toString());
            return new RoutingBean(domainStrategy, domainMatcher, rules, balancers);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RoutingBean)) {
                return false;
            }
            RoutingBean routingBean = (RoutingBean) other;
            return Intrinsics.areEqual(this.domainStrategy, routingBean.domainStrategy) && Intrinsics.areEqual(this.domainMatcher, routingBean.domainMatcher) && Intrinsics.areEqual(this.rules, routingBean.rules) && Intrinsics.areEqual(this.balancers, routingBean.balancers);
        }

        @Nullable
        public final List<BalancerBean> getBalancers() {
            return this.balancers;
        }

        @Nullable
        public final String getDomainMatcher() {
            return this.domainMatcher;
        }

        @NotNull
        public final String getDomainStrategy() {
            return this.domainStrategy;
        }

        @NotNull
        public final ArrayList<RulesBean> getRules() {
            return this.rules;
        }

        public int hashCode() {
            int hashCode = this.domainStrategy.hashCode() * 31;
            String str = this.domainMatcher;
            int hashCode2 = (this.rules.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            List<BalancerBean> list = this.balancers;
            return hashCode2 + (list != null ? list.hashCode() : 0);
        }

        public final void setBalancers(@Nullable List<BalancerBean> list) {
            this.balancers = list;
        }

        public final void setDomainMatcher(@Nullable String str) {
            this.domainMatcher = str;
        }

        public final void setDomainStrategy(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8075867020913343189L, -1152695034743080586L}).toString());
            this.domainStrategy = str;
        }

        public final void setRules(@NotNull ArrayList<RulesBean> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, new ObfuscatedString(new long[]{-5385435604390533926L, 1001145788046885923L}).toString());
            this.rules = arrayList;
        }

        @NotNull
        public String toString() {
            String str = this.domainStrategy;
            String str2 = this.domainMatcher;
            ArrayList<RulesBean> arrayList = this.rules;
            List<BalancerBean> list = this.balancers;
            StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("RoutingBean(domainStrategy=", str, ", domainMatcher=", str2, ", rules=");
            m2944x4440ab85.append(arrayList);
            m2944x4440ab85.append(", balancers=");
            m2944x4440ab85.append(list);
            m2944x4440ab85.append(")");
            return m2944x4440ab85.toString();
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$CostObject;", "", "regexp", "", "match", "", "value", "", "<init>", "(ZLjava/lang/String;D)V", "getRegexp", "()Z", "getMatch", "()Ljava/lang/String;", "getValue", "()D", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class CostObject {

            @NotNull
            private final String match;
            private final boolean regexp;
            private final double value;

            public CostObject(boolean z, @NotNull String str, double d) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6565426255341967948L, -5273725065906390600L}).toString());
                this.regexp = z;
                this.match = str;
                this.value = d;
            }

            public static /* synthetic */ CostObject copy$default(CostObject costObject, boolean z, String str, double d, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = costObject.regexp;
                }
                if ((i & 2) != 0) {
                    str = costObject.match;
                }
                if ((i & 4) != 0) {
                    d = costObject.value;
                }
                return costObject.copy(z, str, d);
            }

            /* renamed from: component1, reason: from getter */
            public final boolean getRegexp() {
                return this.regexp;
            }

            @NotNull
            /* renamed from: component2, reason: from getter */
            public final String getMatch() {
                return this.match;
            }

            /* renamed from: component3, reason: from getter */
            public final double getValue() {
                return this.value;
            }

            @NotNull
            public final CostObject copy(boolean regexp, @NotNull String match, double value) {
                Intrinsics.checkNotNullParameter(match, new ObfuscatedString(new long[]{-5687591999998520545L, 45504922877891284L}).toString());
                return new CostObject(regexp, match, value);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof CostObject)) {
                    return false;
                }
                CostObject costObject = (CostObject) other;
                return this.regexp == costObject.regexp && Intrinsics.areEqual(this.match, costObject.match) && Double.compare(this.value, costObject.value) == 0;
            }

            @NotNull
            public final String getMatch() {
                return this.match;
            }

            public final boolean getRegexp() {
                return this.regexp;
            }

            public final double getValue() {
                return this.value;
            }

            public int hashCode() {
                int i;
                if (this.regexp) {
                    i = 1231;
                } else {
                    i = 1237;
                }
                int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(i * 31, 31, this.match);
                long doubleToLongBits = Double.doubleToLongBits(this.value);
                return m2927x1378447b + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
            }

            @NotNull
            public String toString() {
                return "CostObject(regexp=" + this.regexp + ", match=" + this.match + ", value=" + this.value + ")";
            }

            public /* synthetic */ CostObject(boolean z, String str, double d, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? false : z, str, d);
            }
        }

        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;", "", "tag", "", "selector", "", "fallbackTag", "strategy", "Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;)V", "getTag", "()Ljava/lang/String;", "getSelector", "()Ljava/util/List;", "getFallbackTag", "getStrategy", "()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class BalancerBean {

            @Nullable
            private final String fallbackTag;

            @NotNull
            private final List<String> selector;

            @Nullable
            private final StrategyObject strategy;

            @NotNull
            private final String tag;

            public BalancerBean(@NotNull String str, @NotNull List<String> list, @Nullable String str2, @Nullable StrategyObject strategyObject) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7787588006171492100L, 4265858407582560865L}).toString());
                Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{6072288067477128650L, 488183552967929865L}).toString());
                this.tag = str;
                this.selector = list;
                this.fallbackTag = str2;
                this.strategy = strategyObject;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ BalancerBean copy$default(BalancerBean balancerBean, String str, List list, String str2, StrategyObject strategyObject, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = balancerBean.tag;
                }
                if ((i & 2) != 0) {
                    list = balancerBean.selector;
                }
                if ((i & 4) != 0) {
                    str2 = balancerBean.fallbackTag;
                }
                if ((i & 8) != 0) {
                    strategyObject = balancerBean.strategy;
                }
                return balancerBean.copy(str, list, str2, strategyObject);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getTag() {
                return this.tag;
            }

            @NotNull
            public final List<String> component2() {
                return this.selector;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final String getFallbackTag() {
                return this.fallbackTag;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final StrategyObject getStrategy() {
                return this.strategy;
            }

            @NotNull
            public final BalancerBean copy(@NotNull String tag, @NotNull List<String> selector, @Nullable String fallbackTag, @Nullable StrategyObject strategy) {
                Intrinsics.checkNotNullParameter(tag, new ObfuscatedString(new long[]{-5853229661710572068L, 853848166838978137L}).toString());
                Intrinsics.checkNotNullParameter(selector, new ObfuscatedString(new long[]{-2495300440313100409L, -2811344647128578409L}).toString());
                return new BalancerBean(tag, selector, fallbackTag, strategy);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof BalancerBean)) {
                    return false;
                }
                BalancerBean balancerBean = (BalancerBean) other;
                return Intrinsics.areEqual(this.tag, balancerBean.tag) && Intrinsics.areEqual(this.selector, balancerBean.selector) && Intrinsics.areEqual(this.fallbackTag, balancerBean.fallbackTag) && Intrinsics.areEqual(this.strategy, balancerBean.strategy);
            }

            @Nullable
            public final String getFallbackTag() {
                return this.fallbackTag;
            }

            @NotNull
            public final List<String> getSelector() {
                return this.selector;
            }

            @Nullable
            public final StrategyObject getStrategy() {
                return this.strategy;
            }

            @NotNull
            public final String getTag() {
                return this.tag;
            }

            public int hashCode() {
                int hashCode = (this.selector.hashCode() + (this.tag.hashCode() * 31)) * 31;
                String str = this.fallbackTag;
                int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                StrategyObject strategyObject = this.strategy;
                return hashCode2 + (strategyObject != null ? strategyObject.hashCode() : 0);
            }

            @NotNull
            public String toString() {
                return "BalancerBean(tag=" + this.tag + ", selector=" + this.selector + ", fallbackTag=" + this.fallbackTag + ", strategy=" + this.strategy + ")";
            }

            public /* synthetic */ BalancerBean(String str, List list, String str2, StrategyObject strategyObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, list, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : strategyObject);
            }
        }

        public /* synthetic */ RoutingBean(String str, String str2, ArrayList arrayList, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : str2, arrayList, (i & 8) != 0 ? null : list);
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0002/0B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0001HÆ\u0003Jc\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\u0005HÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001cR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001c¨\u00061"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;", "", "tag", "", "port", "", "protocol", "listen", "settings", "sniffing", "Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;", "streamSettings", "allocate", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;Ljava/lang/Object;Ljava/lang/Object;)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getPort", "()I", "setPort", "(I)V", "getProtocol", "setProtocol", "getListen", "setListen", "getSettings", "()Ljava/lang/Object;", "getSniffing", "()Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;", "getStreamSettings", "getAllocate", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "InSettingsBean", "SniffingBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class InboundBean {

        @Nullable
        private final Object allocate;

        @Nullable
        private String listen;
        private int port;

        @NotNull
        private String protocol;

        @Nullable
        private final Object settings;

        @Nullable
        private final SniffingBean sniffing;

        @Nullable
        private final Object streamSettings;

        @NotNull
        private String tag;

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0016\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000e¨\u0006$"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$InSettingsBean;", "", "auth", "", "udp", "", "userLevel", "", "address", "port", "network", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getAuth", "()Ljava/lang/String;", "getUdp", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getUserLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAddress", "getPort", "getNetwork", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$InSettingsBean;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class InSettingsBean {

            @Nullable
            private final String address;

            @Nullable
            private final String auth;

            @Nullable
            private final String network;

            @Nullable
            private final Integer port;

            @Nullable
            private final Boolean udp;

            @Nullable
            private final Integer userLevel;

            public InSettingsBean() {
                this(null, null, null, null, null, null, 63, null);
            }

            public static /* synthetic */ InSettingsBean copy$default(InSettingsBean inSettingsBean, String str, Boolean bool, Integer num, String str2, Integer num2, String str3, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = inSettingsBean.auth;
                }
                if ((i & 2) != 0) {
                    bool = inSettingsBean.udp;
                }
                Boolean bool2 = bool;
                if ((i & 4) != 0) {
                    num = inSettingsBean.userLevel;
                }
                Integer num3 = num;
                if ((i & 8) != 0) {
                    str2 = inSettingsBean.address;
                }
                String str4 = str2;
                if ((i & 16) != 0) {
                    num2 = inSettingsBean.port;
                }
                Integer num4 = num2;
                if ((i & 32) != 0) {
                    str3 = inSettingsBean.network;
                }
                return inSettingsBean.copy(str, bool2, num3, str4, num4, str3);
            }

            @Nullable
            /* renamed from: component1, reason: from getter */
            public final String getAuth() {
                return this.auth;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final Boolean getUdp() {
                return this.udp;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final Integer getUserLevel() {
                return this.userLevel;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final String getAddress() {
                return this.address;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final String getNetwork() {
                return this.network;
            }

            @NotNull
            public final InSettingsBean copy(@Nullable String auth, @Nullable Boolean udp, @Nullable Integer userLevel, @Nullable String address, @Nullable Integer port, @Nullable String network) {
                return new InSettingsBean(auth, udp, userLevel, address, port, network);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof InSettingsBean)) {
                    return false;
                }
                InSettingsBean inSettingsBean = (InSettingsBean) other;
                return Intrinsics.areEqual(this.auth, inSettingsBean.auth) && Intrinsics.areEqual(this.udp, inSettingsBean.udp) && Intrinsics.areEqual(this.userLevel, inSettingsBean.userLevel) && Intrinsics.areEqual(this.address, inSettingsBean.address) && Intrinsics.areEqual(this.port, inSettingsBean.port) && Intrinsics.areEqual(this.network, inSettingsBean.network);
            }

            @Nullable
            public final String getAddress() {
                return this.address;
            }

            @Nullable
            public final String getAuth() {
                return this.auth;
            }

            @Nullable
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            public final Boolean getUdp() {
                return this.udp;
            }

            @Nullable
            public final Integer getUserLevel() {
                return this.userLevel;
            }

            public int hashCode() {
                String str = this.auth;
                int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                Boolean bool = this.udp;
                int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
                Integer num = this.userLevel;
                int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
                String str2 = this.address;
                int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
                Integer num2 = this.port;
                int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
                String str3 = this.network;
                return hashCode5 + (str3 != null ? str3.hashCode() : 0);
            }

            @NotNull
            public String toString() {
                return "InSettingsBean(auth=" + this.auth + ", udp=" + this.udp + ", userLevel=" + this.userLevel + ", address=" + this.address + ", port=" + this.port + ", network=" + this.network + ")";
            }

            public InSettingsBean(@Nullable String str, @Nullable Boolean bool, @Nullable Integer num, @Nullable String str2, @Nullable Integer num2, @Nullable String str3) {
                this.auth = str;
                this.udp = bool;
                this.userLevel = num;
                this.address = str2;
                this.port = num2;
                this.network = str3;
            }

            public /* synthetic */ InSettingsBean(String str, Boolean bool, Integer num, String str2, Integer num2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str3);
            }
        }

        public InboundBean(@NotNull String str, int i, @NotNull String str2, @Nullable String str3, @Nullable Object obj, @Nullable SniffingBean sniffingBean, @Nullable Object obj2, @Nullable Object obj3) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-3975998991935035522L, -5008094215461204999L}).toString());
            Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-4120369413350464823L, -5011757145811501134L}).toString());
            this.tag = str;
            this.port = i;
            this.protocol = str2;
            this.listen = str3;
            this.settings = obj;
            this.sniffing = sniffingBean;
            this.streamSettings = obj2;
            this.allocate = obj3;
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        /* renamed from: component2, reason: from getter */
        public final int getPort() {
            return this.port;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final String getProtocol() {
            return this.protocol;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final String getListen() {
            return this.listen;
        }

        @Nullable
        /* renamed from: component5, reason: from getter */
        public final Object getSettings() {
            return this.settings;
        }

        @Nullable
        /* renamed from: component6, reason: from getter */
        public final SniffingBean getSniffing() {
            return this.sniffing;
        }

        @Nullable
        /* renamed from: component7, reason: from getter */
        public final Object getStreamSettings() {
            return this.streamSettings;
        }

        @Nullable
        /* renamed from: component8, reason: from getter */
        public final Object getAllocate() {
            return this.allocate;
        }

        @NotNull
        public final InboundBean copy(@NotNull String tag, int port, @NotNull String protocol, @Nullable String listen, @Nullable Object settings, @Nullable SniffingBean sniffing, @Nullable Object streamSettings, @Nullable Object allocate) {
            Intrinsics.checkNotNullParameter(tag, new ObfuscatedString(new long[]{-5961558313342037717L, 2664765276923801487L}).toString());
            Intrinsics.checkNotNullParameter(protocol, new ObfuscatedString(new long[]{-2345644376575128461L, -4704292537688428024L}).toString());
            return new InboundBean(tag, port, protocol, listen, settings, sniffing, streamSettings, allocate);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InboundBean)) {
                return false;
            }
            InboundBean inboundBean = (InboundBean) other;
            return Intrinsics.areEqual(this.tag, inboundBean.tag) && this.port == inboundBean.port && Intrinsics.areEqual(this.protocol, inboundBean.protocol) && Intrinsics.areEqual(this.listen, inboundBean.listen) && Intrinsics.areEqual(this.settings, inboundBean.settings) && Intrinsics.areEqual(this.sniffing, inboundBean.sniffing) && Intrinsics.areEqual(this.streamSettings, inboundBean.streamSettings) && Intrinsics.areEqual(this.allocate, inboundBean.allocate);
        }

        @Nullable
        public final Object getAllocate() {
            return this.allocate;
        }

        @Nullable
        public final String getListen() {
            return this.listen;
        }

        public final int getPort() {
            return this.port;
        }

        @NotNull
        public final String getProtocol() {
            return this.protocol;
        }

        @Nullable
        public final Object getSettings() {
            return this.settings;
        }

        @Nullable
        public final SniffingBean getSniffing() {
            return this.sniffing;
        }

        @Nullable
        public final Object getStreamSettings() {
            return this.streamSettings;
        }

        @NotNull
        public final String getTag() {
            return this.tag;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(((this.tag.hashCode() * 31) + this.port) * 31, 31, this.protocol);
            String str = this.listen;
            int i = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = (m2927x1378447b + hashCode) * 31;
            Object obj = this.settings;
            if (obj == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = obj.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            SniffingBean sniffingBean = this.sniffing;
            if (sniffingBean == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = sniffingBean.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            Object obj2 = this.streamSettings;
            if (obj2 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = obj2.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            Object obj3 = this.allocate;
            if (obj3 != null) {
                i = obj3.hashCode();
            }
            return i5 + i;
        }

        public final void setListen(@Nullable String str) {
            this.listen = str;
        }

        public final void setPort(int i) {
            this.port = i;
        }

        public final void setProtocol(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6574117826006204352L, 1976517750476990501L}).toString());
            this.protocol = str;
        }

        public final void setTag(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{4748647764915992696L, -2218635137459811750L}).toString());
            this.tag = str;
        }

        @NotNull
        public String toString() {
            String str = this.tag;
            int i = this.port;
            String str2 = this.protocol;
            String str3 = this.listen;
            Object obj = this.settings;
            SniffingBean sniffingBean = this.sniffing;
            Object obj2 = this.streamSettings;
            Object obj3 = this.allocate;
            StringBuilder sb = new StringBuilder("InboundBean(tag=");
            sb.append(str);
            sb.append(", port=");
            sb.append(i);
            sb.append(", protocol=");
            AbstractC0749x8313616e.m3350x5ac5058d(sb, str2, ", listen=", str3, ", settings=");
            sb.append(obj);
            sb.append(", sniffing=");
            sb.append(sniffingBean);
            sb.append(", streamSettings=");
            sb.append(obj2);
            sb.append(", allocate=");
            sb.append(obj3);
            sb.append(")");
            return sb.toString();
        }

        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013JJ\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0013\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;", "", "enabled", "", "destOverride", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "metadataOnly", "routeOnly", "<init>", "(ZLjava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getDestOverride", "()Ljava/util/ArrayList;", "getMetadataOnly", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRouteOnly", "setRouteOnly", "(Ljava/lang/Boolean;)V", "component1", "component2", "component3", "component4", "copy", "(ZLjava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class SniffingBean {

            @NotNull
            private final ArrayList<String> destOverride;
            private boolean enabled;

            @Nullable
            private final Boolean metadataOnly;

            @Nullable
            private Boolean routeOnly;

            public SniffingBean(boolean z, @NotNull ArrayList<String> arrayList, @Nullable Boolean bool, @Nullable Boolean bool2) {
                Intrinsics.checkNotNullParameter(arrayList, new ObfuscatedString(new long[]{58312322626138361L, 8658044525470633203L, 7128777303992239405L}).toString());
                this.enabled = z;
                this.destOverride = arrayList;
                this.metadataOnly = bool;
                this.routeOnly = bool2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ SniffingBean copy$default(SniffingBean sniffingBean, boolean z, ArrayList arrayList, Boolean bool, Boolean bool2, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = sniffingBean.enabled;
                }
                if ((i & 2) != 0) {
                    arrayList = sniffingBean.destOverride;
                }
                if ((i & 4) != 0) {
                    bool = sniffingBean.metadataOnly;
                }
                if ((i & 8) != 0) {
                    bool2 = sniffingBean.routeOnly;
                }
                return sniffingBean.copy(z, arrayList, bool, bool2);
            }

            /* renamed from: component1, reason: from getter */
            public final boolean getEnabled() {
                return this.enabled;
            }

            @NotNull
            public final ArrayList<String> component2() {
                return this.destOverride;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final Boolean getMetadataOnly() {
                return this.metadataOnly;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final Boolean getRouteOnly() {
                return this.routeOnly;
            }

            @NotNull
            public final SniffingBean copy(boolean enabled, @NotNull ArrayList<String> destOverride, @Nullable Boolean metadataOnly, @Nullable Boolean routeOnly) {
                Intrinsics.checkNotNullParameter(destOverride, new ObfuscatedString(new long[]{-3648819897993804945L, -4623596105903472126L, -8096319853713656232L}).toString());
                return new SniffingBean(enabled, destOverride, metadataOnly, routeOnly);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof SniffingBean)) {
                    return false;
                }
                SniffingBean sniffingBean = (SniffingBean) other;
                return this.enabled == sniffingBean.enabled && Intrinsics.areEqual(this.destOverride, sniffingBean.destOverride) && Intrinsics.areEqual(this.metadataOnly, sniffingBean.metadataOnly) && Intrinsics.areEqual(this.routeOnly, sniffingBean.routeOnly);
            }

            @NotNull
            public final ArrayList<String> getDestOverride() {
                return this.destOverride;
            }

            public final boolean getEnabled() {
                return this.enabled;
            }

            @Nullable
            public final Boolean getMetadataOnly() {
                return this.metadataOnly;
            }

            @Nullable
            public final Boolean getRouteOnly() {
                return this.routeOnly;
            }

            public int hashCode() {
                int i;
                int hashCode;
                if (this.enabled) {
                    i = 1231;
                } else {
                    i = 1237;
                }
                int hashCode2 = (this.destOverride.hashCode() + (i * 31)) * 31;
                Boolean bool = this.metadataOnly;
                int i2 = 0;
                if (bool == null) {
                    hashCode = 0;
                } else {
                    hashCode = bool.hashCode();
                }
                int i3 = (hashCode2 + hashCode) * 31;
                Boolean bool2 = this.routeOnly;
                if (bool2 != null) {
                    i2 = bool2.hashCode();
                }
                return i3 + i2;
            }

            public final void setEnabled(boolean z) {
                this.enabled = z;
            }

            public final void setRouteOnly(@Nullable Boolean bool) {
                this.routeOnly = bool;
            }

            @NotNull
            public String toString() {
                return "SniffingBean(enabled=" + this.enabled + ", destOverride=" + this.destOverride + ", metadataOnly=" + this.metadataOnly + ", routeOnly=" + this.routeOnly + ")";
            }

            public /* synthetic */ SniffingBean(boolean z, ArrayList arrayList, Boolean bool, Boolean bool2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(z, arrayList, (i & 4) != 0 ? null : bool, (i & 8) != 0 ? null : bool2);
            }
        }

        public /* synthetic */ InboundBean(String str, int i, String str2, String str3, Object obj, SniffingBean sniffingBean, Object obj2, Object obj3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : obj, (i2 & 32) != 0 ? null : sniffingBean, (i2 & 64) != 0 ? null : obj2, (i2 & 128) != 0 ? null : obj3);
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0003<=>BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010$\u001a\u0004\u0018\u00010\u0003J\r\u0010%\u001a\u0004\u0018\u00010&¢\u0006\u0002\u0010'J\u0006\u0010(\u001a\u00020\u0003J\b\u0010)\u001a\u0004\u0018\u00010\u0003J\b\u0010*\u001a\u0004\u0018\u00010\u0003J\u0010\u0010+\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010,J\u0006\u0010-\u001a\u00020.J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\fHÆ\u0003JY\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020&HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0010R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006?"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;", "", "tag", "", "protocol", "settings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;", "streamSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;", "proxySettings", "sendThrough", "mux", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getProtocol", "setProtocol", "getSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;", "setSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;)V", "getStreamSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;", "setStreamSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;)V", "getProxySettings", "()Ljava/lang/Object;", "getSendThrough", "getMux", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;", "setMux", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;)V", "getServerAddress", "getServerPort", "", "()Ljava/lang/Integer;", "getServerAddressAndPort", "getPassword", "getSecurityEncryption", "getTransportSettingDetails", "", "ensureSockopt", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "OutSettingsBean", "StreamSettingsBean", "MuxBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class OutboundBean {

        @Nullable
        private MuxBean mux;

        @NotNull
        private String protocol;

        @Nullable
        private final Object proxySettings;

        @Nullable
        private final String sendThrough;

        @Nullable
        private OutSettingsBean settings;

        @Nullable
        private StreamSettingsBean streamSettings;

        @NotNull
        private String tag;

        @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bB\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001:\u0006_`abcdBñ\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010I\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0011\u0010J\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010O\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010R\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0011\u0010T\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0003HÆ\u0003J\u0011\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003HÆ\u0003J\u0010\u0010V\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u00105J\u000b\u0010W\u001a\u0004\u0018\u00010\u000eHÆ\u0003Jø\u0001\u0010X\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00032\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u0010YJ\u0013\u0010Z\u001a\u00020[2\b\u0010\\\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010]\u001a\u00020\u0011HÖ\u0001J\t\u0010^\u001a\u00020\u000eHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001f\"\u0004\b)\u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\n\n\u0002\u00106\u001a\u0004\b4\u00105R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010/\"\u0004\b8\u00109R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b:\u0010/R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\n\n\u0002\u00106\u001a\u0004\b;\u00105R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b<\u0010/R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010/\"\u0004\b>\u00109R\u0019\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u001fR\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u001f\"\u0004\bA\u0010!R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u00106\u001a\u0004\bB\u00105\"\u0004\bC\u0010DR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010/\"\u0004\bF\u00109¨\u0006e"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;", "", "vnext", "", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;", "fragment", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;", "noises", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$NoiseBean;", "servers", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;", "response", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;", "network", "", "address", "port", "", "domainStrategy", "redirect", "userLevel", "inboundTag", "secretKey", "peers", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;", "reserved", "mtu", "obfsPassword", "<init>", "(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V", "getVnext", "()Ljava/util/List;", "setVnext", "(Ljava/util/List;)V", "getFragment", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;", "setFragment", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;)V", "getNoises", "setNoises", "getServers", "setServers", "getResponse", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;", "setResponse", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;)V", "getNetwork", "()Ljava/lang/String;", "getAddress", "()Ljava/lang/Object;", "setAddress", "(Ljava/lang/Object;)V", "getPort", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDomainStrategy", "setDomainStrategy", "(Ljava/lang/String;)V", "getRedirect", "getUserLevel", "getInboundTag", "getSecretKey", "setSecretKey", "getPeers", "getReserved", "setReserved", "getMtu", "setMtu", "(Ljava/lang/Integer;)V", "getObfsPassword", "setObfsPassword", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;", "equals", "", "other", "hashCode", "toString", "VnextBean", "FragmentBean", "NoiseBean", "ServersBean", "Response", "WireGuardBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class OutSettingsBean {

            @Nullable
            private Object address;

            @Nullable
            private String domainStrategy;

            @Nullable
            private FragmentBean fragment;

            @Nullable
            private final String inboundTag;

            @Nullable
            private Integer mtu;

            @Nullable
            private final String network;

            @Nullable
            private List<NoiseBean> noises;

            @Nullable
            private String obfsPassword;

            @Nullable
            private final List<WireGuardBean> peers;

            @Nullable
            private final Integer port;

            @Nullable
            private final String redirect;

            @Nullable
            private List<Integer> reserved;

            @Nullable
            private Response response;

            @Nullable
            private String secretKey;

            @Nullable
            private List<ServersBean> servers;

            @Nullable
            private final Integer userLevel;

            @Nullable
            private List<VnextBean> vnext;

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;", "", "packets", "", "length", "interval", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPackets", "()Ljava/lang/String;", "setPackets", "(Ljava/lang/String;)V", "getLength", "setLength", "getInterval", "setInterval", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class FragmentBean {

                @Nullable
                private String interval;

                @Nullable
                private String length;

                @Nullable
                private String packets;

                public FragmentBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ FragmentBean copy$default(FragmentBean fragmentBean, String str, String str2, String str3, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = fragmentBean.packets;
                    }
                    if ((i & 2) != 0) {
                        str2 = fragmentBean.length;
                    }
                    if ((i & 4) != 0) {
                        str3 = fragmentBean.interval;
                    }
                    return fragmentBean.copy(str, str2, str3);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getPackets() {
                    return this.packets;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getLength() {
                    return this.length;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final String getInterval() {
                    return this.interval;
                }

                @NotNull
                public final FragmentBean copy(@Nullable String packets, @Nullable String length, @Nullable String interval) {
                    return new FragmentBean(packets, length, interval);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof FragmentBean)) {
                        return false;
                    }
                    FragmentBean fragmentBean = (FragmentBean) other;
                    return Intrinsics.areEqual(this.packets, fragmentBean.packets) && Intrinsics.areEqual(this.length, fragmentBean.length) && Intrinsics.areEqual(this.interval, fragmentBean.interval);
                }

                @Nullable
                public final String getInterval() {
                    return this.interval;
                }

                @Nullable
                public final String getLength() {
                    return this.length;
                }

                @Nullable
                public final String getPackets() {
                    return this.packets;
                }

                public int hashCode() {
                    String str = this.packets;
                    int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.length;
                    int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    String str3 = this.interval;
                    return hashCode2 + (str3 != null ? str3.hashCode() : 0);
                }

                public final void setInterval(@Nullable String str) {
                    this.interval = str;
                }

                public final void setLength(@Nullable String str) {
                    this.length = str;
                }

                public final void setPackets(@Nullable String str) {
                    this.packets = str;
                }

                @NotNull
                public String toString() {
                    String str = this.packets;
                    String str2 = this.length;
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(AbstractC0362x4440ab85.m2944x4440ab85("FragmentBean(packets=", str, ", length=", str2, ", interval="), this.interval, ")");
                }

                public FragmentBean(@Nullable String str, @Nullable String str2, @Nullable String str3) {
                    this.packets = str;
                    this.length = str2;
                    this.interval = str3;
                }

                public /* synthetic */ FragmentBean(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
                }
            }

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$NoiseBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "packet", "delay", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getPacket", "setPacket", "getDelay", "setDelay", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class NoiseBean {

                @Nullable
                private String delay;

                @Nullable
                private String packet;

                @Nullable
                private String type;

                public NoiseBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ NoiseBean copy$default(NoiseBean noiseBean, String str, String str2, String str3, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = noiseBean.type;
                    }
                    if ((i & 2) != 0) {
                        str2 = noiseBean.packet;
                    }
                    if ((i & 4) != 0) {
                        str3 = noiseBean.delay;
                    }
                    return noiseBean.copy(str, str2, str3);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getType() {
                    return this.type;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getPacket() {
                    return this.packet;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final String getDelay() {
                    return this.delay;
                }

                @NotNull
                public final NoiseBean copy(@Nullable String type, @Nullable String packet, @Nullable String delay) {
                    return new NoiseBean(type, packet, delay);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof NoiseBean)) {
                        return false;
                    }
                    NoiseBean noiseBean = (NoiseBean) other;
                    return Intrinsics.areEqual(this.type, noiseBean.type) && Intrinsics.areEqual(this.packet, noiseBean.packet) && Intrinsics.areEqual(this.delay, noiseBean.delay);
                }

                @Nullable
                public final String getDelay() {
                    return this.delay;
                }

                @Nullable
                public final String getPacket() {
                    return this.packet;
                }

                @Nullable
                public final String getType() {
                    return this.type;
                }

                public int hashCode() {
                    String str = this.type;
                    int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.packet;
                    int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    String str3 = this.delay;
                    return hashCode2 + (str3 != null ? str3.hashCode() : 0);
                }

                public final void setDelay(@Nullable String str) {
                    this.delay = str;
                }

                public final void setPacket(@Nullable String str) {
                    this.packet = str;
                }

                public final void setType(@Nullable String str) {
                    this.type = str;
                }

                @NotNull
                public String toString() {
                    String str = this.type;
                    String str2 = this.packet;
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(AbstractC0362x4440ab85.m2944x4440ab85("NoiseBean(type=", str, ", packet=", str2, ", delay="), this.delay, ")");
                }

                public NoiseBean(@Nullable String str, @Nullable String str2, @Nullable String str3) {
                    this.type = str;
                    this.packet = str2;
                    this.delay = str3;
                }

                public /* synthetic */ NoiseBean(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
                }
            }

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "<init>", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "setType", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class Response {

                @NotNull
                private String type;

                public Response(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6824325040819564364L, 7671971953417542195L}).toString());
                    this.type = str;
                }

                public static /* synthetic */ Response copy$default(Response response, String str, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = response.type;
                    }
                    return response.copy(str);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getType() {
                    return this.type;
                }

                @NotNull
                public final Response copy(@NotNull String type) {
                    Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{4498770535011891366L, -3976211101964353056L}).toString());
                    return new Response(type);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    return (other instanceof Response) && Intrinsics.areEqual(this.type, ((Response) other).type);
                }

                @NotNull
                public final String getType() {
                    return this.type;
                }

                public int hashCode() {
                    return this.type.hashCode();
                }

                public final void setType(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7994501792741518908L, -4152180237155906272L}).toString());
                    this.type = str;
                }

                @NotNull
                public String toString() {
                    return AbstractC0362x4440ab85.m2932x95f25580("Response(type=", this.type, ")");
                }
            }

            @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b0\b\u0086\b\u0018\u00002\u00020\u0001:\u0001?B}\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0006HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00103\u001a\u00020\tHÆ\u0003J\t\u00104\u001a\u00020\tHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010)J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fHÆ\u0003J\u0084\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010=\u001a\u00020\tHÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0014R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0014\"\u0004\b'\u0010\u0016R\u0015\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u0006@"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;", "", "address", "", "method", "ota", "", "password", "port", "", "level", NotificationCompat.CATEGORY_EMAIL, "flow", "ivCheck", "users", "", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getMethod", "setMethod", "getOta", "()Z", "setOta", "(Z)V", "getPassword", "setPassword", "getPort", "()I", "setPort", "(I)V", "getLevel", "setLevel", "getEmail", "getFlow", "setFlow", "getIvCheck", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getUsers", "()Ljava/util/List;", "setUsers", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;", "equals", "other", "hashCode", "toString", "SocksUsersBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class ServersBean {

                @NotNull
                private String address;

                @Nullable
                private final String email;

                @Nullable
                private String flow;

                @Nullable
                private final Boolean ivCheck;
                private int level;

                @Nullable
                private String method;
                private boolean ota;

                @Nullable
                private String password;
                private int port;

                @Nullable
                private List<SocksUsersBean> users;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean$SocksUsersBean;", "", "user", "", "pass", "level", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getUser", "()Ljava/lang/String;", "setUser", "(Ljava/lang/String;)V", "getPass", "setPass", "getLevel", "()I", "setLevel", "(I)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class SocksUsersBean {
                    private int level;

                    @NotNull
                    private String pass;

                    @NotNull
                    private String user;

                    public SocksUsersBean() {
                        this(null, null, 0, 7, null);
                    }

                    public static /* synthetic */ SocksUsersBean copy$default(SocksUsersBean socksUsersBean, String str, String str2, int i, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            str = socksUsersBean.user;
                        }
                        if ((i2 & 2) != 0) {
                            str2 = socksUsersBean.pass;
                        }
                        if ((i2 & 4) != 0) {
                            i = socksUsersBean.level;
                        }
                        return socksUsersBean.copy(str, str2, i);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getUser() {
                        return this.user;
                    }

                    @NotNull
                    /* renamed from: component2, reason: from getter */
                    public final String getPass() {
                        return this.pass;
                    }

                    /* renamed from: component3, reason: from getter */
                    public final int getLevel() {
                        return this.level;
                    }

                    @NotNull
                    public final SocksUsersBean copy(@NotNull String user, @NotNull String pass, int level) {
                        Intrinsics.checkNotNullParameter(user, new ObfuscatedString(new long[]{3100723080138848524L, 7462248222377060546L}).toString());
                        Intrinsics.checkNotNullParameter(pass, new ObfuscatedString(new long[]{-6000801136330472687L, 9141551200142439865L}).toString());
                        return new SocksUsersBean(user, pass, level);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof SocksUsersBean)) {
                            return false;
                        }
                        SocksUsersBean socksUsersBean = (SocksUsersBean) other;
                        return Intrinsics.areEqual(this.user, socksUsersBean.user) && Intrinsics.areEqual(this.pass, socksUsersBean.pass) && this.level == socksUsersBean.level;
                    }

                    public final int getLevel() {
                        return this.level;
                    }

                    @NotNull
                    public final String getPass() {
                        return this.pass;
                    }

                    @NotNull
                    public final String getUser() {
                        return this.user;
                    }

                    public int hashCode() {
                        return AbstractC0362x4440ab85.m2927x1378447b(this.user.hashCode() * 31, 31, this.pass) + this.level;
                    }

                    public final void setLevel(int i) {
                        this.level = i;
                    }

                    public final void setPass(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{162631019820437322L, -3872491441355426303L}).toString());
                        this.pass = str;
                    }

                    public final void setUser(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1557967609239217288L, 5054996714281232721L}).toString());
                        this.user = str;
                    }

                    @NotNull
                    public String toString() {
                        String str = this.user;
                        String str2 = this.pass;
                        return AbstractC0362x4440ab85.m2935x1db10c9d(AbstractC0362x4440ab85.m2944x4440ab85("SocksUsersBean(user=", str, ", pass=", str2, ", level="), ")", this.level);
                    }

                    public SocksUsersBean(@NotNull String str, @NotNull String str2, int i) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4421730810714974667L, 4363465477845837147L}).toString());
                        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{4687091930429699896L, 8461461054218045052L}).toString());
                        this.user = str;
                        this.pass = str2;
                        this.level = i;
                    }

                    public /* synthetic */ SocksUsersBean(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i2 & 1) != 0 ? new ObfuscatedString(new long[]{-8905338116029039006L}).toString() : str, (i2 & 2) != 0 ? new ObfuscatedString(new long[]{3727462342764068287L}).toString() : str2, (i2 & 4) != 0 ? 8 : i);
                    }
                }

                public ServersBean() {
                    this(null, null, false, null, 0, 0, null, null, null, null, 1023, null);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getAddress() {
                    return this.address;
                }

                @Nullable
                public final List<SocksUsersBean> component10() {
                    return this.users;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getMethod() {
                    return this.method;
                }

                /* renamed from: component3, reason: from getter */
                public final boolean getOta() {
                    return this.ota;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final String getPassword() {
                    return this.password;
                }

                /* renamed from: component5, reason: from getter */
                public final int getPort() {
                    return this.port;
                }

                /* renamed from: component6, reason: from getter */
                public final int getLevel() {
                    return this.level;
                }

                @Nullable
                /* renamed from: component7, reason: from getter */
                public final String getEmail() {
                    return this.email;
                }

                @Nullable
                /* renamed from: component8, reason: from getter */
                public final String getFlow() {
                    return this.flow;
                }

                @Nullable
                /* renamed from: component9, reason: from getter */
                public final Boolean getIvCheck() {
                    return this.ivCheck;
                }

                @NotNull
                public final ServersBean copy(@NotNull String address, @Nullable String method, boolean ota, @Nullable String password, int port, int level, @Nullable String email, @Nullable String flow, @Nullable Boolean ivCheck, @Nullable List<SocksUsersBean> users) {
                    Intrinsics.checkNotNullParameter(address, new ObfuscatedString(new long[]{-4803896498201669148L, 6618370743934138163L}).toString());
                    return new ServersBean(address, method, ota, password, port, level, email, flow, ivCheck, users);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof ServersBean)) {
                        return false;
                    }
                    ServersBean serversBean = (ServersBean) other;
                    return Intrinsics.areEqual(this.address, serversBean.address) && Intrinsics.areEqual(this.method, serversBean.method) && this.ota == serversBean.ota && Intrinsics.areEqual(this.password, serversBean.password) && this.port == serversBean.port && this.level == serversBean.level && Intrinsics.areEqual(this.email, serversBean.email) && Intrinsics.areEqual(this.flow, serversBean.flow) && Intrinsics.areEqual(this.ivCheck, serversBean.ivCheck) && Intrinsics.areEqual(this.users, serversBean.users);
                }

                @NotNull
                public final String getAddress() {
                    return this.address;
                }

                @Nullable
                public final String getEmail() {
                    return this.email;
                }

                @Nullable
                public final String getFlow() {
                    return this.flow;
                }

                @Nullable
                public final Boolean getIvCheck() {
                    return this.ivCheck;
                }

                public final int getLevel() {
                    return this.level;
                }

                @Nullable
                public final String getMethod() {
                    return this.method;
                }

                public final boolean getOta() {
                    return this.ota;
                }

                @Nullable
                public final String getPassword() {
                    return this.password;
                }

                public final int getPort() {
                    return this.port;
                }

                @Nullable
                public final List<SocksUsersBean> getUsers() {
                    return this.users;
                }

                public int hashCode() {
                    int hashCode;
                    int i;
                    int hashCode2;
                    int hashCode3;
                    int hashCode4;
                    int hashCode5;
                    int hashCode6 = this.address.hashCode() * 31;
                    String str = this.method;
                    int i2 = 0;
                    if (str == null) {
                        hashCode = 0;
                    } else {
                        hashCode = str.hashCode();
                    }
                    int i3 = (hashCode6 + hashCode) * 31;
                    if (this.ota) {
                        i = 1231;
                    } else {
                        i = 1237;
                    }
                    int i4 = (i3 + i) * 31;
                    String str2 = this.password;
                    if (str2 == null) {
                        hashCode2 = 0;
                    } else {
                        hashCode2 = str2.hashCode();
                    }
                    int i5 = (((((i4 + hashCode2) * 31) + this.port) * 31) + this.level) * 31;
                    String str3 = this.email;
                    if (str3 == null) {
                        hashCode3 = 0;
                    } else {
                        hashCode3 = str3.hashCode();
                    }
                    int i6 = (i5 + hashCode3) * 31;
                    String str4 = this.flow;
                    if (str4 == null) {
                        hashCode4 = 0;
                    } else {
                        hashCode4 = str4.hashCode();
                    }
                    int i7 = (i6 + hashCode4) * 31;
                    Boolean bool = this.ivCheck;
                    if (bool == null) {
                        hashCode5 = 0;
                    } else {
                        hashCode5 = bool.hashCode();
                    }
                    int i8 = (i7 + hashCode5) * 31;
                    List<SocksUsersBean> list = this.users;
                    if (list != null) {
                        i2 = list.hashCode();
                    }
                    return i8 + i2;
                }

                public final void setAddress(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4110017269814854792L, 1219491120196478938L}).toString());
                    this.address = str;
                }

                public final void setFlow(@Nullable String str) {
                    this.flow = str;
                }

                public final void setLevel(int i) {
                    this.level = i;
                }

                public final void setMethod(@Nullable String str) {
                    this.method = str;
                }

                public final void setOta(boolean z) {
                    this.ota = z;
                }

                public final void setPassword(@Nullable String str) {
                    this.password = str;
                }

                public final void setPort(int i) {
                    this.port = i;
                }

                public final void setUsers(@Nullable List<SocksUsersBean> list) {
                    this.users = list;
                }

                @NotNull
                public String toString() {
                    String str = this.address;
                    String str2 = this.method;
                    boolean z = this.ota;
                    String str3 = this.password;
                    int i = this.port;
                    int i2 = this.level;
                    String str4 = this.email;
                    String str5 = this.flow;
                    Boolean bool = this.ivCheck;
                    List<SocksUsersBean> list = this.users;
                    StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("ServersBean(address=", str, ", method=", str2, ", ota=");
                    m2944x4440ab85.append(z);
                    m2944x4440ab85.append(", password=");
                    m2944x4440ab85.append(str3);
                    m2944x4440ab85.append(", port=");
                    m2944x4440ab85.append(i);
                    m2944x4440ab85.append(", level=");
                    m2944x4440ab85.append(i2);
                    m2944x4440ab85.append(", email=");
                    AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str4, ", flow=", str5, ", ivCheck=");
                    m2944x4440ab85.append(bool);
                    m2944x4440ab85.append(", users=");
                    m2944x4440ab85.append(list);
                    m2944x4440ab85.append(")");
                    return m2944x4440ab85.toString();
                }

                public ServersBean(@NotNull String str, @Nullable String str2, boolean z, @Nullable String str3, int i, int i2, @Nullable String str4, @Nullable String str5, @Nullable Boolean bool, @Nullable List<SocksUsersBean> list) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1694187131909051129L, 27744072492625220L}).toString());
                    this.address = str;
                    this.method = str2;
                    this.ota = z;
                    this.password = str3;
                    this.port = i;
                    this.level = i2;
                    this.email = str4;
                    this.flow = str5;
                    this.ivCheck = bool;
                    this.users = list;
                }

                public /* synthetic */ ServersBean(String str, String str2, boolean z, String str3, int i, int i2, String str4, String str5, Boolean bool, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i3 & 1) != 0 ? new ObfuscatedString(new long[]{9003380455379660971L}).toString() : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) == 0 ? z : false, (i3 & 8) != 0 ? null : str3, (i3 & 16) != 0 ? AppConfig.DEFAULT_PORT : i, (i3 & 32) == 0 ? i2 : 8, (i3 & 64) != 0 ? null : str4, (i3 & 128) != 0 ? null : str5, (i3 & 256) != 0 ? null : bool, (i3 & 512) == 0 ? list : null);
                }
            }

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;", "", "publicKey", "", "preSharedKey", "endpoint", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPublicKey", "()Ljava/lang/String;", "setPublicKey", "(Ljava/lang/String;)V", "getPreSharedKey", "setPreSharedKey", "getEndpoint", "setEndpoint", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class WireGuardBean {

                @NotNull
                private String endpoint;

                @Nullable
                private String preSharedKey;

                @NotNull
                private String publicKey;

                public WireGuardBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ WireGuardBean copy$default(WireGuardBean wireGuardBean, String str, String str2, String str3, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = wireGuardBean.publicKey;
                    }
                    if ((i & 2) != 0) {
                        str2 = wireGuardBean.preSharedKey;
                    }
                    if ((i & 4) != 0) {
                        str3 = wireGuardBean.endpoint;
                    }
                    return wireGuardBean.copy(str, str2, str3);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getPublicKey() {
                    return this.publicKey;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getPreSharedKey() {
                    return this.preSharedKey;
                }

                @NotNull
                /* renamed from: component3, reason: from getter */
                public final String getEndpoint() {
                    return this.endpoint;
                }

                @NotNull
                public final WireGuardBean copy(@NotNull String publicKey, @Nullable String preSharedKey, @NotNull String endpoint) {
                    Intrinsics.checkNotNullParameter(publicKey, new ObfuscatedString(new long[]{3540830041858687724L, 9040218583813132097L, -7511551815674896738L}).toString());
                    Intrinsics.checkNotNullParameter(endpoint, new ObfuscatedString(new long[]{1380698530360111394L, -1163868934625733401L}).toString());
                    return new WireGuardBean(publicKey, preSharedKey, endpoint);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof WireGuardBean)) {
                        return false;
                    }
                    WireGuardBean wireGuardBean = (WireGuardBean) other;
                    return Intrinsics.areEqual(this.publicKey, wireGuardBean.publicKey) && Intrinsics.areEqual(this.preSharedKey, wireGuardBean.preSharedKey) && Intrinsics.areEqual(this.endpoint, wireGuardBean.endpoint);
                }

                @NotNull
                public final String getEndpoint() {
                    return this.endpoint;
                }

                @Nullable
                public final String getPreSharedKey() {
                    return this.preSharedKey;
                }

                @NotNull
                public final String getPublicKey() {
                    return this.publicKey;
                }

                public int hashCode() {
                    int hashCode = this.publicKey.hashCode() * 31;
                    String str = this.preSharedKey;
                    return this.endpoint.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31);
                }

                public final void setEndpoint(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-5113421166057445196L, 2797492592035303272L}).toString());
                    this.endpoint = str;
                }

                public final void setPreSharedKey(@Nullable String str) {
                    this.preSharedKey = str;
                }

                public final void setPublicKey(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3252369039177416221L, -3796312963841402847L}).toString());
                    this.publicKey = str;
                }

                @NotNull
                public String toString() {
                    String str = this.publicKey;
                    String str2 = this.preSharedKey;
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(AbstractC0362x4440ab85.m2944x4440ab85("WireGuardBean(publicKey=", str, ", preSharedKey=", str2, ", endpoint="), this.endpoint, ")");
                }

                public WireGuardBean(@NotNull String str, @Nullable String str2, @NotNull String str3) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{984340501202589475L, -2764322020013793024L, 8606406003314187420L}).toString());
                    Intrinsics.checkNotNullParameter(str3, new ObfuscatedString(new long[]{2917895840208159229L, -721433480850257897L}).toString());
                    this.publicKey = str;
                    this.preSharedKey = str2;
                    this.endpoint = str3;
                }

                public /* synthetic */ WireGuardBean(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? new ObfuscatedString(new long[]{6037892217181508322L}).toString() : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? new ObfuscatedString(new long[]{6509895984849173077L}).toString() : str3);
                }
            }

            public OutSettingsBean() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
            }

            @Nullable
            public final List<VnextBean> component1() {
                return this.vnext;
            }

            @Nullable
            /* renamed from: component10, reason: from getter */
            public final String getRedirect() {
                return this.redirect;
            }

            @Nullable
            /* renamed from: component11, reason: from getter */
            public final Integer getUserLevel() {
                return this.userLevel;
            }

            @Nullable
            /* renamed from: component12, reason: from getter */
            public final String getInboundTag() {
                return this.inboundTag;
            }

            @Nullable
            /* renamed from: component13, reason: from getter */
            public final String getSecretKey() {
                return this.secretKey;
            }

            @Nullable
            public final List<WireGuardBean> component14() {
                return this.peers;
            }

            @Nullable
            public final List<Integer> component15() {
                return this.reserved;
            }

            @Nullable
            /* renamed from: component16, reason: from getter */
            public final Integer getMtu() {
                return this.mtu;
            }

            @Nullable
            /* renamed from: component17, reason: from getter */
            public final String getObfsPassword() {
                return this.obfsPassword;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final FragmentBean getFragment() {
                return this.fragment;
            }

            @Nullable
            public final List<NoiseBean> component3() {
                return this.noises;
            }

            @Nullable
            public final List<ServersBean> component4() {
                return this.servers;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final Response getResponse() {
                return this.response;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            /* renamed from: component7, reason: from getter */
            public final Object getAddress() {
                return this.address;
            }

            @Nullable
            /* renamed from: component8, reason: from getter */
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            /* renamed from: component9, reason: from getter */
            public final String getDomainStrategy() {
                return this.domainStrategy;
            }

            @NotNull
            public final OutSettingsBean copy(@Nullable List<VnextBean> vnext, @Nullable FragmentBean fragment, @Nullable List<NoiseBean> noises, @Nullable List<ServersBean> servers, @Nullable Response response, @Nullable String network, @Nullable Object address, @Nullable Integer port, @Nullable String domainStrategy, @Nullable String redirect, @Nullable Integer userLevel, @Nullable String inboundTag, @Nullable String secretKey, @Nullable List<WireGuardBean> peers, @Nullable List<Integer> reserved, @Nullable Integer mtu, @Nullable String obfsPassword) {
                return new OutSettingsBean(vnext, fragment, noises, servers, response, network, address, port, domainStrategy, redirect, userLevel, inboundTag, secretKey, peers, reserved, mtu, obfsPassword);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof OutSettingsBean)) {
                    return false;
                }
                OutSettingsBean outSettingsBean = (OutSettingsBean) other;
                return Intrinsics.areEqual(this.vnext, outSettingsBean.vnext) && Intrinsics.areEqual(this.fragment, outSettingsBean.fragment) && Intrinsics.areEqual(this.noises, outSettingsBean.noises) && Intrinsics.areEqual(this.servers, outSettingsBean.servers) && Intrinsics.areEqual(this.response, outSettingsBean.response) && Intrinsics.areEqual(this.network, outSettingsBean.network) && Intrinsics.areEqual(this.address, outSettingsBean.address) && Intrinsics.areEqual(this.port, outSettingsBean.port) && Intrinsics.areEqual(this.domainStrategy, outSettingsBean.domainStrategy) && Intrinsics.areEqual(this.redirect, outSettingsBean.redirect) && Intrinsics.areEqual(this.userLevel, outSettingsBean.userLevel) && Intrinsics.areEqual(this.inboundTag, outSettingsBean.inboundTag) && Intrinsics.areEqual(this.secretKey, outSettingsBean.secretKey) && Intrinsics.areEqual(this.peers, outSettingsBean.peers) && Intrinsics.areEqual(this.reserved, outSettingsBean.reserved) && Intrinsics.areEqual(this.mtu, outSettingsBean.mtu) && Intrinsics.areEqual(this.obfsPassword, outSettingsBean.obfsPassword);
            }

            @Nullable
            public final Object getAddress() {
                return this.address;
            }

            @Nullable
            public final String getDomainStrategy() {
                return this.domainStrategy;
            }

            @Nullable
            public final FragmentBean getFragment() {
                return this.fragment;
            }

            @Nullable
            public final String getInboundTag() {
                return this.inboundTag;
            }

            @Nullable
            public final Integer getMtu() {
                return this.mtu;
            }

            @Nullable
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            public final List<NoiseBean> getNoises() {
                return this.noises;
            }

            @Nullable
            public final String getObfsPassword() {
                return this.obfsPassword;
            }

            @Nullable
            public final List<WireGuardBean> getPeers() {
                return this.peers;
            }

            @Nullable
            public final Integer getPort() {
                return this.port;
            }

            @Nullable
            public final String getRedirect() {
                return this.redirect;
            }

            @Nullable
            public final List<Integer> getReserved() {
                return this.reserved;
            }

            @Nullable
            public final Response getResponse() {
                return this.response;
            }

            @Nullable
            public final String getSecretKey() {
                return this.secretKey;
            }

            @Nullable
            public final List<ServersBean> getServers() {
                return this.servers;
            }

            @Nullable
            public final Integer getUserLevel() {
                return this.userLevel;
            }

            @Nullable
            public final List<VnextBean> getVnext() {
                return this.vnext;
            }

            public int hashCode() {
                List<VnextBean> list = this.vnext;
                int hashCode = (list == null ? 0 : list.hashCode()) * 31;
                FragmentBean fragmentBean = this.fragment;
                int hashCode2 = (hashCode + (fragmentBean == null ? 0 : fragmentBean.hashCode())) * 31;
                List<NoiseBean> list2 = this.noises;
                int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
                List<ServersBean> list3 = this.servers;
                int hashCode4 = (hashCode3 + (list3 == null ? 0 : list3.hashCode())) * 31;
                Response response = this.response;
                int hashCode5 = (hashCode4 + (response == null ? 0 : response.hashCode())) * 31;
                String str = this.network;
                int hashCode6 = (hashCode5 + (str == null ? 0 : str.hashCode())) * 31;
                Object obj = this.address;
                int hashCode7 = (hashCode6 + (obj == null ? 0 : obj.hashCode())) * 31;
                Integer num = this.port;
                int hashCode8 = (hashCode7 + (num == null ? 0 : num.hashCode())) * 31;
                String str2 = this.domainStrategy;
                int hashCode9 = (hashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.redirect;
                int hashCode10 = (hashCode9 + (str3 == null ? 0 : str3.hashCode())) * 31;
                Integer num2 = this.userLevel;
                int hashCode11 = (hashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
                String str4 = this.inboundTag;
                int hashCode12 = (hashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.secretKey;
                int hashCode13 = (hashCode12 + (str5 == null ? 0 : str5.hashCode())) * 31;
                List<WireGuardBean> list4 = this.peers;
                int hashCode14 = (hashCode13 + (list4 == null ? 0 : list4.hashCode())) * 31;
                List<Integer> list5 = this.reserved;
                int hashCode15 = (hashCode14 + (list5 == null ? 0 : list5.hashCode())) * 31;
                Integer num3 = this.mtu;
                int hashCode16 = (hashCode15 + (num3 == null ? 0 : num3.hashCode())) * 31;
                String str6 = this.obfsPassword;
                return hashCode16 + (str6 != null ? str6.hashCode() : 0);
            }

            public final void setAddress(@Nullable Object obj) {
                this.address = obj;
            }

            public final void setDomainStrategy(@Nullable String str) {
                this.domainStrategy = str;
            }

            public final void setFragment(@Nullable FragmentBean fragmentBean) {
                this.fragment = fragmentBean;
            }

            public final void setMtu(@Nullable Integer num) {
                this.mtu = num;
            }

            public final void setNoises(@Nullable List<NoiseBean> list) {
                this.noises = list;
            }

            public final void setObfsPassword(@Nullable String str) {
                this.obfsPassword = str;
            }

            public final void setReserved(@Nullable List<Integer> list) {
                this.reserved = list;
            }

            public final void setResponse(@Nullable Response response) {
                this.response = response;
            }

            public final void setSecretKey(@Nullable String str) {
                this.secretKey = str;
            }

            public final void setServers(@Nullable List<ServersBean> list) {
                this.servers = list;
            }

            public final void setVnext(@Nullable List<VnextBean> list) {
                this.vnext = list;
            }

            @NotNull
            public String toString() {
                List<VnextBean> list = this.vnext;
                FragmentBean fragmentBean = this.fragment;
                List<NoiseBean> list2 = this.noises;
                List<ServersBean> list3 = this.servers;
                Response response = this.response;
                String str = this.network;
                Object obj = this.address;
                Integer num = this.port;
                String str2 = this.domainStrategy;
                String str3 = this.redirect;
                Integer num2 = this.userLevel;
                String str4 = this.inboundTag;
                String str5 = this.secretKey;
                List<WireGuardBean> list4 = this.peers;
                List<Integer> list5 = this.reserved;
                Integer num3 = this.mtu;
                String str6 = this.obfsPassword;
                StringBuilder sb = new StringBuilder("OutSettingsBean(vnext=");
                sb.append(list);
                sb.append(", fragment=");
                sb.append(fragmentBean);
                sb.append(", noises=");
                sb.append(list2);
                sb.append(", servers=");
                sb.append(list3);
                sb.append(", response=");
                sb.append(response);
                sb.append(", network=");
                sb.append(str);
                sb.append(", address=");
                sb.append(obj);
                sb.append(", port=");
                sb.append(num);
                sb.append(", domainStrategy=");
                AbstractC0749x8313616e.m3350x5ac5058d(sb, str2, ", redirect=", str3, ", userLevel=");
                sb.append(num2);
                sb.append(", inboundTag=");
                sb.append(str4);
                sb.append(", secretKey=");
                sb.append(str5);
                sb.append(", peers=");
                sb.append(list4);
                sb.append(", reserved=");
                sb.append(list5);
                sb.append(", mtu=");
                sb.append(num3);
                sb.append(", obfsPassword=");
                return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, str6, ")");
            }

            public OutSettingsBean(@Nullable List<VnextBean> list, @Nullable FragmentBean fragmentBean, @Nullable List<NoiseBean> list2, @Nullable List<ServersBean> list3, @Nullable Response response, @Nullable String str, @Nullable Object obj, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, @Nullable String str4, @Nullable String str5, @Nullable List<WireGuardBean> list4, @Nullable List<Integer> list5, @Nullable Integer num3, @Nullable String str6) {
                this.vnext = list;
                this.fragment = fragmentBean;
                this.noises = list2;
                this.servers = list3;
                this.response = response;
                this.network = str;
                this.address = obj;
                this.port = num;
                this.domainStrategy = str2;
                this.redirect = str3;
                this.userLevel = num2;
                this.inboundTag = str4;
                this.secretKey = str5;
                this.peers = list4;
                this.reserved = list5;
                this.mtu = num3;
                this.obfsPassword = str6;
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001 B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;", "", "address", "", "port", "", "users", "", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;", "<init>", "(Ljava/lang/String;ILjava/util/List;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getPort", "()I", "setPort", "(I)V", "getUsers", "()Ljava/util/List;", "setUsers", "(Ljava/util/List;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "UsersBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class VnextBean {

                @NotNull
                private String address;
                private int port;

                @NotNull
                private List<UsersBean> users;

                @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003JR\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0005HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\r\"\u0004\b\u0016\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000f¨\u0006,"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;", "", "id", "", "alterId", "", "security", "level", "encryption", "flow", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getAlterId", "()Ljava/lang/Integer;", "setAlterId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSecurity", "setSecurity", "getLevel", "()I", "setLevel", "(I)V", "getEncryption", "setEncryption", "getFlow", "setFlow", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class UsersBean {

                    @Nullable
                    private Integer alterId;

                    @Nullable
                    private String encryption;

                    @Nullable
                    private String flow;

                    @NotNull
                    private String id;
                    private int level;

                    @Nullable
                    private String security;

                    public UsersBean() {
                        this(null, null, null, 0, null, null, 63, null);
                    }

                    public static /* synthetic */ UsersBean copy$default(UsersBean usersBean, String str, Integer num, String str2, int i, String str3, String str4, int i2, Object obj) {
                        if ((i2 & 1) != 0) {
                            str = usersBean.id;
                        }
                        if ((i2 & 2) != 0) {
                            num = usersBean.alterId;
                        }
                        Integer num2 = num;
                        if ((i2 & 4) != 0) {
                            str2 = usersBean.security;
                        }
                        String str5 = str2;
                        if ((i2 & 8) != 0) {
                            i = usersBean.level;
                        }
                        int i3 = i;
                        if ((i2 & 16) != 0) {
                            str3 = usersBean.encryption;
                        }
                        String str6 = str3;
                        if ((i2 & 32) != 0) {
                            str4 = usersBean.flow;
                        }
                        return usersBean.copy(str, num2, str5, i3, str6, str4);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getId() {
                        return this.id;
                    }

                    @Nullable
                    /* renamed from: component2, reason: from getter */
                    public final Integer getAlterId() {
                        return this.alterId;
                    }

                    @Nullable
                    /* renamed from: component3, reason: from getter */
                    public final String getSecurity() {
                        return this.security;
                    }

                    /* renamed from: component4, reason: from getter */
                    public final int getLevel() {
                        return this.level;
                    }

                    @Nullable
                    /* renamed from: component5, reason: from getter */
                    public final String getEncryption() {
                        return this.encryption;
                    }

                    @Nullable
                    /* renamed from: component6, reason: from getter */
                    public final String getFlow() {
                        return this.flow;
                    }

                    @NotNull
                    public final UsersBean copy(@NotNull String id, @Nullable Integer alterId, @Nullable String security, int level, @Nullable String encryption, @Nullable String flow) {
                        Intrinsics.checkNotNullParameter(id, new ObfuscatedString(new long[]{1252781808399081956L, 928642134916037123L}).toString());
                        return new UsersBean(id, alterId, security, level, encryption, flow);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof UsersBean)) {
                            return false;
                        }
                        UsersBean usersBean = (UsersBean) other;
                        return Intrinsics.areEqual(this.id, usersBean.id) && Intrinsics.areEqual(this.alterId, usersBean.alterId) && Intrinsics.areEqual(this.security, usersBean.security) && this.level == usersBean.level && Intrinsics.areEqual(this.encryption, usersBean.encryption) && Intrinsics.areEqual(this.flow, usersBean.flow);
                    }

                    @Nullable
                    public final Integer getAlterId() {
                        return this.alterId;
                    }

                    @Nullable
                    public final String getEncryption() {
                        return this.encryption;
                    }

                    @Nullable
                    public final String getFlow() {
                        return this.flow;
                    }

                    @NotNull
                    public final String getId() {
                        return this.id;
                    }

                    public final int getLevel() {
                        return this.level;
                    }

                    @Nullable
                    public final String getSecurity() {
                        return this.security;
                    }

                    public int hashCode() {
                        int hashCode = this.id.hashCode() * 31;
                        Integer num = this.alterId;
                        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
                        String str = this.security;
                        int hashCode3 = (((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + this.level) * 31;
                        String str2 = this.encryption;
                        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
                        String str3 = this.flow;
                        return hashCode4 + (str3 != null ? str3.hashCode() : 0);
                    }

                    public final void setAlterId(@Nullable Integer num) {
                        this.alterId = num;
                    }

                    public final void setEncryption(@Nullable String str) {
                        this.encryption = str;
                    }

                    public final void setFlow(@Nullable String str) {
                        this.flow = str;
                    }

                    public final void setId(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-2538636792544461299L, 8001693697686944646L}).toString());
                        this.id = str;
                    }

                    public final void setLevel(int i) {
                        this.level = i;
                    }

                    public final void setSecurity(@Nullable String str) {
                        this.security = str;
                    }

                    @NotNull
                    public String toString() {
                        return "UsersBean(id=" + this.id + ", alterId=" + this.alterId + ", security=" + this.security + ", level=" + this.level + ", encryption=" + this.encryption + ", flow=" + this.flow + ")";
                    }

                    public UsersBean(@NotNull String str, @Nullable Integer num, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1231698899639575290L, 6272449511599968741L}).toString());
                        this.id = str;
                        this.alterId = num;
                        this.security = str2;
                        this.level = i;
                        this.encryption = str3;
                        this.flow = str4;
                    }

                    public /* synthetic */ UsersBean(String str, Integer num, String str2, int i, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i2 & 1) != 0 ? new ObfuscatedString(new long[]{-7026134334695249137L}).toString() : str, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? 8 : i, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4);
                    }
                }

                public VnextBean(@NotNull String str, int i, @NotNull List<UsersBean> list) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8075282824201152766L, 7647212019141877199L}).toString());
                    Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{488303952472639754L, -2343416834402435546L}).toString());
                    this.address = str;
                    this.port = i;
                    this.users = list;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public static /* synthetic */ VnextBean copy$default(VnextBean vnextBean, String str, int i, List list, int i2, Object obj) {
                    if ((i2 & 1) != 0) {
                        str = vnextBean.address;
                    }
                    if ((i2 & 2) != 0) {
                        i = vnextBean.port;
                    }
                    if ((i2 & 4) != 0) {
                        list = vnextBean.users;
                    }
                    return vnextBean.copy(str, i, list);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getAddress() {
                    return this.address;
                }

                /* renamed from: component2, reason: from getter */
                public final int getPort() {
                    return this.port;
                }

                @NotNull
                public final List<UsersBean> component3() {
                    return this.users;
                }

                @NotNull
                public final VnextBean copy(@NotNull String address, int port, @NotNull List<UsersBean> users) {
                    Intrinsics.checkNotNullParameter(address, new ObfuscatedString(new long[]{-5847351210794333878L, 7475845557164448721L}).toString());
                    Intrinsics.checkNotNullParameter(users, new ObfuscatedString(new long[]{-4130262389569899150L, 8925574262436308071L}).toString());
                    return new VnextBean(address, port, users);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof VnextBean)) {
                        return false;
                    }
                    VnextBean vnextBean = (VnextBean) other;
                    return Intrinsics.areEqual(this.address, vnextBean.address) && this.port == vnextBean.port && Intrinsics.areEqual(this.users, vnextBean.users);
                }

                @NotNull
                public final String getAddress() {
                    return this.address;
                }

                public final int getPort() {
                    return this.port;
                }

                @NotNull
                public final List<UsersBean> getUsers() {
                    return this.users;
                }

                public int hashCode() {
                    return this.users.hashCode() + (((this.address.hashCode() * 31) + this.port) * 31);
                }

                public final void setAddress(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-7664448097359724980L, -8776141023089109207L}).toString());
                    this.address = str;
                }

                public final void setPort(int i) {
                    this.port = i;
                }

                public final void setUsers(@NotNull List<UsersBean> list) {
                    Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{8024150070743305068L, -489348037221320568L}).toString());
                    this.users = list;
                }

                @NotNull
                public String toString() {
                    return "VnextBean(address=" + this.address + ", port=" + this.port + ", users=" + this.users + ")";
                }

                public /* synthetic */ VnextBean(String str, int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i2 & 1) != 0 ? new ObfuscatedString(new long[]{4764229236230638021L}).toString() : str, (i2 & 2) != 0 ? AppConfig.DEFAULT_PORT : i, list);
                }
            }

            public /* synthetic */ OutSettingsBean(List list, FragmentBean fragmentBean, List list2, List list3, Response response, String str, Object obj, Integer num, String str2, String str3, Integer num2, String str4, String str5, List list4, List list5, Integer num3, String str6, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : fragmentBean, (i & 4) != 0 ? null : list2, (i & 8) != 0 ? null : list3, (i & 16) != 0 ? null : response, (i & 32) != 0 ? null : str, (i & 64) != 0 ? null : obj, (i & 128) != 0 ? null : num, (i & 256) != 0 ? null : str2, (i & 512) != 0 ? null : str3, (i & 1024) != 0 ? null : num2, (i & 2048) != 0 ? null : str4, (i & 4096) != 0 ? null : str5, (i & 8192) != 0 ? null : list4, (i & 16384) != 0 ? null : list5, (i & 32768) != 0 ? null : num3, (i & 65536) != 0 ? null : str6);
            }
        }

        @Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bI\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001:\u000bklmnopqrstuB¹\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010U\u001a\u00020\u0003HÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u001cHÆ\u0003J»\u0001\u0010d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÆ\u0001J\u0013\u0010e\u001a\u00020f2\b\u0010g\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010h\u001a\u00020iHÖ\u0001J\t\u0010j\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010>\"\u0004\bF\u0010@R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\bO\u0010PR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010T¨\u0006v"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;", "", "network", "", "security", "tcpSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;", "kcpSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;", "wsSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;", "httpupgradeSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;", "xhttpSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;", "httpSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;", "tlsSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;", "quicSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;", "realitySettings", "grpcSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;", "hy2steriaSettings", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;", "dsSettings", "sockopt", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V", "getNetwork", "()Ljava/lang/String;", "setNetwork", "(Ljava/lang/String;)V", "getSecurity", "setSecurity", "getTcpSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;", "setTcpSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;)V", "getKcpSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;", "setKcpSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;)V", "getWsSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;", "setWsSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;)V", "getHttpupgradeSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;", "setHttpupgradeSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;)V", "getXhttpSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;", "setXhttpSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;)V", "getHttpSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;", "setHttpSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;)V", "getTlsSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;", "setTlsSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V", "getQuicSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;", "setQuicSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;)V", "getRealitySettings", "setRealitySettings", "getGrpcSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;", "setGrpcSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;)V", "getHy2steriaSettings", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;", "setHy2steriaSettings", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;)V", "getDsSettings", "()Ljava/lang/Object;", "getSockopt", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;", "setSockopt", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "", "other", "hashCode", "", "toString", "TcpSettingsBean", "KcpSettingsBean", "WsSettingsBean", "HttpupgradeSettingsBean", "XhttpSettingsBean", "HttpSettingsBean", "SockoptBean", "TlsSettingsBean", "QuicSettingBean", "GrpcSettingsBean", "Hy2steriaSettingsBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class StreamSettingsBean {

            @Nullable
            private final Object dsSettings;

            @Nullable
            private GrpcSettingsBean grpcSettings;

            @Nullable
            private HttpSettingsBean httpSettings;

            @Nullable
            private HttpupgradeSettingsBean httpupgradeSettings;

            @Nullable
            private Hy2steriaSettingsBean hy2steriaSettings;

            @Nullable
            private KcpSettingsBean kcpSettings;

            @NotNull
            private String network;

            @Nullable
            private QuicSettingBean quicSettings;

            @Nullable
            private TlsSettingsBean realitySettings;

            @Nullable
            private String security;

            @Nullable
            private SockoptBean sockopt;

            @Nullable
            private TcpSettingsBean tcpSettings;

            @Nullable
            private TlsSettingsBean tlsSettings;

            @Nullable
            private WsSettingsBean wsSettings;

            @Nullable
            private XhttpSettingsBean xhttpSettings;

            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b!\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018JH\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00062\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\bHÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001a¨\u0006)"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;", "", "serviceName", "", "authority", "multiMode", "", "idle_timeout", "", "health_check_timeout", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getServiceName", "()Ljava/lang/String;", "setServiceName", "(Ljava/lang/String;)V", "getAuthority", "setAuthority", "getMultiMode", "()Ljava/lang/Boolean;", "setMultiMode", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getIdle_timeout", "()Ljava/lang/Integer;", "setIdle_timeout", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHealth_check_timeout", "setHealth_check_timeout", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class GrpcSettingsBean {

                @Nullable
                private String authority;

                @Nullable
                private Integer health_check_timeout;

                @Nullable
                private Integer idle_timeout;

                @Nullable
                private Boolean multiMode;

                @NotNull
                private String serviceName;

                public GrpcSettingsBean() {
                    this(null, null, null, null, null, 31, null);
                }

                public static /* synthetic */ GrpcSettingsBean copy$default(GrpcSettingsBean grpcSettingsBean, String str, String str2, Boolean bool, Integer num, Integer num2, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = grpcSettingsBean.serviceName;
                    }
                    if ((i & 2) != 0) {
                        str2 = grpcSettingsBean.authority;
                    }
                    String str3 = str2;
                    if ((i & 4) != 0) {
                        bool = grpcSettingsBean.multiMode;
                    }
                    Boolean bool2 = bool;
                    if ((i & 8) != 0) {
                        num = grpcSettingsBean.idle_timeout;
                    }
                    Integer num3 = num;
                    if ((i & 16) != 0) {
                        num2 = grpcSettingsBean.health_check_timeout;
                    }
                    return grpcSettingsBean.copy(str, str3, bool2, num3, num2);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getServiceName() {
                    return this.serviceName;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getAuthority() {
                    return this.authority;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final Boolean getMultiMode() {
                    return this.multiMode;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final Integer getIdle_timeout() {
                    return this.idle_timeout;
                }

                @Nullable
                /* renamed from: component5, reason: from getter */
                public final Integer getHealth_check_timeout() {
                    return this.health_check_timeout;
                }

                @NotNull
                public final GrpcSettingsBean copy(@NotNull String serviceName, @Nullable String authority, @Nullable Boolean multiMode, @Nullable Integer idle_timeout, @Nullable Integer health_check_timeout) {
                    Intrinsics.checkNotNullParameter(serviceName, new ObfuscatedString(new long[]{-7586811920845909288L, 3980230396260275494L, 5094089905371835055L}).toString());
                    return new GrpcSettingsBean(serviceName, authority, multiMode, idle_timeout, health_check_timeout);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof GrpcSettingsBean)) {
                        return false;
                    }
                    GrpcSettingsBean grpcSettingsBean = (GrpcSettingsBean) other;
                    return Intrinsics.areEqual(this.serviceName, grpcSettingsBean.serviceName) && Intrinsics.areEqual(this.authority, grpcSettingsBean.authority) && Intrinsics.areEqual(this.multiMode, grpcSettingsBean.multiMode) && Intrinsics.areEqual(this.idle_timeout, grpcSettingsBean.idle_timeout) && Intrinsics.areEqual(this.health_check_timeout, grpcSettingsBean.health_check_timeout);
                }

                @Nullable
                public final String getAuthority() {
                    return this.authority;
                }

                @Nullable
                public final Integer getHealth_check_timeout() {
                    return this.health_check_timeout;
                }

                @Nullable
                public final Integer getIdle_timeout() {
                    return this.idle_timeout;
                }

                @Nullable
                public final Boolean getMultiMode() {
                    return this.multiMode;
                }

                @NotNull
                public final String getServiceName() {
                    return this.serviceName;
                }

                public int hashCode() {
                    int hashCode = this.serviceName.hashCode() * 31;
                    String str = this.authority;
                    int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                    Boolean bool = this.multiMode;
                    int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
                    Integer num = this.idle_timeout;
                    int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
                    Integer num2 = this.health_check_timeout;
                    return hashCode4 + (num2 != null ? num2.hashCode() : 0);
                }

                public final void setAuthority(@Nullable String str) {
                    this.authority = str;
                }

                public final void setHealth_check_timeout(@Nullable Integer num) {
                    this.health_check_timeout = num;
                }

                public final void setIdle_timeout(@Nullable Integer num) {
                    this.idle_timeout = num;
                }

                public final void setMultiMode(@Nullable Boolean bool) {
                    this.multiMode = bool;
                }

                public final void setServiceName(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6777433215103617036L, -2109147754883592804L}).toString());
                    this.serviceName = str;
                }

                @NotNull
                public String toString() {
                    String str = this.serviceName;
                    String str2 = this.authority;
                    Boolean bool = this.multiMode;
                    Integer num = this.idle_timeout;
                    Integer num2 = this.health_check_timeout;
                    StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("GrpcSettingsBean(serviceName=", str, ", authority=", str2, ", multiMode=");
                    m2944x4440ab85.append(bool);
                    m2944x4440ab85.append(", idle_timeout=");
                    m2944x4440ab85.append(num);
                    m2944x4440ab85.append(", health_check_timeout=");
                    m2944x4440ab85.append(num2);
                    m2944x4440ab85.append(")");
                    return m2944x4440ab85.toString();
                }

                public GrpcSettingsBean(@NotNull String str, @Nullable String str2, @Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{643074056616080164L, -5004289920644435042L, 2241996418699293675L}).toString());
                    this.serviceName = str;
                    this.authority = str2;
                    this.multiMode = bool;
                    this.idle_timeout = num;
                    this.health_check_timeout = num2;
                }

                public /* synthetic */ GrpcSettingsBean(String str, String str2, Boolean bool, Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? new ObfuscatedString(new long[]{1099748598918740312L}).toString() : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : bool, (i & 8) != 0 ? null : num, (i & 16) == 0 ? num2 : null);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0004HÆ\u0003J%\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0004HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;", "", "host", "", "", "path", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getHost", "()Ljava/util/List;", "setHost", "(Ljava/util/List;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class HttpSettingsBean {

                @NotNull
                private List<String> host;

                @Nullable
                private String path;

                /* JADX WARN: Multi-variable type inference failed */
                public HttpSettingsBean() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                /* JADX WARN: Multi-variable type inference failed */
                public static /* synthetic */ HttpSettingsBean copy$default(HttpSettingsBean httpSettingsBean, List list, String str, int i, Object obj) {
                    if ((i & 1) != 0) {
                        list = httpSettingsBean.host;
                    }
                    if ((i & 2) != 0) {
                        str = httpSettingsBean.path;
                    }
                    return httpSettingsBean.copy(list, str);
                }

                @NotNull
                public final List<String> component1() {
                    return this.host;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getPath() {
                    return this.path;
                }

                @NotNull
                public final HttpSettingsBean copy(@NotNull List<String> host, @Nullable String path) {
                    Intrinsics.checkNotNullParameter(host, new ObfuscatedString(new long[]{2705285015093352626L, 6541268011396451749L}).toString());
                    return new HttpSettingsBean(host, path);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof HttpSettingsBean)) {
                        return false;
                    }
                    HttpSettingsBean httpSettingsBean = (HttpSettingsBean) other;
                    return Intrinsics.areEqual(this.host, httpSettingsBean.host) && Intrinsics.areEqual(this.path, httpSettingsBean.path);
                }

                @NotNull
                public final List<String> getHost() {
                    return this.host;
                }

                @Nullable
                public final String getPath() {
                    return this.path;
                }

                public int hashCode() {
                    int hashCode = this.host.hashCode() * 31;
                    String str = this.path;
                    return hashCode + (str == null ? 0 : str.hashCode());
                }

                public final void setHost(@NotNull List<String> list) {
                    Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{1719328816332959187L, 682927936456404450L}).toString());
                    this.host = list;
                }

                public final void setPath(@Nullable String str) {
                    this.path = str;
                }

                @NotNull
                public String toString() {
                    return "HttpSettingsBean(host=" + this.host + ", path=" + this.path + ")";
                }

                public HttpSettingsBean(@NotNull List<String> list, @Nullable String str) {
                    Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{-8231688349400312381L, -2358730749334219856L}).toString());
                    this.host = list;
                    this.path = str;
                }

                public /* synthetic */ HttpSettingsBean(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? null : str);
                }
            }

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J2\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;", "", "path", "", "host", "acceptProxyProtocol", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "getHost", "setHost", "getAcceptProxyProtocol", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class HttpupgradeSettingsBean {

                @Nullable
                private final Boolean acceptProxyProtocol;

                @Nullable
                private String host;

                @Nullable
                private String path;

                public HttpupgradeSettingsBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ HttpupgradeSettingsBean copy$default(HttpupgradeSettingsBean httpupgradeSettingsBean, String str, String str2, Boolean bool, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = httpupgradeSettingsBean.path;
                    }
                    if ((i & 2) != 0) {
                        str2 = httpupgradeSettingsBean.host;
                    }
                    if ((i & 4) != 0) {
                        bool = httpupgradeSettingsBean.acceptProxyProtocol;
                    }
                    return httpupgradeSettingsBean.copy(str, str2, bool);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getPath() {
                    return this.path;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getHost() {
                    return this.host;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @NotNull
                public final HttpupgradeSettingsBean copy(@Nullable String path, @Nullable String host, @Nullable Boolean acceptProxyProtocol) {
                    return new HttpupgradeSettingsBean(path, host, acceptProxyProtocol);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof HttpupgradeSettingsBean)) {
                        return false;
                    }
                    HttpupgradeSettingsBean httpupgradeSettingsBean = (HttpupgradeSettingsBean) other;
                    return Intrinsics.areEqual(this.path, httpupgradeSettingsBean.path) && Intrinsics.areEqual(this.host, httpupgradeSettingsBean.host) && Intrinsics.areEqual(this.acceptProxyProtocol, httpupgradeSettingsBean.acceptProxyProtocol);
                }

                @Nullable
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @Nullable
                public final String getHost() {
                    return this.host;
                }

                @Nullable
                public final String getPath() {
                    return this.path;
                }

                public int hashCode() {
                    String str = this.path;
                    int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.host;
                    int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    Boolean bool = this.acceptProxyProtocol;
                    return hashCode2 + (bool != null ? bool.hashCode() : 0);
                }

                public final void setHost(@Nullable String str) {
                    this.host = str;
                }

                public final void setPath(@Nullable String str) {
                    this.path = str;
                }

                @NotNull
                public String toString() {
                    String str = this.path;
                    String str2 = this.host;
                    Boolean bool = this.acceptProxyProtocol;
                    StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("HttpupgradeSettingsBean(path=", str, ", host=", str2, ", acceptProxyProtocol=");
                    m2944x4440ab85.append(bool);
                    m2944x4440ab85.append(")");
                    return m2944x4440ab85.toString();
                }

                public HttpupgradeSettingsBean(@Nullable String str, @Nullable String str2, @Nullable Boolean bool) {
                    this.path = str;
                    this.host = str2;
                    this.acceptProxyProtocol = bool;
                }

                public /* synthetic */ HttpupgradeSettingsBean(String str, String str2, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : bool);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001!B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\""}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;", "", "password", "", "use_udp_extension", "", "congestion", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;)V", "getPassword", "()Ljava/lang/String;", "setPassword", "(Ljava/lang/String;)V", "getUse_udp_extension", "()Ljava/lang/Boolean;", "setUse_udp_extension", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getCongestion", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;", "setCongestion", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;)V", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;", "equals", "other", "hashCode", "", "toString", "Hy2CongestionBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class Hy2steriaSettingsBean {

                @Nullable
                private Hy2CongestionBean congestion;

                @Nullable
                private String password;

                @Nullable
                private Boolean use_udp_extension;

                @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ2\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "up_mbps", "", "down_mbps", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getUp_mbps", "()Ljava/lang/Integer;", "setUp_mbps", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDown_mbps", "setDown_mbps", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean$Hy2CongestionBean;", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class Hy2CongestionBean {

                    @Nullable
                    private Integer down_mbps;

                    @Nullable
                    private String type;

                    @Nullable
                    private Integer up_mbps;

                    public Hy2CongestionBean() {
                        this(null, null, null, 7, null);
                    }

                    public static /* synthetic */ Hy2CongestionBean copy$default(Hy2CongestionBean hy2CongestionBean, String str, Integer num, Integer num2, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = hy2CongestionBean.type;
                        }
                        if ((i & 2) != 0) {
                            num = hy2CongestionBean.up_mbps;
                        }
                        if ((i & 4) != 0) {
                            num2 = hy2CongestionBean.down_mbps;
                        }
                        return hy2CongestionBean.copy(str, num, num2);
                    }

                    @Nullable
                    /* renamed from: component1, reason: from getter */
                    public final String getType() {
                        return this.type;
                    }

                    @Nullable
                    /* renamed from: component2, reason: from getter */
                    public final Integer getUp_mbps() {
                        return this.up_mbps;
                    }

                    @Nullable
                    /* renamed from: component3, reason: from getter */
                    public final Integer getDown_mbps() {
                        return this.down_mbps;
                    }

                    @NotNull
                    public final Hy2CongestionBean copy(@Nullable String type, @Nullable Integer up_mbps, @Nullable Integer down_mbps) {
                        return new Hy2CongestionBean(type, up_mbps, down_mbps);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof Hy2CongestionBean)) {
                            return false;
                        }
                        Hy2CongestionBean hy2CongestionBean = (Hy2CongestionBean) other;
                        return Intrinsics.areEqual(this.type, hy2CongestionBean.type) && Intrinsics.areEqual(this.up_mbps, hy2CongestionBean.up_mbps) && Intrinsics.areEqual(this.down_mbps, hy2CongestionBean.down_mbps);
                    }

                    @Nullable
                    public final Integer getDown_mbps() {
                        return this.down_mbps;
                    }

                    @Nullable
                    public final String getType() {
                        return this.type;
                    }

                    @Nullable
                    public final Integer getUp_mbps() {
                        return this.up_mbps;
                    }

                    public int hashCode() {
                        String str = this.type;
                        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                        Integer num = this.up_mbps;
                        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
                        Integer num2 = this.down_mbps;
                        return hashCode2 + (num2 != null ? num2.hashCode() : 0);
                    }

                    public final void setDown_mbps(@Nullable Integer num) {
                        this.down_mbps = num;
                    }

                    public final void setType(@Nullable String str) {
                        this.type = str;
                    }

                    public final void setUp_mbps(@Nullable Integer num) {
                        this.up_mbps = num;
                    }

                    @NotNull
                    public String toString() {
                        return "Hy2CongestionBean(type=" + this.type + ", up_mbps=" + this.up_mbps + ", down_mbps=" + this.down_mbps + ")";
                    }

                    public Hy2CongestionBean(@Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
                        this.type = str;
                        this.up_mbps = num;
                        this.down_mbps = num2;
                    }

                    public /* synthetic */ Hy2CongestionBean(String str, Integer num, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? new ObfuscatedString(new long[]{-2528341122273358203L, -942865451756638552L}).toString() : str, (2 & i) != 0 ? null : num, (i & 4) != 0 ? null : num2);
                    }
                }

                public Hy2steriaSettingsBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ Hy2steriaSettingsBean copy$default(Hy2steriaSettingsBean hy2steriaSettingsBean, String str, Boolean bool, Hy2CongestionBean hy2CongestionBean, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = hy2steriaSettingsBean.password;
                    }
                    if ((i & 2) != 0) {
                        bool = hy2steriaSettingsBean.use_udp_extension;
                    }
                    if ((i & 4) != 0) {
                        hy2CongestionBean = hy2steriaSettingsBean.congestion;
                    }
                    return hy2steriaSettingsBean.copy(str, bool, hy2CongestionBean);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getPassword() {
                    return this.password;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final Boolean getUse_udp_extension() {
                    return this.use_udp_extension;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final Hy2CongestionBean getCongestion() {
                    return this.congestion;
                }

                @NotNull
                public final Hy2steriaSettingsBean copy(@Nullable String password, @Nullable Boolean use_udp_extension, @Nullable Hy2CongestionBean congestion) {
                    return new Hy2steriaSettingsBean(password, use_udp_extension, congestion);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof Hy2steriaSettingsBean)) {
                        return false;
                    }
                    Hy2steriaSettingsBean hy2steriaSettingsBean = (Hy2steriaSettingsBean) other;
                    return Intrinsics.areEqual(this.password, hy2steriaSettingsBean.password) && Intrinsics.areEqual(this.use_udp_extension, hy2steriaSettingsBean.use_udp_extension) && Intrinsics.areEqual(this.congestion, hy2steriaSettingsBean.congestion);
                }

                @Nullable
                public final Hy2CongestionBean getCongestion() {
                    return this.congestion;
                }

                @Nullable
                public final String getPassword() {
                    return this.password;
                }

                @Nullable
                public final Boolean getUse_udp_extension() {
                    return this.use_udp_extension;
                }

                public int hashCode() {
                    String str = this.password;
                    int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                    Boolean bool = this.use_udp_extension;
                    int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
                    Hy2CongestionBean hy2CongestionBean = this.congestion;
                    return hashCode2 + (hy2CongestionBean != null ? hy2CongestionBean.hashCode() : 0);
                }

                public final void setCongestion(@Nullable Hy2CongestionBean hy2CongestionBean) {
                    this.congestion = hy2CongestionBean;
                }

                public final void setPassword(@Nullable String str) {
                    this.password = str;
                }

                public final void setUse_udp_extension(@Nullable Boolean bool) {
                    this.use_udp_extension = bool;
                }

                @NotNull
                public String toString() {
                    return "Hy2steriaSettingsBean(password=" + this.password + ", use_udp_extension=" + this.use_udp_extension + ", congestion=" + this.congestion + ")";
                }

                public Hy2steriaSettingsBean(@Nullable String str, @Nullable Boolean bool, @Nullable Hy2CongestionBean hy2CongestionBean) {
                    this.password = str;
                    this.use_udp_extension = bool;
                    this.congestion = hy2CongestionBean;
                }

                public /* synthetic */ Hy2steriaSettingsBean(String str, Boolean bool, Hy2CongestionBean hy2CongestionBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? Boolean.TRUE : bool, (i & 4) != 0 ? null : hy2CongestionBean);
                }
            }

            @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b,\b\u0086\b\u0018\u00002\u00020\u0001:\u00019Bc\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\bHÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\fHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u000eHÆ\u0003Je\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u00105\u001a\u00020\b2\b\u00106\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00107\u001a\u00020\u0003HÖ\u0001J\t\u00108\u001a\u00020\u000eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u0006:"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;", "", "mtu", "", "tti", "uplinkCapacity", "downlinkCapacity", "congestion", "", "readBufferSize", "writeBufferSize", "header", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;", "seed", "", "<init>", "(IIIIZIILcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;Ljava/lang/String;)V", "getMtu", "()I", "setMtu", "(I)V", "getTti", "setTti", "getUplinkCapacity", "setUplinkCapacity", "getDownlinkCapacity", "setDownlinkCapacity", "getCongestion", "()Z", "setCongestion", "(Z)V", "getReadBufferSize", "setReadBufferSize", "getWriteBufferSize", "setWriteBufferSize", "getHeader", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;", "setHeader", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;)V", "getSeed", "()Ljava/lang/String;", "setSeed", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "HeaderBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class KcpSettingsBean {
                private boolean congestion;
                private int downlinkCapacity;

                @NotNull
                private HeaderBean header;
                private int mtu;
                private int readBufferSize;

                @Nullable
                private String seed;
                private int tti;
                private int uplinkCapacity;
                private int writeBufferSize;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "domain", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getDomain", "setDomain", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class HeaderBean {

                    @Nullable
                    private String domain;

                    @NotNull
                    private String type;

                    /* JADX WARN: Multi-variable type inference failed */
                    public HeaderBean() {
                        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                    }

                    public static /* synthetic */ HeaderBean copy$default(HeaderBean headerBean, String str, String str2, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = headerBean.type;
                        }
                        if ((i & 2) != 0) {
                            str2 = headerBean.domain;
                        }
                        return headerBean.copy(str, str2);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getType() {
                        return this.type;
                    }

                    @Nullable
                    /* renamed from: component2, reason: from getter */
                    public final String getDomain() {
                        return this.domain;
                    }

                    @NotNull
                    public final HeaderBean copy(@NotNull String type, @Nullable String domain) {
                        Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{-1876476562101561465L, -7554823740112779453L}).toString());
                        return new HeaderBean(type, domain);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof HeaderBean)) {
                            return false;
                        }
                        HeaderBean headerBean = (HeaderBean) other;
                        return Intrinsics.areEqual(this.type, headerBean.type) && Intrinsics.areEqual(this.domain, headerBean.domain);
                    }

                    @Nullable
                    public final String getDomain() {
                        return this.domain;
                    }

                    @NotNull
                    public final String getType() {
                        return this.type;
                    }

                    public int hashCode() {
                        int hashCode = this.type.hashCode() * 31;
                        String str = this.domain;
                        return hashCode + (str == null ? 0 : str.hashCode());
                    }

                    public final void setDomain(@Nullable String str) {
                        this.domain = str;
                    }

                    public final void setType(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1394585589994676896L, -3727577935552073088L}).toString());
                        this.type = str;
                    }

                    @NotNull
                    public String toString() {
                        return "HeaderBean(type=" + this.type + ", domain=" + this.domain + ")";
                    }

                    public HeaderBean(@NotNull String str, @Nullable String str2) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6886744133654647183L, -5450390201223906510L}).toString());
                        this.type = str;
                        this.domain = str2;
                    }

                    public /* synthetic */ HeaderBean(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? new ObfuscatedString(new long[]{8570941204631691501L, -659259143500466323L}).toString() : str, (i & 2) != 0 ? null : str2);
                    }
                }

                public KcpSettingsBean() {
                    this(0, 0, 0, 0, false, 0, 0, null, null, 511, null);
                }

                /* renamed from: component1, reason: from getter */
                public final int getMtu() {
                    return this.mtu;
                }

                /* renamed from: component2, reason: from getter */
                public final int getTti() {
                    return this.tti;
                }

                /* renamed from: component3, reason: from getter */
                public final int getUplinkCapacity() {
                    return this.uplinkCapacity;
                }

                /* renamed from: component4, reason: from getter */
                public final int getDownlinkCapacity() {
                    return this.downlinkCapacity;
                }

                /* renamed from: component5, reason: from getter */
                public final boolean getCongestion() {
                    return this.congestion;
                }

                /* renamed from: component6, reason: from getter */
                public final int getReadBufferSize() {
                    return this.readBufferSize;
                }

                /* renamed from: component7, reason: from getter */
                public final int getWriteBufferSize() {
                    return this.writeBufferSize;
                }

                @NotNull
                /* renamed from: component8, reason: from getter */
                public final HeaderBean getHeader() {
                    return this.header;
                }

                @Nullable
                /* renamed from: component9, reason: from getter */
                public final String getSeed() {
                    return this.seed;
                }

                @NotNull
                public final KcpSettingsBean copy(int mtu, int tti, int uplinkCapacity, int downlinkCapacity, boolean congestion, int readBufferSize, int writeBufferSize, @NotNull HeaderBean header, @Nullable String seed) {
                    Intrinsics.checkNotNullParameter(header, new ObfuscatedString(new long[]{-7026150063430973899L, -2115701698529674203L}).toString());
                    return new KcpSettingsBean(mtu, tti, uplinkCapacity, downlinkCapacity, congestion, readBufferSize, writeBufferSize, header, seed);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof KcpSettingsBean)) {
                        return false;
                    }
                    KcpSettingsBean kcpSettingsBean = (KcpSettingsBean) other;
                    return this.mtu == kcpSettingsBean.mtu && this.tti == kcpSettingsBean.tti && this.uplinkCapacity == kcpSettingsBean.uplinkCapacity && this.downlinkCapacity == kcpSettingsBean.downlinkCapacity && this.congestion == kcpSettingsBean.congestion && this.readBufferSize == kcpSettingsBean.readBufferSize && this.writeBufferSize == kcpSettingsBean.writeBufferSize && Intrinsics.areEqual(this.header, kcpSettingsBean.header) && Intrinsics.areEqual(this.seed, kcpSettingsBean.seed);
                }

                public final boolean getCongestion() {
                    return this.congestion;
                }

                public final int getDownlinkCapacity() {
                    return this.downlinkCapacity;
                }

                @NotNull
                public final HeaderBean getHeader() {
                    return this.header;
                }

                public final int getMtu() {
                    return this.mtu;
                }

                public final int getReadBufferSize() {
                    return this.readBufferSize;
                }

                @Nullable
                public final String getSeed() {
                    return this.seed;
                }

                public final int getTti() {
                    return this.tti;
                }

                public final int getUplinkCapacity() {
                    return this.uplinkCapacity;
                }

                public final int getWriteBufferSize() {
                    return this.writeBufferSize;
                }

                public int hashCode() {
                    int i;
                    int hashCode;
                    int i2 = ((((((this.mtu * 31) + this.tti) * 31) + this.uplinkCapacity) * 31) + this.downlinkCapacity) * 31;
                    if (this.congestion) {
                        i = 1231;
                    } else {
                        i = 1237;
                    }
                    int hashCode2 = (this.header.hashCode() + ((((((i2 + i) * 31) + this.readBufferSize) * 31) + this.writeBufferSize) * 31)) * 31;
                    String str = this.seed;
                    if (str == null) {
                        hashCode = 0;
                    } else {
                        hashCode = str.hashCode();
                    }
                    return hashCode2 + hashCode;
                }

                public final void setCongestion(boolean z) {
                    this.congestion = z;
                }

                public final void setDownlinkCapacity(int i) {
                    this.downlinkCapacity = i;
                }

                public final void setHeader(@NotNull HeaderBean headerBean) {
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{-3492202150958564039L, -757516816146723744L}).toString());
                    this.header = headerBean;
                }

                public final void setMtu(int i) {
                    this.mtu = i;
                }

                public final void setReadBufferSize(int i) {
                    this.readBufferSize = i;
                }

                public final void setSeed(@Nullable String str) {
                    this.seed = str;
                }

                public final void setTti(int i) {
                    this.tti = i;
                }

                public final void setUplinkCapacity(int i) {
                    this.uplinkCapacity = i;
                }

                public final void setWriteBufferSize(int i) {
                    this.writeBufferSize = i;
                }

                @NotNull
                public String toString() {
                    int i = this.mtu;
                    int i2 = this.tti;
                    int i3 = this.uplinkCapacity;
                    int i4 = this.downlinkCapacity;
                    boolean z = this.congestion;
                    int i5 = this.readBufferSize;
                    int i6 = this.writeBufferSize;
                    HeaderBean headerBean = this.header;
                    String str = this.seed;
                    StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "KcpSettingsBean(mtu=", ", tti=", ", uplinkCapacity=");
                    m2937x8c6fc18a.append(i3);
                    m2937x8c6fc18a.append(", downlinkCapacity=");
                    m2937x8c6fc18a.append(i4);
                    m2937x8c6fc18a.append(", congestion=");
                    m2937x8c6fc18a.append(z);
                    m2937x8c6fc18a.append(", readBufferSize=");
                    m2937x8c6fc18a.append(i5);
                    m2937x8c6fc18a.append(", writeBufferSize=");
                    m2937x8c6fc18a.append(i6);
                    m2937x8c6fc18a.append(", header=");
                    m2937x8c6fc18a.append(headerBean);
                    m2937x8c6fc18a.append(", seed=");
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(m2937x8c6fc18a, str, ")");
                }

                public KcpSettingsBean(int i, int i2, int i3, int i4, boolean z, int i5, int i6, @NotNull HeaderBean headerBean, @Nullable String str) {
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{4779191779084298247L, -3650074256555207539L}).toString());
                    this.mtu = i;
                    this.tti = i2;
                    this.uplinkCapacity = i3;
                    this.downlinkCapacity = i4;
                    this.congestion = z;
                    this.readBufferSize = i5;
                    this.writeBufferSize = i6;
                    this.header = headerBean;
                    this.seed = str;
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /* JADX WARN: Multi-variable type inference failed */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public /* synthetic */ KcpSettingsBean(int i, int i2, int i3, int i4, boolean z, int i5, int i6, HeaderBean headerBean, String str, int i7, DefaultConstructorMarker defaultConstructorMarker) {
                    this(r1, r2, r3, r4, r5, r6, r7, r8, (i7 & 256) == 0 ? str : null);
                    HeaderBean headerBean2;
                    int i8 = (i7 & 1) != 0 ? 1350 : i;
                    int i9 = (i7 & 2) != 0 ? 50 : i2;
                    int i10 = (i7 & 4) != 0 ? 12 : i3;
                    int i11 = (i7 & 8) != 0 ? 100 : i4;
                    boolean z2 = (i7 & 16) != 0 ? false : z;
                    int i12 = (i7 & 32) != 0 ? 1 : i5;
                    int i13 = (i7 & 64) == 0 ? i6 : 1;
                    Object[] objArr = 0;
                    Object[] objArr2 = 0;
                    Object[] objArr3 = 0;
                    if ((i7 & 128) != 0) {
                        headerBean2 = new HeaderBean(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
                    } else {
                        headerBean2 = headerBean;
                    }
                }
            }

            @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001dB%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;", "", "security", "", "key", "header", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean$HeaderBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean$HeaderBean;)V", "getSecurity", "()Ljava/lang/String;", "setSecurity", "(Ljava/lang/String;)V", "getKey", "setKey", "getHeader", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean$HeaderBean;", "setHeader", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean$HeaderBean;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "HeaderBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class QuicSettingBean {

                @NotNull
                private HeaderBean header;

                @NotNull
                private String key;

                @NotNull
                private String security;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean$HeaderBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "<init>", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "setType", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class HeaderBean {

                    @NotNull
                    private String type;

                    /* JADX WARN: Multi-variable type inference failed */
                    public HeaderBean() {
                        this(null, 1, 0 == true ? 1 : 0);
                    }

                    public static /* synthetic */ HeaderBean copy$default(HeaderBean headerBean, String str, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = headerBean.type;
                        }
                        return headerBean.copy(str);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getType() {
                        return this.type;
                    }

                    @NotNull
                    public final HeaderBean copy(@NotNull String type) {
                        Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{-1922229299738079357L, 6135487377274431735L}).toString());
                        return new HeaderBean(type);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        return (other instanceof HeaderBean) && Intrinsics.areEqual(this.type, ((HeaderBean) other).type);
                    }

                    @NotNull
                    public final String getType() {
                        return this.type;
                    }

                    public int hashCode() {
                        return this.type.hashCode();
                    }

                    public final void setType(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3085575575688643379L, -794599623383125956L}).toString());
                        this.type = str;
                    }

                    @NotNull
                    public String toString() {
                        return AbstractC0362x4440ab85.m2932x95f25580("HeaderBean(type=", this.type, ")");
                    }

                    public HeaderBean(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{9165292788858760929L, -8651325621761377483L}).toString());
                        this.type = str;
                    }

                    public /* synthetic */ HeaderBean(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? new ObfuscatedString(new long[]{421331725645516653L, 2734881453326243281L}).toString() : str);
                    }
                }

                public QuicSettingBean() {
                    this(null, null, null, 7, null);
                }

                public static /* synthetic */ QuicSettingBean copy$default(QuicSettingBean quicSettingBean, String str, String str2, HeaderBean headerBean, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = quicSettingBean.security;
                    }
                    if ((i & 2) != 0) {
                        str2 = quicSettingBean.key;
                    }
                    if ((i & 4) != 0) {
                        headerBean = quicSettingBean.header;
                    }
                    return quicSettingBean.copy(str, str2, headerBean);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final String getSecurity() {
                    return this.security;
                }

                @NotNull
                /* renamed from: component2, reason: from getter */
                public final String getKey() {
                    return this.key;
                }

                @NotNull
                /* renamed from: component3, reason: from getter */
                public final HeaderBean getHeader() {
                    return this.header;
                }

                @NotNull
                public final QuicSettingBean copy(@NotNull String security, @NotNull String key, @NotNull HeaderBean header) {
                    Intrinsics.checkNotNullParameter(security, new ObfuscatedString(new long[]{8862109848740306921L, -7256369613569880380L}).toString());
                    Intrinsics.checkNotNullParameter(key, new ObfuscatedString(new long[]{-5949829898877551435L, -4447701473070173815L}).toString());
                    Intrinsics.checkNotNullParameter(header, new ObfuscatedString(new long[]{7290762370108970688L, 154267726674218298L}).toString());
                    return new QuicSettingBean(security, key, header);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof QuicSettingBean)) {
                        return false;
                    }
                    QuicSettingBean quicSettingBean = (QuicSettingBean) other;
                    return Intrinsics.areEqual(this.security, quicSettingBean.security) && Intrinsics.areEqual(this.key, quicSettingBean.key) && Intrinsics.areEqual(this.header, quicSettingBean.header);
                }

                @NotNull
                public final HeaderBean getHeader() {
                    return this.header;
                }

                @NotNull
                public final String getKey() {
                    return this.key;
                }

                @NotNull
                public final String getSecurity() {
                    return this.security;
                }

                public int hashCode() {
                    return this.header.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(this.security.hashCode() * 31, 31, this.key);
                }

                public final void setHeader(@NotNull HeaderBean headerBean) {
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{-5074320365086330813L, 2450177809046084614L}).toString());
                    this.header = headerBean;
                }

                public final void setKey(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-3739853840391264574L, 8578388339603561372L}).toString());
                    this.key = str;
                }

                public final void setSecurity(@NotNull String str) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-607876728108252882L, -8781509016144971543L}).toString());
                    this.security = str;
                }

                @NotNull
                public String toString() {
                    String str = this.security;
                    String str2 = this.key;
                    HeaderBean headerBean = this.header;
                    StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("QuicSettingBean(security=", str, ", key=", str2, ", header=");
                    m2944x4440ab85.append(headerBean);
                    m2944x4440ab85.append(")");
                    return m2944x4440ab85.toString();
                }

                public QuicSettingBean(@NotNull String str, @NotNull String str2, @NotNull HeaderBean headerBean) {
                    Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{9119593419537162080L, -3994437100571617739L}).toString());
                    Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-4436201597733106470L, -1434368680630449987L}).toString());
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{3012699601024309339L, 6386834274326159252L}).toString());
                    this.security = str;
                    this.key = str2;
                    this.header = headerBean;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public /* synthetic */ QuicSettingBean(String str, String str2, HeaderBean headerBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? new ObfuscatedString(new long[]{-5392800548622265244L, 257388671369113749L}).toString() : str, (2 & i) != 0 ? new ObfuscatedString(new long[]{-8429937447934819525L}).toString() : str2, (i & 4) != 0 ? new HeaderBean(null, 1, 0 == true ? 1 : 0) : headerBean);
                }
            }

            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b)\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010'\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010)\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\bHÆ\u0003Jb\u0010+\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u00032\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0005HÖ\u0001J\t\u00100\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001d¨\u00061"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;", "", "TcpNoDelay", "", "tcpKeepAliveIdle", "", "tcpFastOpen", "tproxy", "", "mark", "dialerProxy", "domainStrategy", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getTcpNoDelay", "()Ljava/lang/Boolean;", "setTcpNoDelay", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getTcpKeepAliveIdle", "()Ljava/lang/Integer;", "setTcpKeepAliveIdle", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTcpFastOpen", "setTcpFastOpen", "getTproxy", "()Ljava/lang/String;", "setTproxy", "(Ljava/lang/String;)V", "getMark", "setMark", "getDialerProxy", "setDialerProxy", "getDomainStrategy", "setDomainStrategy", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class SockoptBean {

                @Nullable
                private Boolean TcpNoDelay;

                @Nullable
                private String dialerProxy;

                @Nullable
                private String domainStrategy;

                @Nullable
                private Integer mark;

                @Nullable
                private Boolean tcpFastOpen;

                @Nullable
                private Integer tcpKeepAliveIdle;

                @Nullable
                private String tproxy;

                public SockoptBean() {
                    this(null, null, null, null, null, null, null, 127, null);
                }

                public static /* synthetic */ SockoptBean copy$default(SockoptBean sockoptBean, Boolean bool, Integer num, Boolean bool2, String str, Integer num2, String str2, String str3, int i, Object obj) {
                    if ((i & 1) != 0) {
                        bool = sockoptBean.TcpNoDelay;
                    }
                    if ((i & 2) != 0) {
                        num = sockoptBean.tcpKeepAliveIdle;
                    }
                    Integer num3 = num;
                    if ((i & 4) != 0) {
                        bool2 = sockoptBean.tcpFastOpen;
                    }
                    Boolean bool3 = bool2;
                    if ((i & 8) != 0) {
                        str = sockoptBean.tproxy;
                    }
                    String str4 = str;
                    if ((i & 16) != 0) {
                        num2 = sockoptBean.mark;
                    }
                    Integer num4 = num2;
                    if ((i & 32) != 0) {
                        str2 = sockoptBean.dialerProxy;
                    }
                    String str5 = str2;
                    if ((i & 64) != 0) {
                        str3 = sockoptBean.domainStrategy;
                    }
                    return sockoptBean.copy(bool, num3, bool3, str4, num4, str5, str3);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final Boolean getTcpNoDelay() {
                    return this.TcpNoDelay;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final Integer getTcpKeepAliveIdle() {
                    return this.tcpKeepAliveIdle;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final Boolean getTcpFastOpen() {
                    return this.tcpFastOpen;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final String getTproxy() {
                    return this.tproxy;
                }

                @Nullable
                /* renamed from: component5, reason: from getter */
                public final Integer getMark() {
                    return this.mark;
                }

                @Nullable
                /* renamed from: component6, reason: from getter */
                public final String getDialerProxy() {
                    return this.dialerProxy;
                }

                @Nullable
                /* renamed from: component7, reason: from getter */
                public final String getDomainStrategy() {
                    return this.domainStrategy;
                }

                @NotNull
                public final SockoptBean copy(@Nullable Boolean TcpNoDelay, @Nullable Integer tcpKeepAliveIdle, @Nullable Boolean tcpFastOpen, @Nullable String tproxy, @Nullable Integer mark, @Nullable String dialerProxy, @Nullable String domainStrategy) {
                    return new SockoptBean(TcpNoDelay, tcpKeepAliveIdle, tcpFastOpen, tproxy, mark, dialerProxy, domainStrategy);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof SockoptBean)) {
                        return false;
                    }
                    SockoptBean sockoptBean = (SockoptBean) other;
                    return Intrinsics.areEqual(this.TcpNoDelay, sockoptBean.TcpNoDelay) && Intrinsics.areEqual(this.tcpKeepAliveIdle, sockoptBean.tcpKeepAliveIdle) && Intrinsics.areEqual(this.tcpFastOpen, sockoptBean.tcpFastOpen) && Intrinsics.areEqual(this.tproxy, sockoptBean.tproxy) && Intrinsics.areEqual(this.mark, sockoptBean.mark) && Intrinsics.areEqual(this.dialerProxy, sockoptBean.dialerProxy) && Intrinsics.areEqual(this.domainStrategy, sockoptBean.domainStrategy);
                }

                @Nullable
                public final String getDialerProxy() {
                    return this.dialerProxy;
                }

                @Nullable
                public final String getDomainStrategy() {
                    return this.domainStrategy;
                }

                @Nullable
                public final Integer getMark() {
                    return this.mark;
                }

                @Nullable
                public final Boolean getTcpFastOpen() {
                    return this.tcpFastOpen;
                }

                @Nullable
                public final Integer getTcpKeepAliveIdle() {
                    return this.tcpKeepAliveIdle;
                }

                @Nullable
                public final Boolean getTcpNoDelay() {
                    return this.TcpNoDelay;
                }

                @Nullable
                public final String getTproxy() {
                    return this.tproxy;
                }

                public int hashCode() {
                    Boolean bool = this.TcpNoDelay;
                    int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
                    Integer num = this.tcpKeepAliveIdle;
                    int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
                    Boolean bool2 = this.tcpFastOpen;
                    int hashCode3 = (hashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
                    String str = this.tproxy;
                    int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
                    Integer num2 = this.mark;
                    int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
                    String str2 = this.dialerProxy;
                    int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
                    String str3 = this.domainStrategy;
                    return hashCode6 + (str3 != null ? str3.hashCode() : 0);
                }

                public final void setDialerProxy(@Nullable String str) {
                    this.dialerProxy = str;
                }

                public final void setDomainStrategy(@Nullable String str) {
                    this.domainStrategy = str;
                }

                public final void setMark(@Nullable Integer num) {
                    this.mark = num;
                }

                public final void setTcpFastOpen(@Nullable Boolean bool) {
                    this.tcpFastOpen = bool;
                }

                public final void setTcpKeepAliveIdle(@Nullable Integer num) {
                    this.tcpKeepAliveIdle = num;
                }

                public final void setTcpNoDelay(@Nullable Boolean bool) {
                    this.TcpNoDelay = bool;
                }

                public final void setTproxy(@Nullable String str) {
                    this.tproxy = str;
                }

                @NotNull
                public String toString() {
                    Boolean bool = this.TcpNoDelay;
                    Integer num = this.tcpKeepAliveIdle;
                    Boolean bool2 = this.tcpFastOpen;
                    String str = this.tproxy;
                    Integer num2 = this.mark;
                    String str2 = this.dialerProxy;
                    String str3 = this.domainStrategy;
                    StringBuilder sb = new StringBuilder("SockoptBean(TcpNoDelay=");
                    sb.append(bool);
                    sb.append(", tcpKeepAliveIdle=");
                    sb.append(num);
                    sb.append(", tcpFastOpen=");
                    sb.append(bool2);
                    sb.append(", tproxy=");
                    sb.append(str);
                    sb.append(", mark=");
                    sb.append(num2);
                    sb.append(", dialerProxy=");
                    sb.append(str2);
                    sb.append(", domainStrategy=");
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, str3, ")");
                }

                public SockoptBean(@Nullable Boolean bool, @Nullable Integer num, @Nullable Boolean bool2, @Nullable String str, @Nullable Integer num2, @Nullable String str2, @Nullable String str3) {
                    this.TcpNoDelay = bool;
                    this.tcpKeepAliveIdle = num;
                    this.tcpFastOpen = bool2;
                    this.tproxy = str;
                    this.mark = num2;
                    this.dialerProxy = str2;
                    this.domainStrategy = str3;
                }

                public /* synthetic */ SockoptBean(Boolean bool, Integer num, Boolean bool2, String str, Integer num2, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : bool2, (i & 8) != 0 ? null : str, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : str3);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ$\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;", "", "header", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;", "acceptProxyProtocol", "", "<init>", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)V", "getHeader", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;", "setHeader", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;)V", "getAcceptProxyProtocol", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;", "equals", "other", "hashCode", "", "toString", "", "HeaderBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class TcpSettingsBean {

                @Nullable
                private final Boolean acceptProxyProtocol;

                @NotNull
                private HeaderBean header;

                @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001fB)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÆ\u0003J+\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "request", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;", "response", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;Ljava/lang/Object;)V", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getRequest", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;", "setRequest", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;)V", "getResponse", "()Ljava/lang/Object;", "setResponse", "(Ljava/lang/Object;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "RequestBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class HeaderBean {

                    @Nullable
                    private RequestBean request;

                    @Nullable
                    private Object response;

                    @NotNull
                    private String type;

                    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001!B9\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0004HÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0004HÖ\u0001R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006\""}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;", "", "path", "", "", "headers", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;", "version", "method", "<init>", "(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;Ljava/lang/String;Ljava/lang/String;)V", "getPath", "()Ljava/util/List;", "setPath", "(Ljava/util/List;)V", "getHeaders", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;", "setHeaders", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;)V", "getVersion", "()Ljava/lang/String;", "getMethod", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "HeadersBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                    /* loaded from: classes3.dex */
                    public static final /* data */ class RequestBean {

                        @NotNull
                        private HeadersBean headers;

                        @Nullable
                        private final String method;

                        @NotNull
                        private List<String> path;

                        @Nullable
                        private final String version;

                        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0004HÆ\u0003J]\u0010\u0019\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0004HÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;", "", "Host", "", "", "userAgent", "acceptEncoding", "Connection", "Pragma", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getHost", "()Ljava/util/List;", "setHost", "(Ljava/util/List;)V", "getUserAgent", "getAcceptEncoding", "getConnection", "getPragma", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                        /* loaded from: classes3.dex */
                        public static final /* data */ class HeadersBean {

                            @Nullable
                            private final List<String> Connection;

                            @Nullable
                            private List<String> Host;

                            @Nullable
                            private final String Pragma;

                            @SerializedName("Accept-Encoding")
                            @Nullable
                            private final List<String> acceptEncoding;

                            @SerializedName("User-Agent")
                            @Nullable
                            private final List<String> userAgent;

                            public HeadersBean() {
                                this(null, null, null, null, null, 31, null);
                            }

                            public static /* synthetic */ HeadersBean copy$default(HeadersBean headersBean, List list, List list2, List list3, List list4, String str, int i, Object obj) {
                                if ((i & 1) != 0) {
                                    list = headersBean.Host;
                                }
                                if ((i & 2) != 0) {
                                    list2 = headersBean.userAgent;
                                }
                                List list5 = list2;
                                if ((i & 4) != 0) {
                                    list3 = headersBean.acceptEncoding;
                                }
                                List list6 = list3;
                                if ((i & 8) != 0) {
                                    list4 = headersBean.Connection;
                                }
                                List list7 = list4;
                                if ((i & 16) != 0) {
                                    str = headersBean.Pragma;
                                }
                                return headersBean.copy(list, list5, list6, list7, str);
                            }

                            @Nullable
                            public final List<String> component1() {
                                return this.Host;
                            }

                            @Nullable
                            public final List<String> component2() {
                                return this.userAgent;
                            }

                            @Nullable
                            public final List<String> component3() {
                                return this.acceptEncoding;
                            }

                            @Nullable
                            public final List<String> component4() {
                                return this.Connection;
                            }

                            @Nullable
                            /* renamed from: component5, reason: from getter */
                            public final String getPragma() {
                                return this.Pragma;
                            }

                            @NotNull
                            public final HeadersBean copy(@Nullable List<String> Host, @Nullable List<String> userAgent, @Nullable List<String> acceptEncoding, @Nullable List<String> Connection, @Nullable String Pragma) {
                                return new HeadersBean(Host, userAgent, acceptEncoding, Connection, Pragma);
                            }

                            public boolean equals(@Nullable Object other) {
                                if (this == other) {
                                    return true;
                                }
                                if (!(other instanceof HeadersBean)) {
                                    return false;
                                }
                                HeadersBean headersBean = (HeadersBean) other;
                                return Intrinsics.areEqual(this.Host, headersBean.Host) && Intrinsics.areEqual(this.userAgent, headersBean.userAgent) && Intrinsics.areEqual(this.acceptEncoding, headersBean.acceptEncoding) && Intrinsics.areEqual(this.Connection, headersBean.Connection) && Intrinsics.areEqual(this.Pragma, headersBean.Pragma);
                            }

                            @Nullable
                            public final List<String> getAcceptEncoding() {
                                return this.acceptEncoding;
                            }

                            @Nullable
                            public final List<String> getConnection() {
                                return this.Connection;
                            }

                            @Nullable
                            public final List<String> getHost() {
                                return this.Host;
                            }

                            @Nullable
                            public final String getPragma() {
                                return this.Pragma;
                            }

                            @Nullable
                            public final List<String> getUserAgent() {
                                return this.userAgent;
                            }

                            public int hashCode() {
                                List<String> list = this.Host;
                                int hashCode = (list == null ? 0 : list.hashCode()) * 31;
                                List<String> list2 = this.userAgent;
                                int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
                                List<String> list3 = this.acceptEncoding;
                                int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
                                List<String> list4 = this.Connection;
                                int hashCode4 = (hashCode3 + (list4 == null ? 0 : list4.hashCode())) * 31;
                                String str = this.Pragma;
                                return hashCode4 + (str != null ? str.hashCode() : 0);
                            }

                            public final void setHost(@Nullable List<String> list) {
                                this.Host = list;
                            }

                            @NotNull
                            public String toString() {
                                List<String> list = this.Host;
                                List<String> list2 = this.userAgent;
                                List<String> list3 = this.acceptEncoding;
                                List<String> list4 = this.Connection;
                                String str = this.Pragma;
                                StringBuilder sb = new StringBuilder("HeadersBean(Host=");
                                sb.append(list);
                                sb.append(", userAgent=");
                                sb.append(list2);
                                sb.append(", acceptEncoding=");
                                sb.append(list3);
                                sb.append(", Connection=");
                                sb.append(list4);
                                sb.append(", Pragma=");
                                return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, str, ")");
                            }

                            public HeadersBean(@Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @Nullable List<String> list4, @Nullable String str) {
                                this.Host = list;
                                this.userAgent = list2;
                                this.acceptEncoding = list3;
                                this.Connection = list4;
                                this.Pragma = str;
                            }

                            public /* synthetic */ HeadersBean(List list, List list2, List list3, List list4, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                                this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? null : list2, (i & 4) != 0 ? null : list3, (i & 8) != 0 ? null : list4, (i & 16) == 0 ? str : null);
                            }
                        }

                        public RequestBean() {
                            this(null, null, null, null, 15, null);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        public static /* synthetic */ RequestBean copy$default(RequestBean requestBean, List list, HeadersBean headersBean, String str, String str2, int i, Object obj) {
                            if ((i & 1) != 0) {
                                list = requestBean.path;
                            }
                            if ((i & 2) != 0) {
                                headersBean = requestBean.headers;
                            }
                            if ((i & 4) != 0) {
                                str = requestBean.version;
                            }
                            if ((i & 8) != 0) {
                                str2 = requestBean.method;
                            }
                            return requestBean.copy(list, headersBean, str, str2);
                        }

                        @NotNull
                        public final List<String> component1() {
                            return this.path;
                        }

                        @NotNull
                        /* renamed from: component2, reason: from getter */
                        public final HeadersBean getHeaders() {
                            return this.headers;
                        }

                        @Nullable
                        /* renamed from: component3, reason: from getter */
                        public final String getVersion() {
                            return this.version;
                        }

                        @Nullable
                        /* renamed from: component4, reason: from getter */
                        public final String getMethod() {
                            return this.method;
                        }

                        @NotNull
                        public final RequestBean copy(@NotNull List<String> path, @NotNull HeadersBean headers, @Nullable String version, @Nullable String method) {
                            Intrinsics.checkNotNullParameter(path, new ObfuscatedString(new long[]{-2195687761377375184L, 2804240402949485535L}).toString());
                            Intrinsics.checkNotNullParameter(headers, new ObfuscatedString(new long[]{849011994274565998L, 5082485591263257315L}).toString());
                            return new RequestBean(path, headers, version, method);
                        }

                        public boolean equals(@Nullable Object other) {
                            if (this == other) {
                                return true;
                            }
                            if (!(other instanceof RequestBean)) {
                                return false;
                            }
                            RequestBean requestBean = (RequestBean) other;
                            return Intrinsics.areEqual(this.path, requestBean.path) && Intrinsics.areEqual(this.headers, requestBean.headers) && Intrinsics.areEqual(this.version, requestBean.version) && Intrinsics.areEqual(this.method, requestBean.method);
                        }

                        @NotNull
                        public final HeadersBean getHeaders() {
                            return this.headers;
                        }

                        @Nullable
                        public final String getMethod() {
                            return this.method;
                        }

                        @NotNull
                        public final List<String> getPath() {
                            return this.path;
                        }

                        @Nullable
                        public final String getVersion() {
                            return this.version;
                        }

                        public int hashCode() {
                            int hashCode = (this.headers.hashCode() + (this.path.hashCode() * 31)) * 31;
                            String str = this.version;
                            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                            String str2 = this.method;
                            return hashCode2 + (str2 != null ? str2.hashCode() : 0);
                        }

                        public final void setHeaders(@NotNull HeadersBean headersBean) {
                            Intrinsics.checkNotNullParameter(headersBean, new ObfuscatedString(new long[]{-6578714511748103844L, -984615920471500184L}).toString());
                            this.headers = headersBean;
                        }

                        public final void setPath(@NotNull List<String> list) {
                            Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{-5012809151289535720L, -5892046993604520651L}).toString());
                            this.path = list;
                        }

                        @NotNull
                        public String toString() {
                            return "RequestBean(path=" + this.path + ", headers=" + this.headers + ", version=" + this.version + ", method=" + this.method + ")";
                        }

                        public RequestBean(@NotNull List<String> list, @NotNull HeadersBean headersBean, @Nullable String str, @Nullable String str2) {
                            Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{4932016711849949036L, 2775405076665426732L}).toString());
                            Intrinsics.checkNotNullParameter(headersBean, new ObfuscatedString(new long[]{2757644895126327532L, 8889693007413390071L}).toString());
                            this.path = list;
                            this.headers = headersBean;
                            this.version = str;
                            this.method = str2;
                        }

                        public /* synthetic */ RequestBean(List list, HeadersBean headersBean, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                            this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? new HeadersBean(null, null, null, null, null, 31, null) : headersBean, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2);
                        }
                    }

                    public HeaderBean() {
                        this(null, null, null, 7, null);
                    }

                    public static /* synthetic */ HeaderBean copy$default(HeaderBean headerBean, String str, RequestBean requestBean, Object obj, int i, Object obj2) {
                        if ((i & 1) != 0) {
                            str = headerBean.type;
                        }
                        if ((i & 2) != 0) {
                            requestBean = headerBean.request;
                        }
                        if ((i & 4) != 0) {
                            obj = headerBean.response;
                        }
                        return headerBean.copy(str, requestBean, obj);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getType() {
                        return this.type;
                    }

                    @Nullable
                    /* renamed from: component2, reason: from getter */
                    public final RequestBean getRequest() {
                        return this.request;
                    }

                    @Nullable
                    /* renamed from: component3, reason: from getter */
                    public final Object getResponse() {
                        return this.response;
                    }

                    @NotNull
                    public final HeaderBean copy(@NotNull String type, @Nullable RequestBean request, @Nullable Object response) {
                        Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{-8546106746558597669L, -3982342258209440881L}).toString());
                        return new HeaderBean(type, request, response);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        if (!(other instanceof HeaderBean)) {
                            return false;
                        }
                        HeaderBean headerBean = (HeaderBean) other;
                        return Intrinsics.areEqual(this.type, headerBean.type) && Intrinsics.areEqual(this.request, headerBean.request) && Intrinsics.areEqual(this.response, headerBean.response);
                    }

                    @Nullable
                    public final RequestBean getRequest() {
                        return this.request;
                    }

                    @Nullable
                    public final Object getResponse() {
                        return this.response;
                    }

                    @NotNull
                    public final String getType() {
                        return this.type;
                    }

                    public int hashCode() {
                        int hashCode = this.type.hashCode() * 31;
                        RequestBean requestBean = this.request;
                        int hashCode2 = (hashCode + (requestBean == null ? 0 : requestBean.hashCode())) * 31;
                        Object obj = this.response;
                        return hashCode2 + (obj != null ? obj.hashCode() : 0);
                    }

                    public final void setRequest(@Nullable RequestBean requestBean) {
                        this.request = requestBean;
                    }

                    public final void setResponse(@Nullable Object obj) {
                        this.response = obj;
                    }

                    public final void setType(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-3774512365446830967L, -5717481203250011005L}).toString());
                        this.type = str;
                    }

                    @NotNull
                    public String toString() {
                        return "HeaderBean(type=" + this.type + ", request=" + this.request + ", response=" + this.response + ")";
                    }

                    public HeaderBean(@NotNull String str, @Nullable RequestBean requestBean, @Nullable Object obj) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-925839625600805792L, 1212032640195778072L}).toString());
                        this.type = str;
                        this.request = requestBean;
                        this.response = obj;
                    }

                    public /* synthetic */ HeaderBean(String str, RequestBean requestBean, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? new ObfuscatedString(new long[]{-9213683503298361854L, -8574067134173207520L}).toString() : str, (2 & i) != 0 ? null : requestBean, (i & 4) != 0 ? null : obj);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                public TcpSettingsBean() {
                    this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                }

                public static /* synthetic */ TcpSettingsBean copy$default(TcpSettingsBean tcpSettingsBean, HeaderBean headerBean, Boolean bool, int i, Object obj) {
                    if ((i & 1) != 0) {
                        headerBean = tcpSettingsBean.header;
                    }
                    if ((i & 2) != 0) {
                        bool = tcpSettingsBean.acceptProxyProtocol;
                    }
                    return tcpSettingsBean.copy(headerBean, bool);
                }

                @NotNull
                /* renamed from: component1, reason: from getter */
                public final HeaderBean getHeader() {
                    return this.header;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @NotNull
                public final TcpSettingsBean copy(@NotNull HeaderBean header, @Nullable Boolean acceptProxyProtocol) {
                    Intrinsics.checkNotNullParameter(header, new ObfuscatedString(new long[]{5235637011326173924L, -5002376905747614720L}).toString());
                    return new TcpSettingsBean(header, acceptProxyProtocol);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof TcpSettingsBean)) {
                        return false;
                    }
                    TcpSettingsBean tcpSettingsBean = (TcpSettingsBean) other;
                    return Intrinsics.areEqual(this.header, tcpSettingsBean.header) && Intrinsics.areEqual(this.acceptProxyProtocol, tcpSettingsBean.acceptProxyProtocol);
                }

                @Nullable
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @NotNull
                public final HeaderBean getHeader() {
                    return this.header;
                }

                public int hashCode() {
                    int hashCode = this.header.hashCode() * 31;
                    Boolean bool = this.acceptProxyProtocol;
                    return hashCode + (bool == null ? 0 : bool.hashCode());
                }

                public final void setHeader(@NotNull HeaderBean headerBean) {
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{-2326686842503488873L, 8069943898595970384L}).toString());
                    this.header = headerBean;
                }

                @NotNull
                public String toString() {
                    return "TcpSettingsBean(header=" + this.header + ", acceptProxyProtocol=" + this.acceptProxyProtocol + ")";
                }

                public TcpSettingsBean(@NotNull HeaderBean headerBean, @Nullable Boolean bool) {
                    Intrinsics.checkNotNullParameter(headerBean, new ObfuscatedString(new long[]{3368310586485563934L, 2498935520943286280L}).toString());
                    this.header = headerBean;
                    this.acceptProxyProtocol = bool;
                }

                public /* synthetic */ TcpSettingsBean(HeaderBean headerBean, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? new HeaderBean(null, null, null, 7, null) : headerBean, (i & 2) != 0 ? null : bool);
                }
            }

            @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b=\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BÃ\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u00109\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007HÆ\u0003J\u0010\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0005HÆ\u0003JÊ\u0001\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00020\u00032\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020EHÖ\u0001J\t\u0010F\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001bR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001fR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010$\u001a\u0004\b(\u0010#R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010$\u001a\u0004\b)\u0010#R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0017R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001b\"\u0004\b.\u0010\u001dR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u001b\"\u0004\b0\u0010\u001d¨\u0006G"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;", "", "allowInsecure", "", "serverName", "", "alpn", "", "minVersion", "maxVersion", "preferServerCipherSuites", "cipherSuites", "fingerprint", "certificates", "disableSystemRoot", "enableSessionResumption", "show", "publicKey", "shortId", "spiderX", "<init>", "(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAllowInsecure", "()Z", "setAllowInsecure", "(Z)V", "getServerName", "()Ljava/lang/String;", "setServerName", "(Ljava/lang/String;)V", "getAlpn", "()Ljava/util/List;", "getMinVersion", "getMaxVersion", "getPreferServerCipherSuites", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCipherSuites", "getFingerprint", "getCertificates", "getDisableSystemRoot", "getEnableSessionResumption", "getShow", "getPublicKey", "setPublicKey", "getShortId", "setShortId", "getSpiderX", "setSpiderX", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class TlsSettingsBean {
                private boolean allowInsecure;

                @Nullable
                private final List<String> alpn;

                @Nullable
                private final List<Object> certificates;

                @Nullable
                private final String cipherSuites;

                @Nullable
                private final Boolean disableSystemRoot;

                @Nullable
                private final Boolean enableSessionResumption;

                @Nullable
                private final String fingerprint;

                @Nullable
                private final String maxVersion;

                @Nullable
                private final String minVersion;

                @Nullable
                private final Boolean preferServerCipherSuites;

                @Nullable
                private String publicKey;

                @Nullable
                private String serverName;

                @Nullable
                private String shortId;
                private final boolean show;

                @Nullable
                private String spiderX;

                public TlsSettingsBean() {
                    this(false, null, null, null, null, null, null, null, null, null, null, false, null, null, null, 32767, null);
                }

                /* renamed from: component1, reason: from getter */
                public final boolean getAllowInsecure() {
                    return this.allowInsecure;
                }

                @Nullable
                /* renamed from: component10, reason: from getter */
                public final Boolean getDisableSystemRoot() {
                    return this.disableSystemRoot;
                }

                @Nullable
                /* renamed from: component11, reason: from getter */
                public final Boolean getEnableSessionResumption() {
                    return this.enableSessionResumption;
                }

                /* renamed from: component12, reason: from getter */
                public final boolean getShow() {
                    return this.show;
                }

                @Nullable
                /* renamed from: component13, reason: from getter */
                public final String getPublicKey() {
                    return this.publicKey;
                }

                @Nullable
                /* renamed from: component14, reason: from getter */
                public final String getShortId() {
                    return this.shortId;
                }

                @Nullable
                /* renamed from: component15, reason: from getter */
                public final String getSpiderX() {
                    return this.spiderX;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getServerName() {
                    return this.serverName;
                }

                @Nullable
                public final List<String> component3() {
                    return this.alpn;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final String getMinVersion() {
                    return this.minVersion;
                }

                @Nullable
                /* renamed from: component5, reason: from getter */
                public final String getMaxVersion() {
                    return this.maxVersion;
                }

                @Nullable
                /* renamed from: component6, reason: from getter */
                public final Boolean getPreferServerCipherSuites() {
                    return this.preferServerCipherSuites;
                }

                @Nullable
                /* renamed from: component7, reason: from getter */
                public final String getCipherSuites() {
                    return this.cipherSuites;
                }

                @Nullable
                /* renamed from: component8, reason: from getter */
                public final String getFingerprint() {
                    return this.fingerprint;
                }

                @Nullable
                public final List<Object> component9() {
                    return this.certificates;
                }

                @NotNull
                public final TlsSettingsBean copy(boolean allowInsecure, @Nullable String serverName, @Nullable List<String> alpn, @Nullable String minVersion, @Nullable String maxVersion, @Nullable Boolean preferServerCipherSuites, @Nullable String cipherSuites, @Nullable String fingerprint, @Nullable List<? extends Object> certificates, @Nullable Boolean disableSystemRoot, @Nullable Boolean enableSessionResumption, boolean show, @Nullable String publicKey, @Nullable String shortId, @Nullable String spiderX) {
                    return new TlsSettingsBean(allowInsecure, serverName, alpn, minVersion, maxVersion, preferServerCipherSuites, cipherSuites, fingerprint, certificates, disableSystemRoot, enableSessionResumption, show, publicKey, shortId, spiderX);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof TlsSettingsBean)) {
                        return false;
                    }
                    TlsSettingsBean tlsSettingsBean = (TlsSettingsBean) other;
                    return this.allowInsecure == tlsSettingsBean.allowInsecure && Intrinsics.areEqual(this.serverName, tlsSettingsBean.serverName) && Intrinsics.areEqual(this.alpn, tlsSettingsBean.alpn) && Intrinsics.areEqual(this.minVersion, tlsSettingsBean.minVersion) && Intrinsics.areEqual(this.maxVersion, tlsSettingsBean.maxVersion) && Intrinsics.areEqual(this.preferServerCipherSuites, tlsSettingsBean.preferServerCipherSuites) && Intrinsics.areEqual(this.cipherSuites, tlsSettingsBean.cipherSuites) && Intrinsics.areEqual(this.fingerprint, tlsSettingsBean.fingerprint) && Intrinsics.areEqual(this.certificates, tlsSettingsBean.certificates) && Intrinsics.areEqual(this.disableSystemRoot, tlsSettingsBean.disableSystemRoot) && Intrinsics.areEqual(this.enableSessionResumption, tlsSettingsBean.enableSessionResumption) && this.show == tlsSettingsBean.show && Intrinsics.areEqual(this.publicKey, tlsSettingsBean.publicKey) && Intrinsics.areEqual(this.shortId, tlsSettingsBean.shortId) && Intrinsics.areEqual(this.spiderX, tlsSettingsBean.spiderX);
                }

                public final boolean getAllowInsecure() {
                    return this.allowInsecure;
                }

                @Nullable
                public final List<String> getAlpn() {
                    return this.alpn;
                }

                @Nullable
                public final List<Object> getCertificates() {
                    return this.certificates;
                }

                @Nullable
                public final String getCipherSuites() {
                    return this.cipherSuites;
                }

                @Nullable
                public final Boolean getDisableSystemRoot() {
                    return this.disableSystemRoot;
                }

                @Nullable
                public final Boolean getEnableSessionResumption() {
                    return this.enableSessionResumption;
                }

                @Nullable
                public final String getFingerprint() {
                    return this.fingerprint;
                }

                @Nullable
                public final String getMaxVersion() {
                    return this.maxVersion;
                }

                @Nullable
                public final String getMinVersion() {
                    return this.minVersion;
                }

                @Nullable
                public final Boolean getPreferServerCipherSuites() {
                    return this.preferServerCipherSuites;
                }

                @Nullable
                public final String getPublicKey() {
                    return this.publicKey;
                }

                @Nullable
                public final String getServerName() {
                    return this.serverName;
                }

                @Nullable
                public final String getShortId() {
                    return this.shortId;
                }

                public final boolean getShow() {
                    return this.show;
                }

                @Nullable
                public final String getSpiderX() {
                    return this.spiderX;
                }

                public int hashCode() {
                    int i;
                    int hashCode;
                    int hashCode2;
                    int hashCode3;
                    int hashCode4;
                    int hashCode5;
                    int hashCode6;
                    int hashCode7;
                    int hashCode8;
                    int hashCode9;
                    int hashCode10;
                    int hashCode11;
                    int hashCode12;
                    int i2 = 1237;
                    if (this.allowInsecure) {
                        i = 1231;
                    } else {
                        i = 1237;
                    }
                    int i3 = i * 31;
                    String str = this.serverName;
                    int i4 = 0;
                    if (str == null) {
                        hashCode = 0;
                    } else {
                        hashCode = str.hashCode();
                    }
                    int i5 = (i3 + hashCode) * 31;
                    List<String> list = this.alpn;
                    if (list == null) {
                        hashCode2 = 0;
                    } else {
                        hashCode2 = list.hashCode();
                    }
                    int i6 = (i5 + hashCode2) * 31;
                    String str2 = this.minVersion;
                    if (str2 == null) {
                        hashCode3 = 0;
                    } else {
                        hashCode3 = str2.hashCode();
                    }
                    int i7 = (i6 + hashCode3) * 31;
                    String str3 = this.maxVersion;
                    if (str3 == null) {
                        hashCode4 = 0;
                    } else {
                        hashCode4 = str3.hashCode();
                    }
                    int i8 = (i7 + hashCode4) * 31;
                    Boolean bool = this.preferServerCipherSuites;
                    if (bool == null) {
                        hashCode5 = 0;
                    } else {
                        hashCode5 = bool.hashCode();
                    }
                    int i9 = (i8 + hashCode5) * 31;
                    String str4 = this.cipherSuites;
                    if (str4 == null) {
                        hashCode6 = 0;
                    } else {
                        hashCode6 = str4.hashCode();
                    }
                    int i10 = (i9 + hashCode6) * 31;
                    String str5 = this.fingerprint;
                    if (str5 == null) {
                        hashCode7 = 0;
                    } else {
                        hashCode7 = str5.hashCode();
                    }
                    int i11 = (i10 + hashCode7) * 31;
                    List<Object> list2 = this.certificates;
                    if (list2 == null) {
                        hashCode8 = 0;
                    } else {
                        hashCode8 = list2.hashCode();
                    }
                    int i12 = (i11 + hashCode8) * 31;
                    Boolean bool2 = this.disableSystemRoot;
                    if (bool2 == null) {
                        hashCode9 = 0;
                    } else {
                        hashCode9 = bool2.hashCode();
                    }
                    int i13 = (i12 + hashCode9) * 31;
                    Boolean bool3 = this.enableSessionResumption;
                    if (bool3 == null) {
                        hashCode10 = 0;
                    } else {
                        hashCode10 = bool3.hashCode();
                    }
                    int i14 = (i13 + hashCode10) * 31;
                    if (this.show) {
                        i2 = 1231;
                    }
                    int i15 = (i14 + i2) * 31;
                    String str6 = this.publicKey;
                    if (str6 == null) {
                        hashCode11 = 0;
                    } else {
                        hashCode11 = str6.hashCode();
                    }
                    int i16 = (i15 + hashCode11) * 31;
                    String str7 = this.shortId;
                    if (str7 == null) {
                        hashCode12 = 0;
                    } else {
                        hashCode12 = str7.hashCode();
                    }
                    int i17 = (i16 + hashCode12) * 31;
                    String str8 = this.spiderX;
                    if (str8 != null) {
                        i4 = str8.hashCode();
                    }
                    return i17 + i4;
                }

                public final void setAllowInsecure(boolean z) {
                    this.allowInsecure = z;
                }

                public final void setPublicKey(@Nullable String str) {
                    this.publicKey = str;
                }

                public final void setServerName(@Nullable String str) {
                    this.serverName = str;
                }

                public final void setShortId(@Nullable String str) {
                    this.shortId = str;
                }

                public final void setSpiderX(@Nullable String str) {
                    this.spiderX = str;
                }

                @NotNull
                public String toString() {
                    boolean z = this.allowInsecure;
                    String str = this.serverName;
                    List<String> list = this.alpn;
                    String str2 = this.minVersion;
                    String str3 = this.maxVersion;
                    Boolean bool = this.preferServerCipherSuites;
                    String str4 = this.cipherSuites;
                    String str5 = this.fingerprint;
                    List<Object> list2 = this.certificates;
                    Boolean bool2 = this.disableSystemRoot;
                    Boolean bool3 = this.enableSessionResumption;
                    boolean z2 = this.show;
                    String str6 = this.publicKey;
                    String str7 = this.shortId;
                    String str8 = this.spiderX;
                    StringBuilder sb = new StringBuilder("TlsSettingsBean(allowInsecure=");
                    sb.append(z);
                    sb.append(", serverName=");
                    sb.append(str);
                    sb.append(", alpn=");
                    sb.append(list);
                    sb.append(", minVersion=");
                    sb.append(str2);
                    sb.append(", maxVersion=");
                    sb.append(str3);
                    sb.append(", preferServerCipherSuites=");
                    sb.append(bool);
                    sb.append(", cipherSuites=");
                    AbstractC0749x8313616e.m3350x5ac5058d(sb, str4, ", fingerprint=", str5, ", certificates=");
                    sb.append(list2);
                    sb.append(", disableSystemRoot=");
                    sb.append(bool2);
                    sb.append(", enableSessionResumption=");
                    sb.append(bool3);
                    sb.append(", show=");
                    sb.append(z2);
                    sb.append(", publicKey=");
                    AbstractC0749x8313616e.m3350x5ac5058d(sb, str6, ", shortId=", str7, ", spiderX=");
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, str8, ")");
                }

                public TlsSettingsBean(boolean z, @Nullable String str, @Nullable List<String> list, @Nullable String str2, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable String str5, @Nullable List<? extends Object> list2, @Nullable Boolean bool2, @Nullable Boolean bool3, boolean z2, @Nullable String str6, @Nullable String str7, @Nullable String str8) {
                    this.allowInsecure = z;
                    this.serverName = str;
                    this.alpn = list;
                    this.minVersion = str2;
                    this.maxVersion = str3;
                    this.preferServerCipherSuites = bool;
                    this.cipherSuites = str4;
                    this.fingerprint = str5;
                    this.certificates = list2;
                    this.disableSystemRoot = bool2;
                    this.enableSessionResumption = bool3;
                    this.show = z2;
                    this.publicKey = str6;
                    this.shortId = str7;
                    this.spiderX = str8;
                }

                public /* synthetic */ TlsSettingsBean(boolean z, String str, List list, String str2, String str3, Boolean bool, String str4, String str5, List list2, Boolean bool2, Boolean bool3, boolean z2, String str6, String str7, String str8, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : list2, (i & 512) != 0 ? null : bool2, (i & 1024) != 0 ? null : bool3, (i & 2048) == 0 ? z2 : false, (i & 4096) != 0 ? null : str6, (i & 8192) != 0 ? null : str7, (i & 16384) == 0 ? str8 : null);
                }
            }

            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001f\b\u0086\b\u0018\u00002\u00020\u0001:\u0001'BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0019JH\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\t2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0007HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0015\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019¨\u0006("}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;", "", "path", "", "headers", "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;", "maxEarlyData", "", "useBrowserForwarding", "", "acceptProxyProtocol", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "getHeaders", "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;", "setHeaders", "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;)V", "getMaxEarlyData", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUseBrowserForwarding", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getAcceptProxyProtocol", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;", "equals", "other", "hashCode", "toString", "HeadersBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class WsSettingsBean {

                @Nullable
                private final Boolean acceptProxyProtocol;

                @NotNull
                private HeadersBean headers;

                @Nullable
                private final Integer maxEarlyData;

                @Nullable
                private String path;

                @Nullable
                private final Boolean useBrowserForwarding;

                @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;", "", "Host", "", "<init>", "(Ljava/lang/String;)V", "getHost", "()Ljava/lang/String;", "setHost", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
                /* loaded from: classes3.dex */
                public static final /* data */ class HeadersBean {

                    @NotNull
                    private String Host;

                    /* JADX WARN: Multi-variable type inference failed */
                    public HeadersBean() {
                        this(null, 1, 0 == true ? 1 : 0);
                    }

                    public static /* synthetic */ HeadersBean copy$default(HeadersBean headersBean, String str, int i, Object obj) {
                        if ((i & 1) != 0) {
                            str = headersBean.Host;
                        }
                        return headersBean.copy(str);
                    }

                    @NotNull
                    /* renamed from: component1, reason: from getter */
                    public final String getHost() {
                        return this.Host;
                    }

                    @NotNull
                    public final HeadersBean copy(@NotNull String Host) {
                        Intrinsics.checkNotNullParameter(Host, new ObfuscatedString(new long[]{-2019365545712975919L, -6891872692224066417L}).toString());
                        return new HeadersBean(Host);
                    }

                    public boolean equals(@Nullable Object other) {
                        if (this == other) {
                            return true;
                        }
                        return (other instanceof HeadersBean) && Intrinsics.areEqual(this.Host, ((HeadersBean) other).Host);
                    }

                    @NotNull
                    public final String getHost() {
                        return this.Host;
                    }

                    public int hashCode() {
                        return this.Host.hashCode();
                    }

                    public final void setHost(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{5840855550560954948L, -2150723745321529879L}).toString());
                        this.Host = str;
                    }

                    @NotNull
                    public String toString() {
                        return AbstractC0362x4440ab85.m2932x95f25580("HeadersBean(Host=", this.Host, ")");
                    }

                    public HeadersBean(@NotNull String str) {
                        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6859511061302870504L, 5644059706089991342L}).toString());
                        this.Host = str;
                    }

                    public /* synthetic */ HeadersBean(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                        this((i & 1) != 0 ? new ObfuscatedString(new long[]{4221335776992966764L}).toString() : str);
                    }
                }

                public WsSettingsBean() {
                    this(null, null, null, null, null, 31, null);
                }

                public static /* synthetic */ WsSettingsBean copy$default(WsSettingsBean wsSettingsBean, String str, HeadersBean headersBean, Integer num, Boolean bool, Boolean bool2, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = wsSettingsBean.path;
                    }
                    if ((i & 2) != 0) {
                        headersBean = wsSettingsBean.headers;
                    }
                    HeadersBean headersBean2 = headersBean;
                    if ((i & 4) != 0) {
                        num = wsSettingsBean.maxEarlyData;
                    }
                    Integer num2 = num;
                    if ((i & 8) != 0) {
                        bool = wsSettingsBean.useBrowserForwarding;
                    }
                    Boolean bool3 = bool;
                    if ((i & 16) != 0) {
                        bool2 = wsSettingsBean.acceptProxyProtocol;
                    }
                    return wsSettingsBean.copy(str, headersBean2, num2, bool3, bool2);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getPath() {
                    return this.path;
                }

                @NotNull
                /* renamed from: component2, reason: from getter */
                public final HeadersBean getHeaders() {
                    return this.headers;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final Integer getMaxEarlyData() {
                    return this.maxEarlyData;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final Boolean getUseBrowserForwarding() {
                    return this.useBrowserForwarding;
                }

                @Nullable
                /* renamed from: component5, reason: from getter */
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @NotNull
                public final WsSettingsBean copy(@Nullable String path, @NotNull HeadersBean headers, @Nullable Integer maxEarlyData, @Nullable Boolean useBrowserForwarding, @Nullable Boolean acceptProxyProtocol) {
                    Intrinsics.checkNotNullParameter(headers, new ObfuscatedString(new long[]{498341271102604521L, 4745034738070800077L}).toString());
                    return new WsSettingsBean(path, headers, maxEarlyData, useBrowserForwarding, acceptProxyProtocol);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof WsSettingsBean)) {
                        return false;
                    }
                    WsSettingsBean wsSettingsBean = (WsSettingsBean) other;
                    return Intrinsics.areEqual(this.path, wsSettingsBean.path) && Intrinsics.areEqual(this.headers, wsSettingsBean.headers) && Intrinsics.areEqual(this.maxEarlyData, wsSettingsBean.maxEarlyData) && Intrinsics.areEqual(this.useBrowserForwarding, wsSettingsBean.useBrowserForwarding) && Intrinsics.areEqual(this.acceptProxyProtocol, wsSettingsBean.acceptProxyProtocol);
                }

                @Nullable
                public final Boolean getAcceptProxyProtocol() {
                    return this.acceptProxyProtocol;
                }

                @NotNull
                public final HeadersBean getHeaders() {
                    return this.headers;
                }

                @Nullable
                public final Integer getMaxEarlyData() {
                    return this.maxEarlyData;
                }

                @Nullable
                public final String getPath() {
                    return this.path;
                }

                @Nullable
                public final Boolean getUseBrowserForwarding() {
                    return this.useBrowserForwarding;
                }

                public int hashCode() {
                    String str = this.path;
                    int hashCode = (this.headers.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31;
                    Integer num = this.maxEarlyData;
                    int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
                    Boolean bool = this.useBrowserForwarding;
                    int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
                    Boolean bool2 = this.acceptProxyProtocol;
                    return hashCode3 + (bool2 != null ? bool2.hashCode() : 0);
                }

                public final void setHeaders(@NotNull HeadersBean headersBean) {
                    Intrinsics.checkNotNullParameter(headersBean, new ObfuscatedString(new long[]{1212339055299013881L, 5481462447884560896L}).toString());
                    this.headers = headersBean;
                }

                public final void setPath(@Nullable String str) {
                    this.path = str;
                }

                @NotNull
                public String toString() {
                    return "WsSettingsBean(path=" + this.path + ", headers=" + this.headers + ", maxEarlyData=" + this.maxEarlyData + ", useBrowserForwarding=" + this.useBrowserForwarding + ", acceptProxyProtocol=" + this.acceptProxyProtocol + ")";
                }

                public WsSettingsBean(@Nullable String str, @NotNull HeadersBean headersBean, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2) {
                    Intrinsics.checkNotNullParameter(headersBean, new ObfuscatedString(new long[]{1619637510814662506L, -2201443845189843373L}).toString());
                    this.path = str;
                    this.headers = headersBean;
                    this.maxEarlyData = num;
                    this.useBrowserForwarding = bool;
                    this.acceptProxyProtocol = bool2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public /* synthetic */ WsSettingsBean(String str, HeadersBean headersBean, Integer num, Boolean bool, Boolean bool2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? new HeadersBean(null, 1, 0 == true ? 1 : 0) : headersBean, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : bool2);
                }
            }

            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÆ\u0003J9\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;", "", "path", "", "host", "mode", "extra", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "getHost", "setHost", "getMode", "setMode", "getExtra", "()Ljava/lang/Object;", "setExtra", "(Ljava/lang/Object;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public static final /* data */ class XhttpSettingsBean {

                @Nullable
                private Object extra;

                @Nullable
                private String host;

                @Nullable
                private String mode;

                @Nullable
                private String path;

                public XhttpSettingsBean() {
                    this(null, null, null, null, 15, null);
                }

                public static /* synthetic */ XhttpSettingsBean copy$default(XhttpSettingsBean xhttpSettingsBean, String str, String str2, String str3, Object obj, int i, Object obj2) {
                    if ((i & 1) != 0) {
                        str = xhttpSettingsBean.path;
                    }
                    if ((i & 2) != 0) {
                        str2 = xhttpSettingsBean.host;
                    }
                    if ((i & 4) != 0) {
                        str3 = xhttpSettingsBean.mode;
                    }
                    if ((i & 8) != 0) {
                        obj = xhttpSettingsBean.extra;
                    }
                    return xhttpSettingsBean.copy(str, str2, str3, obj);
                }

                @Nullable
                /* renamed from: component1, reason: from getter */
                public final String getPath() {
                    return this.path;
                }

                @Nullable
                /* renamed from: component2, reason: from getter */
                public final String getHost() {
                    return this.host;
                }

                @Nullable
                /* renamed from: component3, reason: from getter */
                public final String getMode() {
                    return this.mode;
                }

                @Nullable
                /* renamed from: component4, reason: from getter */
                public final Object getExtra() {
                    return this.extra;
                }

                @NotNull
                public final XhttpSettingsBean copy(@Nullable String path, @Nullable String host, @Nullable String mode, @Nullable Object extra) {
                    return new XhttpSettingsBean(path, host, mode, extra);
                }

                public boolean equals(@Nullable Object other) {
                    if (this == other) {
                        return true;
                    }
                    if (!(other instanceof XhttpSettingsBean)) {
                        return false;
                    }
                    XhttpSettingsBean xhttpSettingsBean = (XhttpSettingsBean) other;
                    return Intrinsics.areEqual(this.path, xhttpSettingsBean.path) && Intrinsics.areEqual(this.host, xhttpSettingsBean.host) && Intrinsics.areEqual(this.mode, xhttpSettingsBean.mode) && Intrinsics.areEqual(this.extra, xhttpSettingsBean.extra);
                }

                @Nullable
                public final Object getExtra() {
                    return this.extra;
                }

                @Nullable
                public final String getHost() {
                    return this.host;
                }

                @Nullable
                public final String getMode() {
                    return this.mode;
                }

                @Nullable
                public final String getPath() {
                    return this.path;
                }

                public int hashCode() {
                    String str = this.path;
                    int hashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.host;
                    int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    String str3 = this.mode;
                    int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                    Object obj = this.extra;
                    return hashCode3 + (obj != null ? obj.hashCode() : 0);
                }

                public final void setExtra(@Nullable Object obj) {
                    this.extra = obj;
                }

                public final void setHost(@Nullable String str) {
                    this.host = str;
                }

                public final void setMode(@Nullable String str) {
                    this.mode = str;
                }

                public final void setPath(@Nullable String str) {
                    this.path = str;
                }

                @NotNull
                public String toString() {
                    String str = this.path;
                    String str2 = this.host;
                    String str3 = this.mode;
                    Object obj = this.extra;
                    StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("XhttpSettingsBean(path=", str, ", host=", str2, ", mode=");
                    m2944x4440ab85.append(str3);
                    m2944x4440ab85.append(", extra=");
                    m2944x4440ab85.append(obj);
                    m2944x4440ab85.append(")");
                    return m2944x4440ab85.toString();
                }

                public XhttpSettingsBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Object obj) {
                    this.path = str;
                    this.host = str2;
                    this.mode = str3;
                    this.extra = obj;
                }

                public /* synthetic */ XhttpSettingsBean(String str, String str2, String str3, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : obj);
                }
            }

            public StreamSettingsBean() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            /* renamed from: component10, reason: from getter */
            public final QuicSettingBean getQuicSettings() {
                return this.quicSettings;
            }

            @Nullable
            /* renamed from: component11, reason: from getter */
            public final TlsSettingsBean getRealitySettings() {
                return this.realitySettings;
            }

            @Nullable
            /* renamed from: component12, reason: from getter */
            public final GrpcSettingsBean getGrpcSettings() {
                return this.grpcSettings;
            }

            @Nullable
            /* renamed from: component13, reason: from getter */
            public final Hy2steriaSettingsBean getHy2steriaSettings() {
                return this.hy2steriaSettings;
            }

            @Nullable
            /* renamed from: component14, reason: from getter */
            public final Object getDsSettings() {
                return this.dsSettings;
            }

            @Nullable
            /* renamed from: component15, reason: from getter */
            public final SockoptBean getSockopt() {
                return this.sockopt;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final String getSecurity() {
                return this.security;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final TcpSettingsBean getTcpSettings() {
                return this.tcpSettings;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final KcpSettingsBean getKcpSettings() {
                return this.kcpSettings;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final WsSettingsBean getWsSettings() {
                return this.wsSettings;
            }

            @Nullable
            /* renamed from: component6, reason: from getter */
            public final HttpupgradeSettingsBean getHttpupgradeSettings() {
                return this.httpupgradeSettings;
            }

            @Nullable
            /* renamed from: component7, reason: from getter */
            public final XhttpSettingsBean getXhttpSettings() {
                return this.xhttpSettings;
            }

            @Nullable
            /* renamed from: component8, reason: from getter */
            public final HttpSettingsBean getHttpSettings() {
                return this.httpSettings;
            }

            @Nullable
            /* renamed from: component9, reason: from getter */
            public final TlsSettingsBean getTlsSettings() {
                return this.tlsSettings;
            }

            @NotNull
            public final StreamSettingsBean copy(@NotNull String network, @Nullable String security, @Nullable TcpSettingsBean tcpSettings, @Nullable KcpSettingsBean kcpSettings, @Nullable WsSettingsBean wsSettings, @Nullable HttpupgradeSettingsBean httpupgradeSettings, @Nullable XhttpSettingsBean xhttpSettings, @Nullable HttpSettingsBean httpSettings, @Nullable TlsSettingsBean tlsSettings, @Nullable QuicSettingBean quicSettings, @Nullable TlsSettingsBean realitySettings, @Nullable GrpcSettingsBean grpcSettings, @Nullable Hy2steriaSettingsBean hy2steriaSettings, @Nullable Object dsSettings, @Nullable SockoptBean sockopt) {
                Intrinsics.checkNotNullParameter(network, new ObfuscatedString(new long[]{5686790044170628881L, 2488918657372608700L}).toString());
                return new StreamSettingsBean(network, security, tcpSettings, kcpSettings, wsSettings, httpupgradeSettings, xhttpSettings, httpSettings, tlsSettings, quicSettings, realitySettings, grpcSettings, hy2steriaSettings, dsSettings, sockopt);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof StreamSettingsBean)) {
                    return false;
                }
                StreamSettingsBean streamSettingsBean = (StreamSettingsBean) other;
                return Intrinsics.areEqual(this.network, streamSettingsBean.network) && Intrinsics.areEqual(this.security, streamSettingsBean.security) && Intrinsics.areEqual(this.tcpSettings, streamSettingsBean.tcpSettings) && Intrinsics.areEqual(this.kcpSettings, streamSettingsBean.kcpSettings) && Intrinsics.areEqual(this.wsSettings, streamSettingsBean.wsSettings) && Intrinsics.areEqual(this.httpupgradeSettings, streamSettingsBean.httpupgradeSettings) && Intrinsics.areEqual(this.xhttpSettings, streamSettingsBean.xhttpSettings) && Intrinsics.areEqual(this.httpSettings, streamSettingsBean.httpSettings) && Intrinsics.areEqual(this.tlsSettings, streamSettingsBean.tlsSettings) && Intrinsics.areEqual(this.quicSettings, streamSettingsBean.quicSettings) && Intrinsics.areEqual(this.realitySettings, streamSettingsBean.realitySettings) && Intrinsics.areEqual(this.grpcSettings, streamSettingsBean.grpcSettings) && Intrinsics.areEqual(this.hy2steriaSettings, streamSettingsBean.hy2steriaSettings) && Intrinsics.areEqual(this.dsSettings, streamSettingsBean.dsSettings) && Intrinsics.areEqual(this.sockopt, streamSettingsBean.sockopt);
            }

            @Nullable
            public final Object getDsSettings() {
                return this.dsSettings;
            }

            @Nullable
            public final GrpcSettingsBean getGrpcSettings() {
                return this.grpcSettings;
            }

            @Nullable
            public final HttpSettingsBean getHttpSettings() {
                return this.httpSettings;
            }

            @Nullable
            public final HttpupgradeSettingsBean getHttpupgradeSettings() {
                return this.httpupgradeSettings;
            }

            @Nullable
            public final Hy2steriaSettingsBean getHy2steriaSettings() {
                return this.hy2steriaSettings;
            }

            @Nullable
            public final KcpSettingsBean getKcpSettings() {
                return this.kcpSettings;
            }

            @NotNull
            public final String getNetwork() {
                return this.network;
            }

            @Nullable
            public final QuicSettingBean getQuicSettings() {
                return this.quicSettings;
            }

            @Nullable
            public final TlsSettingsBean getRealitySettings() {
                return this.realitySettings;
            }

            @Nullable
            public final String getSecurity() {
                return this.security;
            }

            @Nullable
            public final SockoptBean getSockopt() {
                return this.sockopt;
            }

            @Nullable
            public final TcpSettingsBean getTcpSettings() {
                return this.tcpSettings;
            }

            @Nullable
            public final TlsSettingsBean getTlsSettings() {
                return this.tlsSettings;
            }

            @Nullable
            public final WsSettingsBean getWsSettings() {
                return this.wsSettings;
            }

            @Nullable
            public final XhttpSettingsBean getXhttpSettings() {
                return this.xhttpSettings;
            }

            public int hashCode() {
                int hashCode = this.network.hashCode() * 31;
                String str = this.security;
                int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                TcpSettingsBean tcpSettingsBean = this.tcpSettings;
                int hashCode3 = (hashCode2 + (tcpSettingsBean == null ? 0 : tcpSettingsBean.hashCode())) * 31;
                KcpSettingsBean kcpSettingsBean = this.kcpSettings;
                int hashCode4 = (hashCode3 + (kcpSettingsBean == null ? 0 : kcpSettingsBean.hashCode())) * 31;
                WsSettingsBean wsSettingsBean = this.wsSettings;
                int hashCode5 = (hashCode4 + (wsSettingsBean == null ? 0 : wsSettingsBean.hashCode())) * 31;
                HttpupgradeSettingsBean httpupgradeSettingsBean = this.httpupgradeSettings;
                int hashCode6 = (hashCode5 + (httpupgradeSettingsBean == null ? 0 : httpupgradeSettingsBean.hashCode())) * 31;
                XhttpSettingsBean xhttpSettingsBean = this.xhttpSettings;
                int hashCode7 = (hashCode6 + (xhttpSettingsBean == null ? 0 : xhttpSettingsBean.hashCode())) * 31;
                HttpSettingsBean httpSettingsBean = this.httpSettings;
                int hashCode8 = (hashCode7 + (httpSettingsBean == null ? 0 : httpSettingsBean.hashCode())) * 31;
                TlsSettingsBean tlsSettingsBean = this.tlsSettings;
                int hashCode9 = (hashCode8 + (tlsSettingsBean == null ? 0 : tlsSettingsBean.hashCode())) * 31;
                QuicSettingBean quicSettingBean = this.quicSettings;
                int hashCode10 = (hashCode9 + (quicSettingBean == null ? 0 : quicSettingBean.hashCode())) * 31;
                TlsSettingsBean tlsSettingsBean2 = this.realitySettings;
                int hashCode11 = (hashCode10 + (tlsSettingsBean2 == null ? 0 : tlsSettingsBean2.hashCode())) * 31;
                GrpcSettingsBean grpcSettingsBean = this.grpcSettings;
                int hashCode12 = (hashCode11 + (grpcSettingsBean == null ? 0 : grpcSettingsBean.hashCode())) * 31;
                Hy2steriaSettingsBean hy2steriaSettingsBean = this.hy2steriaSettings;
                int hashCode13 = (hashCode12 + (hy2steriaSettingsBean == null ? 0 : hy2steriaSettingsBean.hashCode())) * 31;
                Object obj = this.dsSettings;
                int hashCode14 = (hashCode13 + (obj == null ? 0 : obj.hashCode())) * 31;
                SockoptBean sockoptBean = this.sockopt;
                return hashCode14 + (sockoptBean != null ? sockoptBean.hashCode() : 0);
            }

            public final void setGrpcSettings(@Nullable GrpcSettingsBean grpcSettingsBean) {
                this.grpcSettings = grpcSettingsBean;
            }

            public final void setHttpSettings(@Nullable HttpSettingsBean httpSettingsBean) {
                this.httpSettings = httpSettingsBean;
            }

            public final void setHttpupgradeSettings(@Nullable HttpupgradeSettingsBean httpupgradeSettingsBean) {
                this.httpupgradeSettings = httpupgradeSettingsBean;
            }

            public final void setHy2steriaSettings(@Nullable Hy2steriaSettingsBean hy2steriaSettingsBean) {
                this.hy2steriaSettings = hy2steriaSettingsBean;
            }

            public final void setKcpSettings(@Nullable KcpSettingsBean kcpSettingsBean) {
                this.kcpSettings = kcpSettingsBean;
            }

            public final void setNetwork(@NotNull String str) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1665561433150149018L, -3598309451803805246L}).toString());
                this.network = str;
            }

            public final void setQuicSettings(@Nullable QuicSettingBean quicSettingBean) {
                this.quicSettings = quicSettingBean;
            }

            public final void setRealitySettings(@Nullable TlsSettingsBean tlsSettingsBean) {
                this.realitySettings = tlsSettingsBean;
            }

            public final void setSecurity(@Nullable String str) {
                this.security = str;
            }

            public final void setSockopt(@Nullable SockoptBean sockoptBean) {
                this.sockopt = sockoptBean;
            }

            public final void setTcpSettings(@Nullable TcpSettingsBean tcpSettingsBean) {
                this.tcpSettings = tcpSettingsBean;
            }

            public final void setTlsSettings(@Nullable TlsSettingsBean tlsSettingsBean) {
                this.tlsSettings = tlsSettingsBean;
            }

            public final void setWsSettings(@Nullable WsSettingsBean wsSettingsBean) {
                this.wsSettings = wsSettingsBean;
            }

            public final void setXhttpSettings(@Nullable XhttpSettingsBean xhttpSettingsBean) {
                this.xhttpSettings = xhttpSettingsBean;
            }

            @NotNull
            public String toString() {
                String str = this.network;
                String str2 = this.security;
                TcpSettingsBean tcpSettingsBean = this.tcpSettings;
                KcpSettingsBean kcpSettingsBean = this.kcpSettings;
                WsSettingsBean wsSettingsBean = this.wsSettings;
                HttpupgradeSettingsBean httpupgradeSettingsBean = this.httpupgradeSettings;
                XhttpSettingsBean xhttpSettingsBean = this.xhttpSettings;
                HttpSettingsBean httpSettingsBean = this.httpSettings;
                TlsSettingsBean tlsSettingsBean = this.tlsSettings;
                QuicSettingBean quicSettingBean = this.quicSettings;
                TlsSettingsBean tlsSettingsBean2 = this.realitySettings;
                GrpcSettingsBean grpcSettingsBean = this.grpcSettings;
                Hy2steriaSettingsBean hy2steriaSettingsBean = this.hy2steriaSettings;
                Object obj = this.dsSettings;
                SockoptBean sockoptBean = this.sockopt;
                StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("StreamSettingsBean(network=", str, ", security=", str2, ", tcpSettings=");
                m2944x4440ab85.append(tcpSettingsBean);
                m2944x4440ab85.append(", kcpSettings=");
                m2944x4440ab85.append(kcpSettingsBean);
                m2944x4440ab85.append(", wsSettings=");
                m2944x4440ab85.append(wsSettingsBean);
                m2944x4440ab85.append(", httpupgradeSettings=");
                m2944x4440ab85.append(httpupgradeSettingsBean);
                m2944x4440ab85.append(", xhttpSettings=");
                m2944x4440ab85.append(xhttpSettingsBean);
                m2944x4440ab85.append(", httpSettings=");
                m2944x4440ab85.append(httpSettingsBean);
                m2944x4440ab85.append(", tlsSettings=");
                m2944x4440ab85.append(tlsSettingsBean);
                m2944x4440ab85.append(", quicSettings=");
                m2944x4440ab85.append(quicSettingBean);
                m2944x4440ab85.append(", realitySettings=");
                m2944x4440ab85.append(tlsSettingsBean2);
                m2944x4440ab85.append(", grpcSettings=");
                m2944x4440ab85.append(grpcSettingsBean);
                m2944x4440ab85.append(", hy2steriaSettings=");
                m2944x4440ab85.append(hy2steriaSettingsBean);
                m2944x4440ab85.append(", dsSettings=");
                m2944x4440ab85.append(obj);
                m2944x4440ab85.append(", sockopt=");
                m2944x4440ab85.append(sockoptBean);
                m2944x4440ab85.append(")");
                return m2944x4440ab85.toString();
            }

            public StreamSettingsBean(@NotNull String str, @Nullable String str2, @Nullable TcpSettingsBean tcpSettingsBean, @Nullable KcpSettingsBean kcpSettingsBean, @Nullable WsSettingsBean wsSettingsBean, @Nullable HttpupgradeSettingsBean httpupgradeSettingsBean, @Nullable XhttpSettingsBean xhttpSettingsBean, @Nullable HttpSettingsBean httpSettingsBean, @Nullable TlsSettingsBean tlsSettingsBean, @Nullable QuicSettingBean quicSettingBean, @Nullable TlsSettingsBean tlsSettingsBean2, @Nullable GrpcSettingsBean grpcSettingsBean, @Nullable Hy2steriaSettingsBean hy2steriaSettingsBean, @Nullable Object obj, @Nullable SockoptBean sockoptBean) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-5732155208455110218L, 3502756462308436598L}).toString());
                this.network = str;
                this.security = str2;
                this.tcpSettings = tcpSettingsBean;
                this.kcpSettings = kcpSettingsBean;
                this.wsSettings = wsSettingsBean;
                this.httpupgradeSettings = httpupgradeSettingsBean;
                this.xhttpSettings = xhttpSettingsBean;
                this.httpSettings = httpSettingsBean;
                this.tlsSettings = tlsSettingsBean;
                this.quicSettings = quicSettingBean;
                this.realitySettings = tlsSettingsBean2;
                this.grpcSettings = grpcSettingsBean;
                this.hy2steriaSettings = hy2steriaSettingsBean;
                this.dsSettings = obj;
                this.sockopt = sockoptBean;
            }

            public /* synthetic */ StreamSettingsBean(String str, String str2, TcpSettingsBean tcpSettingsBean, KcpSettingsBean kcpSettingsBean, WsSettingsBean wsSettingsBean, HttpupgradeSettingsBean httpupgradeSettingsBean, XhttpSettingsBean xhttpSettingsBean, HttpSettingsBean httpSettingsBean, TlsSettingsBean tlsSettingsBean, QuicSettingBean quicSettingBean, TlsSettingsBean tlsSettingsBean2, GrpcSettingsBean grpcSettingsBean, Hy2steriaSettingsBean hy2steriaSettingsBean, Object obj, SockoptBean sockoptBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ObfuscatedString(new long[]{-6494615009457616895L, -5508171436291277100L}).toString() : str, (2 & i) != 0 ? null : str2, (i & 4) != 0 ? null : tcpSettingsBean, (i & 8) != 0 ? null : kcpSettingsBean, (i & 16) != 0 ? null : wsSettingsBean, (i & 32) != 0 ? null : httpupgradeSettingsBean, (i & 64) != 0 ? null : xhttpSettingsBean, (i & 128) != 0 ? null : httpSettingsBean, (i & 256) != 0 ? null : tlsSettingsBean, (i & 512) != 0 ? null : quicSettingBean, (i & 1024) != 0 ? null : tlsSettingsBean2, (i & 2048) != 0 ? null : grpcSettingsBean, (i & 4096) != 0 ? null : hy2steriaSettingsBean, (i & 8192) != 0 ? null : obj, (i & 16384) == 0 ? sockoptBean : null);
            }
        }

        public OutboundBean(@NotNull String str, @NotNull String str2, @Nullable OutSettingsBean outSettingsBean, @Nullable StreamSettingsBean streamSettingsBean, @Nullable Object obj, @Nullable String str3, @Nullable MuxBean muxBean) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1484866884011874212L, 4327995309911633131L}).toString());
            Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{1338089557199531204L, 5099181508343624820L}).toString());
            this.tag = str;
            this.protocol = str2;
            this.settings = outSettingsBean;
            this.streamSettings = streamSettingsBean;
            this.proxySettings = obj;
            this.sendThrough = str3;
            this.mux = muxBean;
        }

        public static /* synthetic */ OutboundBean copy$default(OutboundBean outboundBean, String str, String str2, OutSettingsBean outSettingsBean, StreamSettingsBean streamSettingsBean, Object obj, String str3, MuxBean muxBean, int i, Object obj2) {
            if ((i & 1) != 0) {
                str = outboundBean.tag;
            }
            if ((i & 2) != 0) {
                str2 = outboundBean.protocol;
            }
            String str4 = str2;
            if ((i & 4) != 0) {
                outSettingsBean = outboundBean.settings;
            }
            OutSettingsBean outSettingsBean2 = outSettingsBean;
            if ((i & 8) != 0) {
                streamSettingsBean = outboundBean.streamSettings;
            }
            StreamSettingsBean streamSettingsBean2 = streamSettingsBean;
            if ((i & 16) != 0) {
                obj = outboundBean.proxySettings;
            }
            Object obj3 = obj;
            if ((i & 32) != 0) {
                str3 = outboundBean.sendThrough;
            }
            String str5 = str3;
            if ((i & 64) != 0) {
                muxBean = outboundBean.mux;
            }
            return outboundBean.copy(str, str4, outSettingsBean2, streamSettingsBean2, obj3, str5, muxBean);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getProtocol() {
            return this.protocol;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final OutSettingsBean getSettings() {
            return this.settings;
        }

        @Nullable
        /* renamed from: component4, reason: from getter */
        public final StreamSettingsBean getStreamSettings() {
            return this.streamSettings;
        }

        @Nullable
        /* renamed from: component5, reason: from getter */
        public final Object getProxySettings() {
            return this.proxySettings;
        }

        @Nullable
        /* renamed from: component6, reason: from getter */
        public final String getSendThrough() {
            return this.sendThrough;
        }

        @Nullable
        /* renamed from: component7, reason: from getter */
        public final MuxBean getMux() {
            return this.mux;
        }

        @NotNull
        public final OutboundBean copy(@NotNull String tag, @NotNull String protocol, @Nullable OutSettingsBean settings, @Nullable StreamSettingsBean streamSettings, @Nullable Object proxySettings, @Nullable String sendThrough, @Nullable MuxBean mux) {
            Intrinsics.checkNotNullParameter(tag, new ObfuscatedString(new long[]{4661984244237340907L, -3191484243634941776L}).toString());
            Intrinsics.checkNotNullParameter(protocol, new ObfuscatedString(new long[]{-4952128737908981182L, -1476609796861028158L}).toString());
            return new OutboundBean(tag, protocol, settings, streamSettings, proxySettings, sendThrough, mux);
        }

        @NotNull
        public final StreamSettingsBean.SockoptBean ensureSockopt() {
            StreamSettingsBean streamSettingsBean = this.streamSettings;
            if (streamSettingsBean == null) {
                streamSettingsBean = new StreamSettingsBean(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                this.streamSettings = streamSettingsBean;
            }
            StreamSettingsBean.SockoptBean sockopt = streamSettingsBean.getSockopt();
            if (sockopt == null) {
                StreamSettingsBean.SockoptBean sockoptBean = new StreamSettingsBean.SockoptBean(null, null, null, null, null, null, null, 127, null);
                streamSettingsBean.setSockopt(sockoptBean);
                return sockoptBean;
            }
            return sockopt;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OutboundBean)) {
                return false;
            }
            OutboundBean outboundBean = (OutboundBean) other;
            return Intrinsics.areEqual(this.tag, outboundBean.tag) && Intrinsics.areEqual(this.protocol, outboundBean.protocol) && Intrinsics.areEqual(this.settings, outboundBean.settings) && Intrinsics.areEqual(this.streamSettings, outboundBean.streamSettings) && Intrinsics.areEqual(this.proxySettings, outboundBean.proxySettings) && Intrinsics.areEqual(this.sendThrough, outboundBean.sendThrough) && Intrinsics.areEqual(this.mux, outboundBean.mux);
        }

        @Nullable
        public final MuxBean getMux() {
            return this.mux;
        }

        @Nullable
        public final String getPassword() {
            List<OutSettingsBean.VnextBean> vnext;
            OutSettingsBean.VnextBean vnextBean;
            List<OutSettingsBean.VnextBean.UsersBean> users;
            OutSettingsBean.VnextBean.UsersBean usersBean;
            List<OutSettingsBean.ServersBean> servers;
            OutSettingsBean.ServersBean serversBean;
            List<OutSettingsBean.ServersBean> servers2;
            OutSettingsBean.ServersBean serversBean2;
            List<OutSettingsBean.ServersBean.SocksUsersBean> users2;
            OutSettingsBean.ServersBean.SocksUsersBean socksUsersBean;
            OutSettingsBean outSettingsBean;
            if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-6773784082621596468L, -7947406549517476099L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-6281850484088471851L, -1503146644562250833L}).toString(), true)) {
                if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{6193705330255169703L, -3657296515743128789L, -785935139476944623L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-1864305452353510981L, -6616635038412871893L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-3379247729177364054L, -360813326962925345L, -4922369131349987174L}).toString(), true)) {
                    if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-5600840655756004122L, -4294724419948462479L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{5645447958511999977L, 4396875207053128193L}).toString(), true)) {
                        if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{7727857014585097882L, 2523645193163726368L, -6477957674597221936L}).toString(), true) || (outSettingsBean = this.settings) == null) {
                            return null;
                        }
                        return outSettingsBean.getSecretKey();
                    }
                    OutSettingsBean outSettingsBean2 = this.settings;
                    if (outSettingsBean2 == null || (servers2 = outSettingsBean2.getServers()) == null || (serversBean2 = (OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers2)) == null || (users2 = serversBean2.getUsers()) == null || (socksUsersBean = (OutSettingsBean.ServersBean.SocksUsersBean) CollectionsKt___CollectionsKt.first((List) users2)) == null) {
                        return null;
                    }
                    return socksUsersBean.getPass();
                }
                OutSettingsBean outSettingsBean3 = this.settings;
                if (outSettingsBean3 == null || (servers = outSettingsBean3.getServers()) == null || (serversBean = (OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) == null) {
                    return null;
                }
                return serversBean.getPassword();
            }
            OutSettingsBean outSettingsBean4 = this.settings;
            if (outSettingsBean4 == null || (vnext = outSettingsBean4.getVnext()) == null || (vnextBean = (OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) == null || (users = vnextBean.getUsers()) == null || (usersBean = (OutSettingsBean.VnextBean.UsersBean) CollectionsKt___CollectionsKt.first((List) users)) == null) {
                return null;
            }
            return usersBean.getId();
        }

        @NotNull
        public final String getProtocol() {
            return this.protocol;
        }

        @Nullable
        public final Object getProxySettings() {
            return this.proxySettings;
        }

        @Nullable
        public final String getSecurityEncryption() {
            OutSettingsBean outSettingsBean;
            List<OutSettingsBean.ServersBean> servers;
            OutSettingsBean.ServersBean serversBean;
            List<OutSettingsBean.VnextBean> vnext;
            OutSettingsBean.VnextBean vnextBean;
            List<OutSettingsBean.VnextBean.UsersBean> users;
            OutSettingsBean.VnextBean.UsersBean usersBean;
            List<OutSettingsBean.VnextBean> vnext2;
            OutSettingsBean.VnextBean vnextBean2;
            List<OutSettingsBean.VnextBean.UsersBean> users2;
            OutSettingsBean.VnextBean.UsersBean usersBean2;
            if (AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{2078496864467321539L, 4990064716415237529L}).toString(), true)) {
                OutSettingsBean outSettingsBean2 = this.settings;
                if (outSettingsBean2 == null || (vnext2 = outSettingsBean2.getVnext()) == null || (vnextBean2 = (OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext2)) == null || (users2 = vnextBean2.getUsers()) == null || (usersBean2 = (OutSettingsBean.VnextBean.UsersBean) CollectionsKt___CollectionsKt.first((List) users2)) == null) {
                    return null;
                }
                return usersBean2.getSecurity();
            }
            if (AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-8012701971629098369L, 1675270017784749087L}).toString(), true)) {
                OutSettingsBean outSettingsBean3 = this.settings;
                if (outSettingsBean3 == null || (vnext = outSettingsBean3.getVnext()) == null || (vnextBean = (OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) == null || (users = vnextBean.getUsers()) == null || (usersBean = (OutSettingsBean.VnextBean.UsersBean) CollectionsKt___CollectionsKt.first((List) users)) == null) {
                    return null;
                }
                return usersBean.getEncryption();
            }
            if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-64516972446948496L, -2473627183617572596L, -1238746863557279647L}).toString(), true) || (outSettingsBean = this.settings) == null || (servers = outSettingsBean.getServers()) == null || (serversBean = (OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) == null) {
                return null;
            }
            return serversBean.getMethod();
        }

        @Nullable
        public final String getSendThrough() {
            return this.sendThrough;
        }

        @Nullable
        public final String getServerAddress() {
            List<OutSettingsBean.VnextBean> vnext;
            OutSettingsBean.VnextBean vnextBean;
            List<OutSettingsBean.ServersBean> servers;
            OutSettingsBean.ServersBean serversBean;
            OutSettingsBean outSettingsBean;
            List<OutSettingsBean.WireGuardBean> peers;
            OutSettingsBean.WireGuardBean wireGuardBean;
            String endpoint;
            if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{5845718417727944447L, -7507039773017378439L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{3575735496300453636L, 1960519161793502700L}).toString(), true)) {
                if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{7438128102704665238L, -7626677237857571773L, -909347999014812821L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{2943515330859302991L, -6287332469697604571L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{1932259193571924211L, -8207108915019202896L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-3953007331505276410L, 1042613167073514161L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-1879021790746927597L, 8813519484730576231L, -7858075397134222644L}).toString(), true)) {
                    if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{2218895610575438850L, 6412833125848999314L, -5947343236837739681L}).toString(), true) || (outSettingsBean = this.settings) == null || (peers = outSettingsBean.getPeers()) == null || (wireGuardBean = (OutSettingsBean.WireGuardBean) CollectionsKt___CollectionsKt.first((List) peers)) == null || (endpoint = wireGuardBean.getEndpoint()) == null) {
                        return null;
                    }
                    return StringsKt__StringsKt.substringBeforeLast$default(endpoint, new ObfuscatedString(new long[]{-6183101275385445784L, -6731135981513033224L}).toString(), (String) null, 2, (Object) null);
                }
                OutSettingsBean outSettingsBean2 = this.settings;
                if (outSettingsBean2 == null || (servers = outSettingsBean2.getServers()) == null || (serversBean = (OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) == null) {
                    return null;
                }
                return serversBean.getAddress();
            }
            OutSettingsBean outSettingsBean3 = this.settings;
            if (outSettingsBean3 == null || (vnext = outSettingsBean3.getVnext()) == null || (vnextBean = (OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) == null) {
                return null;
            }
            return vnextBean.getAddress();
        }

        @NotNull
        public final String getServerAddressAndPort() {
            String serverAddress = getServerAddress();
            if (serverAddress == null) {
                serverAddress = new ObfuscatedString(new long[]{7163428131260612553L}).toString();
            }
            Integer serverPort = getServerPort();
            return Utils.INSTANCE.getIpv6Address(serverAddress) + ":" + serverPort;
        }

        @Nullable
        public final Integer getServerPort() {
            List<OutSettingsBean.VnextBean> vnext;
            OutSettingsBean.VnextBean vnextBean;
            List<OutSettingsBean.ServersBean> servers;
            OutSettingsBean.ServersBean serversBean;
            OutSettingsBean outSettingsBean;
            List<OutSettingsBean.WireGuardBean> peers;
            OutSettingsBean.WireGuardBean wireGuardBean;
            String endpoint;
            String substringAfterLast$default;
            if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{6335910826370505711L, 8895060607048008183L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{399434151391956701L, 4181737142783203597L}).toString(), true)) {
                if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{6499919972041129636L, -8765097376744225383L, 6146095295390964672L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-8539241895308294728L, 7199645461908503082L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-3636569625927790394L, -8349046025278967568L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{6790268840112619987L, 3880891726208575499L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{7095892962970691962L, -6897710147471082035L, 3362322271652548180L}).toString(), true)) {
                    if (!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{1615181521379104860L, -4139812377971069551L, -6255529593054341576L}).toString(), true) || (outSettingsBean = this.settings) == null || (peers = outSettingsBean.getPeers()) == null || (wireGuardBean = (OutSettingsBean.WireGuardBean) CollectionsKt___CollectionsKt.first((List) peers)) == null || (endpoint = wireGuardBean.getEndpoint()) == null || (substringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(endpoint, new ObfuscatedString(new long[]{-2172480213054327879L, 5129453108435307827L}).toString(), (String) null, 2, (Object) null)) == null) {
                        return null;
                    }
                    return Integer.valueOf(Integer.parseInt(substringAfterLast$default));
                }
                OutSettingsBean outSettingsBean2 = this.settings;
                if (outSettingsBean2 == null || (servers = outSettingsBean2.getServers()) == null || (serversBean = (OutSettingsBean.ServersBean) CollectionsKt___CollectionsKt.first((List) servers)) == null) {
                    return null;
                }
                return Integer.valueOf(serversBean.getPort());
            }
            OutSettingsBean outSettingsBean3 = this.settings;
            if (outSettingsBean3 == null || (vnext = outSettingsBean3.getVnext()) == null || (vnextBean = (OutSettingsBean.VnextBean) CollectionsKt___CollectionsKt.first((List) vnext)) == null) {
                return null;
            }
            return Integer.valueOf(vnextBean.getPort());
        }

        @Nullable
        public final OutSettingsBean getSettings() {
            return this.settings;
        }

        @Nullable
        public final StreamSettingsBean getStreamSettings() {
            return this.streamSettings;
        }

        @NotNull
        public final String getTag() {
            return this.tag;
        }

        @Nullable
        public final List<String> getTransportSettingDetails() {
            StreamSettingsBean streamSettingsBean;
            String network;
            StreamSettingsBean streamSettingsBean2;
            StreamSettingsBean.GrpcSettingsBean grpcSettings;
            ObfuscatedString obfuscatedString;
            StreamSettingsBean.HttpSettingsBean httpSettings;
            StreamSettingsBean.XhttpSettingsBean xhttpSettings;
            StreamSettingsBean.HttpupgradeSettingsBean httpupgradeSettings;
            StreamSettingsBean.WsSettingsBean wsSettings;
            StreamSettingsBean.KcpSettingsBean kcpSettings;
            StreamSettingsBean.TcpSettingsBean tcpSettings;
            String str;
            List<String> path;
            StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean.HeadersBean headers;
            List<String> host;
            String str2 = null;
            if ((!AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{7066917229089184235L, 901928461942538759L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-1233872499074349175L, -4730695222493943240L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{5995766574119992817L, -985218774524585623L}).toString(), true) && !AbstractC1197x89633db9.equals(this.protocol, new ObfuscatedString(new long[]{-1715697488360814965L, 6917503478724173830L, -7496259701120816270L}).toString(), true)) || (streamSettingsBean = this.streamSettings) == null || (network = streamSettingsBean.getNetwork()) == null) {
                return null;
            }
            if (Intrinsics.areEqual(network, NetworkType.TCP.getType())) {
                StreamSettingsBean streamSettingsBean3 = this.streamSettings;
                if (streamSettingsBean3 == null || (tcpSettings = streamSettingsBean3.getTcpSettings()) == null) {
                    return null;
                }
                String type = tcpSettings.getHeader().getType();
                StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request = tcpSettings.getHeader().getRequest();
                if (request != null && (headers = request.getHeaders()) != null && (host = headers.getHost()) != null) {
                    str = CollectionsKt___CollectionsKt.joinToString$default(host, new ObfuscatedString(new long[]{1897975912970764871L, -6362101318150819900L}).toString(), null, null, 0, null, null, 62, null);
                } else {
                    str = null;
                }
                if (str == null) {
                    str = new ObfuscatedString(new long[]{-4390404090004403167L}).toString();
                }
                StreamSettingsBean.TcpSettingsBean.HeaderBean.RequestBean request2 = tcpSettings.getHeader().getRequest();
                if (request2 != null && (path = request2.getPath()) != null) {
                    str2 = CollectionsKt___CollectionsKt.joinToString$default(path, new ObfuscatedString(new long[]{1549040505590931584L, -5201424086955419990L}).toString(), null, null, 0, null, null, 62, null);
                }
                if (str2 == null) {
                    str2 = new ObfuscatedString(new long[]{-2901321175399119177L}).toString();
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{type, str, str2});
            }
            if (Intrinsics.areEqual(network, NetworkType.KCP.getType())) {
                StreamSettingsBean streamSettingsBean4 = this.streamSettings;
                if (streamSettingsBean4 == null || (kcpSettings = streamSettingsBean4.getKcpSettings()) == null) {
                    return null;
                }
                String type2 = kcpSettings.getHeader().getType();
                String obfuscatedString2 = new ObfuscatedString(new long[]{-8585768244125452415L}).toString();
                String seed = kcpSettings.getSeed();
                if (seed == null) {
                    seed = new ObfuscatedString(new long[]{-5998493392879496065L}).toString();
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{type2, obfuscatedString2, seed});
            }
            if (Intrinsics.areEqual(network, NetworkType.WS.getType())) {
                StreamSettingsBean streamSettingsBean5 = this.streamSettings;
                if (streamSettingsBean5 == null || (wsSettings = streamSettingsBean5.getWsSettings()) == null) {
                    return null;
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{new ObfuscatedString(new long[]{6723133431278432988L}).toString(), wsSettings.getHeaders().getHost(), wsSettings.getPath()});
            }
            if (Intrinsics.areEqual(network, NetworkType.HTTP_UPGRADE.getType())) {
                StreamSettingsBean streamSettingsBean6 = this.streamSettings;
                if (streamSettingsBean6 == null || (httpupgradeSettings = streamSettingsBean6.getHttpupgradeSettings()) == null) {
                    return null;
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{new ObfuscatedString(new long[]{626101421255179111L}).toString(), httpupgradeSettings.getHost(), httpupgradeSettings.getPath()});
            }
            if (Intrinsics.areEqual(network, NetworkType.XHTTP.getType())) {
                StreamSettingsBean streamSettingsBean7 = this.streamSettings;
                if (streamSettingsBean7 == null || (xhttpSettings = streamSettingsBean7.getXhttpSettings()) == null) {
                    return null;
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{new ObfuscatedString(new long[]{-5875826785350955231L}).toString(), xhttpSettings.getHost(), xhttpSettings.getPath()});
            }
            if (Intrinsics.areEqual(network, NetworkType.H2.getType())) {
                StreamSettingsBean streamSettingsBean8 = this.streamSettings;
                if (streamSettingsBean8 == null || (httpSettings = streamSettingsBean8.getHttpSettings()) == null) {
                    return null;
                }
                return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{new ObfuscatedString(new long[]{5096272977542972448L}).toString(), CollectionsKt___CollectionsKt.joinToString$default(httpSettings.getHost(), new ObfuscatedString(new long[]{-6162076388097850386L, -373921897385894050L}).toString(), null, null, 0, null, null, 62, null), httpSettings.getPath()});
            }
            if (!Intrinsics.areEqual(network, NetworkType.GRPC.getType()) || (streamSettingsBean2 = this.streamSettings) == null || (grpcSettings = streamSettingsBean2.getGrpcSettings()) == null) {
                return null;
            }
            if (Intrinsics.areEqual(grpcSettings.getMultiMode(), Boolean.TRUE)) {
                obfuscatedString = new ObfuscatedString(new long[]{-3094102664865173318L, -2293274063676636584L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-1559071638149868501L, -6298984518621123246L});
            }
            String obfuscatedString3 = obfuscatedString.toString();
            String authority = grpcSettings.getAuthority();
            if (authority == null) {
                authority = new ObfuscatedString(new long[]{-4320127900425545578L}).toString();
            }
            return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{obfuscatedString3, authority, grpcSettings.getServiceName()});
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(this.tag.hashCode() * 31, 31, this.protocol);
            OutSettingsBean outSettingsBean = this.settings;
            int i = 0;
            if (outSettingsBean == null) {
                hashCode = 0;
            } else {
                hashCode = outSettingsBean.hashCode();
            }
            int i2 = (m2927x1378447b + hashCode) * 31;
            StreamSettingsBean streamSettingsBean = this.streamSettings;
            if (streamSettingsBean == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = streamSettingsBean.hashCode();
            }
            int i3 = (i2 + hashCode2) * 31;
            Object obj = this.proxySettings;
            if (obj == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = obj.hashCode();
            }
            int i4 = (i3 + hashCode3) * 31;
            String str = this.sendThrough;
            if (str == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str.hashCode();
            }
            int i5 = (i4 + hashCode4) * 31;
            MuxBean muxBean = this.mux;
            if (muxBean != null) {
                i = muxBean.hashCode();
            }
            return i5 + i;
        }

        public final void setMux(@Nullable MuxBean muxBean) {
            this.mux = muxBean;
        }

        public final void setProtocol(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{5019761062404535770L, 8650489775812373578L}).toString());
            this.protocol = str;
        }

        public final void setSettings(@Nullable OutSettingsBean outSettingsBean) {
            this.settings = outSettingsBean;
        }

        public final void setStreamSettings(@Nullable StreamSettingsBean streamSettingsBean) {
            this.streamSettings = streamSettingsBean;
        }

        public final void setTag(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{698187197596769570L, 672834582051859401L}).toString());
            this.tag = str;
        }

        @NotNull
        public String toString() {
            String str = this.tag;
            String str2 = this.protocol;
            OutSettingsBean outSettingsBean = this.settings;
            StreamSettingsBean streamSettingsBean = this.streamSettings;
            Object obj = this.proxySettings;
            String str3 = this.sendThrough;
            MuxBean muxBean = this.mux;
            StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("OutboundBean(tag=", str, ", protocol=", str2, ", settings=");
            m2944x4440ab85.append(outSettingsBean);
            m2944x4440ab85.append(", streamSettings=");
            m2944x4440ab85.append(streamSettingsBean);
            m2944x4440ab85.append(", proxySettings=");
            m2944x4440ab85.append(obj);
            m2944x4440ab85.append(", sendThrough=");
            m2944x4440ab85.append(str3);
            m2944x4440ab85.append(", mux=");
            m2944x4440ab85.append(muxBean);
            m2944x4440ab85.append(")");
            return m2944x4440ab85.toString();
        }

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001c\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003J<\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\t\u0010#\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006$"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;", "", "enabled", "", "concurrency", "", "xudpConcurrency", "xudpProxyUDP443", "", "<init>", "(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getConcurrency", "()Ljava/lang/Integer;", "setConcurrency", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getXudpConcurrency", "setXudpConcurrency", "getXudpProxyUDP443", "()Ljava/lang/String;", "setXudpProxyUDP443", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;", "equals", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class MuxBean {

            @Nullable
            private Integer concurrency;
            private boolean enabled;

            @Nullable
            private Integer xudpConcurrency;

            @Nullable
            private String xudpProxyUDP443;

            public MuxBean(boolean z, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
                this.enabled = z;
                this.concurrency = num;
                this.xudpConcurrency = num2;
                this.xudpProxyUDP443 = str;
            }

            public static /* synthetic */ MuxBean copy$default(MuxBean muxBean, boolean z, Integer num, Integer num2, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = muxBean.enabled;
                }
                if ((i & 2) != 0) {
                    num = muxBean.concurrency;
                }
                if ((i & 4) != 0) {
                    num2 = muxBean.xudpConcurrency;
                }
                if ((i & 8) != 0) {
                    str = muxBean.xudpProxyUDP443;
                }
                return muxBean.copy(z, num, num2, str);
            }

            /* renamed from: component1, reason: from getter */
            public final boolean getEnabled() {
                return this.enabled;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final Integer getConcurrency() {
                return this.concurrency;
            }

            @Nullable
            /* renamed from: component3, reason: from getter */
            public final Integer getXudpConcurrency() {
                return this.xudpConcurrency;
            }

            @Nullable
            /* renamed from: component4, reason: from getter */
            public final String getXudpProxyUDP443() {
                return this.xudpProxyUDP443;
            }

            @NotNull
            public final MuxBean copy(boolean enabled, @Nullable Integer concurrency, @Nullable Integer xudpConcurrency, @Nullable String xudpProxyUDP443) {
                return new MuxBean(enabled, concurrency, xudpConcurrency, xudpProxyUDP443);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof MuxBean)) {
                    return false;
                }
                MuxBean muxBean = (MuxBean) other;
                return this.enabled == muxBean.enabled && Intrinsics.areEqual(this.concurrency, muxBean.concurrency) && Intrinsics.areEqual(this.xudpConcurrency, muxBean.xudpConcurrency) && Intrinsics.areEqual(this.xudpProxyUDP443, muxBean.xudpProxyUDP443);
            }

            @Nullable
            public final Integer getConcurrency() {
                return this.concurrency;
            }

            public final boolean getEnabled() {
                return this.enabled;
            }

            @Nullable
            public final Integer getXudpConcurrency() {
                return this.xudpConcurrency;
            }

            @Nullable
            public final String getXudpProxyUDP443() {
                return this.xudpProxyUDP443;
            }

            public int hashCode() {
                int i;
                int hashCode;
                int hashCode2;
                if (this.enabled) {
                    i = 1231;
                } else {
                    i = 1237;
                }
                int i2 = i * 31;
                Integer num = this.concurrency;
                int i3 = 0;
                if (num == null) {
                    hashCode = 0;
                } else {
                    hashCode = num.hashCode();
                }
                int i4 = (i2 + hashCode) * 31;
                Integer num2 = this.xudpConcurrency;
                if (num2 == null) {
                    hashCode2 = 0;
                } else {
                    hashCode2 = num2.hashCode();
                }
                int i5 = (i4 + hashCode2) * 31;
                String str = this.xudpProxyUDP443;
                if (str != null) {
                    i3 = str.hashCode();
                }
                return i5 + i3;
            }

            public final void setConcurrency(@Nullable Integer num) {
                this.concurrency = num;
            }

            public final void setEnabled(boolean z) {
                this.enabled = z;
            }

            public final void setXudpConcurrency(@Nullable Integer num) {
                this.xudpConcurrency = num;
            }

            public final void setXudpProxyUDP443(@Nullable String str) {
                this.xudpProxyUDP443 = str;
            }

            @NotNull
            public String toString() {
                return "MuxBean(enabled=" + this.enabled + ", concurrency=" + this.concurrency + ", xudpConcurrency=" + this.xudpConcurrency + ", xudpProxyUDP443=" + this.xudpProxyUDP443 + ")";
            }

            public /* synthetic */ MuxBean(boolean z, Integer num, Integer num2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? null : str);
            }
        }

        public /* synthetic */ OutboundBean(String str, String str2, OutSettingsBean outSettingsBean, StreamSettingsBean streamSettingsBean, Object obj, String str3, MuxBean muxBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new ObfuscatedString(new long[]{5472281815883400710L, -6846996078318722274L}).toString() : str, str2, (i & 4) != 0 ? null : outSettingsBean, (i & 8) != 0 ? null : streamSettingsBean, (i & 16) != 0 ? null : obj, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? new MuxBean(false, null, null, null, 14, null) : muxBean);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;", "", "subjectSelector", "", "", "pingConfig", "Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;", "<init>", "(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)V", "getSubjectSelector", "()Ljava/util/List;", "getPingConfig", "()Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "PingConfigObject", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class BurstObservatoryObject {

        @NotNull
        private final PingConfigObject pingConfig;

        @NotNull
        private final List<String> subjectSelector;

        public BurstObservatoryObject(@NotNull List<String> list, @NotNull PingConfigObject pingConfigObject) {
            Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{2871789352523298085L, -5157848251668132810L, -267077771364677147L}).toString());
            Intrinsics.checkNotNullParameter(pingConfigObject, new ObfuscatedString(new long[]{322060014428747711L, -4399864106826004468L, 790566331644684734L}).toString());
            this.subjectSelector = list;
            this.pingConfig = pingConfigObject;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ BurstObservatoryObject copy$default(BurstObservatoryObject burstObservatoryObject, List list, PingConfigObject pingConfigObject, int i, Object obj) {
            if ((i & 1) != 0) {
                list = burstObservatoryObject.subjectSelector;
            }
            if ((i & 2) != 0) {
                pingConfigObject = burstObservatoryObject.pingConfig;
            }
            return burstObservatoryObject.copy(list, pingConfigObject);
        }

        @NotNull
        public final List<String> component1() {
            return this.subjectSelector;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final PingConfigObject getPingConfig() {
            return this.pingConfig;
        }

        @NotNull
        public final BurstObservatoryObject copy(@NotNull List<String> subjectSelector, @NotNull PingConfigObject pingConfig) {
            Intrinsics.checkNotNullParameter(subjectSelector, new ObfuscatedString(new long[]{-3555741279130007535L, -2104699749547581186L, 8595255707296836634L}).toString());
            Intrinsics.checkNotNullParameter(pingConfig, new ObfuscatedString(new long[]{-7888507553572831983L, -6504239559178560388L, -388051366953852623L}).toString());
            return new BurstObservatoryObject(subjectSelector, pingConfig);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof BurstObservatoryObject)) {
                return false;
            }
            BurstObservatoryObject burstObservatoryObject = (BurstObservatoryObject) other;
            return Intrinsics.areEqual(this.subjectSelector, burstObservatoryObject.subjectSelector) && Intrinsics.areEqual(this.pingConfig, burstObservatoryObject.pingConfig);
        }

        @NotNull
        public final PingConfigObject getPingConfig() {
            return this.pingConfig;
        }

        @NotNull
        public final List<String> getSubjectSelector() {
            return this.subjectSelector;
        }

        public int hashCode() {
            return this.pingConfig.hashCode() + (this.subjectSelector.hashCode() * 31);
        }

        @NotNull
        public String toString() {
            return "BurstObservatoryObject(subjectSelector=" + this.subjectSelector + ", pingConfig=" + this.pingConfig + ")";
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;", "", "destination", "", "connectivity", "interval", "sampling", "", "timeout", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getDestination", "()Ljava/lang/String;", "getConnectivity", "getInterval", "getSampling", "()I", "getTimeout", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class PingConfigObject {

            @Nullable
            private final String connectivity;

            @NotNull
            private final String destination;

            @NotNull
            private final String interval;
            private final int sampling;

            @Nullable
            private final String timeout;

            public PingConfigObject(@NotNull String str, @Nullable String str2, @NotNull String str3, int i, @Nullable String str4) {
                Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1406871623099116233L, 26929102762821019L, -3261321528529478863L}).toString());
                Intrinsics.checkNotNullParameter(str3, new ObfuscatedString(new long[]{-6146599144431173382L, 4901471544785264201L}).toString());
                this.destination = str;
                this.connectivity = str2;
                this.interval = str3;
                this.sampling = i;
                this.timeout = str4;
            }

            public static /* synthetic */ PingConfigObject copy$default(PingConfigObject pingConfigObject, String str, String str2, String str3, int i, String str4, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = pingConfigObject.destination;
                }
                if ((i2 & 2) != 0) {
                    str2 = pingConfigObject.connectivity;
                }
                String str5 = str2;
                if ((i2 & 4) != 0) {
                    str3 = pingConfigObject.interval;
                }
                String str6 = str3;
                if ((i2 & 8) != 0) {
                    i = pingConfigObject.sampling;
                }
                int i3 = i;
                if ((i2 & 16) != 0) {
                    str4 = pingConfigObject.timeout;
                }
                return pingConfigObject.copy(str, str5, str6, i3, str4);
            }

            @NotNull
            /* renamed from: component1, reason: from getter */
            public final String getDestination() {
                return this.destination;
            }

            @Nullable
            /* renamed from: component2, reason: from getter */
            public final String getConnectivity() {
                return this.connectivity;
            }

            @NotNull
            /* renamed from: component3, reason: from getter */
            public final String getInterval() {
                return this.interval;
            }

            /* renamed from: component4, reason: from getter */
            public final int getSampling() {
                return this.sampling;
            }

            @Nullable
            /* renamed from: component5, reason: from getter */
            public final String getTimeout() {
                return this.timeout;
            }

            @NotNull
            public final PingConfigObject copy(@NotNull String destination, @Nullable String connectivity, @NotNull String interval, int sampling, @Nullable String timeout) {
                Intrinsics.checkNotNullParameter(destination, new ObfuscatedString(new long[]{5985574413665733146L, 8036912465891939013L, -3959378282040231533L}).toString());
                Intrinsics.checkNotNullParameter(interval, new ObfuscatedString(new long[]{-6999260243022167455L, 7616199159043120730L}).toString());
                return new PingConfigObject(destination, connectivity, interval, sampling, timeout);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof PingConfigObject)) {
                    return false;
                }
                PingConfigObject pingConfigObject = (PingConfigObject) other;
                return Intrinsics.areEqual(this.destination, pingConfigObject.destination) && Intrinsics.areEqual(this.connectivity, pingConfigObject.connectivity) && Intrinsics.areEqual(this.interval, pingConfigObject.interval) && this.sampling == pingConfigObject.sampling && Intrinsics.areEqual(this.timeout, pingConfigObject.timeout);
            }

            @Nullable
            public final String getConnectivity() {
                return this.connectivity;
            }

            @NotNull
            public final String getDestination() {
                return this.destination;
            }

            @NotNull
            public final String getInterval() {
                return this.interval;
            }

            public final int getSampling() {
                return this.sampling;
            }

            @Nullable
            public final String getTimeout() {
                return this.timeout;
            }

            public int hashCode() {
                int hashCode;
                int hashCode2 = this.destination.hashCode() * 31;
                String str = this.connectivity;
                int i = 0;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                int m2927x1378447b = (AbstractC0362x4440ab85.m2927x1378447b((hashCode2 + hashCode) * 31, 31, this.interval) + this.sampling) * 31;
                String str2 = this.timeout;
                if (str2 != null) {
                    i = str2.hashCode();
                }
                return m2927x1378447b + i;
            }

            @NotNull
            public String toString() {
                String str = this.destination;
                String str2 = this.connectivity;
                String str3 = this.interval;
                int i = this.sampling;
                String str4 = this.timeout;
                StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("PingConfigObject(destination=", str, ", connectivity=", str2, ", interval=");
                m2944x4440ab85.append(str3);
                m2944x4440ab85.append(", sampling=");
                m2944x4440ab85.append(i);
                m2944x4440ab85.append(", timeout=");
                return AbstractC0362x4440ab85.m2936xd2bcb0cf(m2944x4440ab85, str4, ")");
            }

            public /* synthetic */ PingConfigObject(String str, String str2, String str3, int i, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, (i2 & 2) != 0 ? null : str2, str3, i, (i2 & 16) != 0 ? null : str4);
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J7\u0010\u0016\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/v2ray/ang/dto/V2rayConfig$ObservatoryObject;", "", "subjectSelector", "", "", "probeUrl", "probeInterval", "enableConcurrency", "", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V", "getSubjectSelector", "()Ljava/util/List;", "getProbeUrl", "()Ljava/lang/String;", "getProbeInterval", "getEnableConcurrency", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class ObservatoryObject {
        private final boolean enableConcurrency;

        @NotNull
        private final String probeInterval;

        @NotNull
        private final String probeUrl;

        @NotNull
        private final List<String> subjectSelector;

        public ObservatoryObject(@NotNull List<String> list, @NotNull String str, @NotNull String str2, boolean z) {
            Intrinsics.checkNotNullParameter(list, new ObfuscatedString(new long[]{-1584717778709445866L, -2938188476544031178L, -3090877117903337826L}).toString());
            Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1195562552785366490L, 8597739650731471962L}).toString());
            Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{3990586248286033147L, 3145818772134112285L, -8483045807188403125L}).toString());
            this.subjectSelector = list;
            this.probeUrl = str;
            this.probeInterval = str2;
            this.enableConcurrency = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ObservatoryObject copy$default(ObservatoryObject observatoryObject, List list, String str, String str2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                list = observatoryObject.subjectSelector;
            }
            if ((i & 2) != 0) {
                str = observatoryObject.probeUrl;
            }
            if ((i & 4) != 0) {
                str2 = observatoryObject.probeInterval;
            }
            if ((i & 8) != 0) {
                z = observatoryObject.enableConcurrency;
            }
            return observatoryObject.copy(list, str, str2, z);
        }

        @NotNull
        public final List<String> component1() {
            return this.subjectSelector;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final String getProbeUrl() {
            return this.probeUrl;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final String getProbeInterval() {
            return this.probeInterval;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getEnableConcurrency() {
            return this.enableConcurrency;
        }

        @NotNull
        public final ObservatoryObject copy(@NotNull List<String> subjectSelector, @NotNull String probeUrl, @NotNull String probeInterval, boolean enableConcurrency) {
            Intrinsics.checkNotNullParameter(subjectSelector, new ObfuscatedString(new long[]{861195685353094692L, 2076203661468103612L, -8873539024031787833L}).toString());
            Intrinsics.checkNotNullParameter(probeUrl, new ObfuscatedString(new long[]{6492091135472025749L, 2836823300401835364L}).toString());
            Intrinsics.checkNotNullParameter(probeInterval, new ObfuscatedString(new long[]{3866164457779053486L, 4590873031374077864L, -3201088470629061495L}).toString());
            return new ObservatoryObject(subjectSelector, probeUrl, probeInterval, enableConcurrency);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ObservatoryObject)) {
                return false;
            }
            ObservatoryObject observatoryObject = (ObservatoryObject) other;
            return Intrinsics.areEqual(this.subjectSelector, observatoryObject.subjectSelector) && Intrinsics.areEqual(this.probeUrl, observatoryObject.probeUrl) && Intrinsics.areEqual(this.probeInterval, observatoryObject.probeInterval) && this.enableConcurrency == observatoryObject.enableConcurrency;
        }

        public final boolean getEnableConcurrency() {
            return this.enableConcurrency;
        }

        @NotNull
        public final String getProbeInterval() {
            return this.probeInterval;
        }

        @NotNull
        public final String getProbeUrl() {
            return this.probeUrl;
        }

        @NotNull
        public final List<String> getSubjectSelector() {
            return this.subjectSelector;
        }

        public int hashCode() {
            int i;
            int m2927x1378447b = AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(this.subjectSelector.hashCode() * 31, 31, this.probeUrl), 31, this.probeInterval);
            if (this.enableConcurrency) {
                i = 1231;
            } else {
                i = 1237;
            }
            return m2927x1378447b + i;
        }

        @NotNull
        public String toString() {
            return "ObservatoryObject(subjectSelector=" + this.subjectSelector + ", probeUrl=" + this.probeUrl + ", probeInterval=" + this.probeInterval + ", enableConcurrency=" + this.enableConcurrency + ")";
        }

        public /* synthetic */ ObservatoryObject(List list, String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, str, str2, (i & 8) != 0 ? false : z);
        }
    }

    public /* synthetic */ V2rayConfig(String str, Object obj, LogBean logBean, PolicyBean policyBean, ArrayList arrayList, ArrayList arrayList2, DnsBean dnsBean, RoutingBean routingBean, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : obj, logBean, (i & 8) != 0 ? null : policyBean, arrayList, arrayList2, (i & 64) != 0 ? null : dnsBean, routingBean, (i & 256) != 0 ? null : obj2, (i & 512) != 0 ? null : obj3, (i & 1024) != 0 ? null : obj4, (i & 2048) != 0 ? null : obj5, (i & 4096) != 0 ? null : obj6, (i & 8192) != 0 ? null : obj7, (i & 16384) != 0 ? null : obj8);
    }
}
