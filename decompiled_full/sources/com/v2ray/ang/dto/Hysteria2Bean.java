package com.v2ray.ang.dto;

import androidx.core.app.NotificationCompat;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.AbstractC0362x4440ab85;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u000556789Bo\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010(\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0011HÆ\u0003Jz\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u0010/J\u0013\u00100\u001a\u00020\u00062\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u000203HÖ\u0001J\t\u00104\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006:"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean;", "", "server", "", "auth", "lazy", "", "obfs", "Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;", "socks5", "Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;", "http", "tls", "Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;", NotificationCompat.CATEGORY_TRANSPORT, "Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;", "bandwidth", "Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)V", "getServer", "()Ljava/lang/String;", "getAuth", "getLazy", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getObfs", "()Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;", "getSocks5", "()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;", "getHttp", "getTls", "()Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;", "getTransport", "()Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;", "getBandwidth", "()Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)Lcom/v2ray/ang/dto/Hysteria2Bean;", "equals", "other", "hashCode", "", "toString", "ObfsBean", "Socks5Bean", "TlsBean", "TransportBean", "BandwidthBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Hysteria2Bean {

    @Nullable
    private final String auth;

    @Nullable
    private final BandwidthBean bandwidth;

    @Nullable
    private final Socks5Bean http;

    @Nullable
    private final Boolean lazy;

    @Nullable
    private final ObfsBean obfs;

    @Nullable
    private final String server;

    @Nullable
    private final Socks5Bean socks5;

    @Nullable
    private final TlsBean tls;

    @Nullable
    private final TransportBean transport;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;", "", "down", "", "up", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getDown", "()Ljava/lang/String;", "getUp", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class BandwidthBean {

        @Nullable
        private final String down;

        @Nullable
        private final String up;

        public BandwidthBean(@Nullable String str, @Nullable String str2) {
            this.down = str;
            this.up = str2;
        }

        public static /* synthetic */ BandwidthBean copy$default(BandwidthBean bandwidthBean, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = bandwidthBean.down;
            }
            if ((i & 2) != 0) {
                str2 = bandwidthBean.up;
            }
            return bandwidthBean.copy(str, str2);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getDown() {
            return this.down;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final String getUp() {
            return this.up;
        }

        @NotNull
        public final BandwidthBean copy(@Nullable String down, @Nullable String up) {
            return new BandwidthBean(down, up);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof BandwidthBean)) {
                return false;
            }
            BandwidthBean bandwidthBean = (BandwidthBean) other;
            return Intrinsics.areEqual(this.down, bandwidthBean.down) && Intrinsics.areEqual(this.up, bandwidthBean.up);
        }

        @Nullable
        public final String getDown() {
            return this.down;
        }

        @Nullable
        public final String getUp() {
            return this.up;
        }

        public int hashCode() {
            String str = this.down;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.up;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "BandwidthBean(down=" + this.down + ", up=" + this.up + ")";
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "salamander", "Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;)V", "getType", "()Ljava/lang/String;", "getSalamander", "()Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "SalamanderBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class ObfsBean {

        @Nullable
        private final SalamanderBean salamander;

        @Nullable
        private final String type;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;", "", "password", "", "<init>", "(Ljava/lang/String;)V", "getPassword", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class SalamanderBean {

            @Nullable
            private final String password;

            public SalamanderBean(@Nullable String str) {
                this.password = str;
            }

            public static /* synthetic */ SalamanderBean copy$default(SalamanderBean salamanderBean, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = salamanderBean.password;
                }
                return salamanderBean.copy(str);
            }

            @Nullable
            /* renamed from: component1, reason: from getter */
            public final String getPassword() {
                return this.password;
            }

            @NotNull
            public final SalamanderBean copy(@Nullable String password) {
                return new SalamanderBean(password);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SalamanderBean) && Intrinsics.areEqual(this.password, ((SalamanderBean) other).password);
            }

            @Nullable
            public final String getPassword() {
                return this.password;
            }

            public int hashCode() {
                String str = this.password;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            @NotNull
            public String toString() {
                return AbstractC0362x4440ab85.m2932x95f25580("SalamanderBean(password=", this.password, ")");
            }
        }

        public ObfsBean(@Nullable String str, @Nullable SalamanderBean salamanderBean) {
            this.type = str;
            this.salamander = salamanderBean;
        }

        public static /* synthetic */ ObfsBean copy$default(ObfsBean obfsBean, String str, SalamanderBean salamanderBean, int i, Object obj) {
            if ((i & 1) != 0) {
                str = obfsBean.type;
            }
            if ((i & 2) != 0) {
                salamanderBean = obfsBean.salamander;
            }
            return obfsBean.copy(str, salamanderBean);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final SalamanderBean getSalamander() {
            return this.salamander;
        }

        @NotNull
        public final ObfsBean copy(@Nullable String type, @Nullable SalamanderBean salamander) {
            return new ObfsBean(type, salamander);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ObfsBean)) {
                return false;
            }
            ObfsBean obfsBean = (ObfsBean) other;
            return Intrinsics.areEqual(this.type, obfsBean.type) && Intrinsics.areEqual(this.salamander, obfsBean.salamander);
        }

        @Nullable
        public final SalamanderBean getSalamander() {
            return this.salamander;
        }

        @Nullable
        public final String getType() {
            return this.type;
        }

        public int hashCode() {
            String str = this.type;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            SalamanderBean salamanderBean = this.salamander;
            return hashCode + (salamanderBean != null ? salamanderBean.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "ObfsBean(type=" + this.type + ", salamander=" + this.salamander + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;", "", "listen", "", "<init>", "(Ljava/lang/String;)V", "getListen", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class Socks5Bean {

        @Nullable
        private final String listen;

        public Socks5Bean(@Nullable String str) {
            this.listen = str;
        }

        public static /* synthetic */ Socks5Bean copy$default(Socks5Bean socks5Bean, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = socks5Bean.listen;
            }
            return socks5Bean.copy(str);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getListen() {
            return this.listen;
        }

        @NotNull
        public final Socks5Bean copy(@Nullable String listen) {
            return new Socks5Bean(listen);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Socks5Bean) && Intrinsics.areEqual(this.listen, ((Socks5Bean) other).listen);
        }

        @Nullable
        public final String getListen() {
            return this.listen;
        }

        public int hashCode() {
            String str = this.listen;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return AbstractC0362x4440ab85.m2932x95f25580("Socks5Bean(listen=", this.listen, ")");
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J2\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;", "", "sni", "", "insecure", "", "pinSHA256", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V", "getSni", "()Ljava/lang/String;", "getInsecure", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPinSHA256", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;", "equals", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class TlsBean {

        @Nullable
        private final Boolean insecure;

        @Nullable
        private final String pinSHA256;

        @Nullable
        private final String sni;

        public TlsBean(@Nullable String str, @Nullable Boolean bool, @Nullable String str2) {
            this.sni = str;
            this.insecure = bool;
            this.pinSHA256 = str2;
        }

        public static /* synthetic */ TlsBean copy$default(TlsBean tlsBean, String str, Boolean bool, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tlsBean.sni;
            }
            if ((i & 2) != 0) {
                bool = tlsBean.insecure;
            }
            if ((i & 4) != 0) {
                str2 = tlsBean.pinSHA256;
            }
            return tlsBean.copy(str, bool, str2);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getSni() {
            return this.sni;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final Boolean getInsecure() {
            return this.insecure;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final String getPinSHA256() {
            return this.pinSHA256;
        }

        @NotNull
        public final TlsBean copy(@Nullable String sni, @Nullable Boolean insecure, @Nullable String pinSHA256) {
            return new TlsBean(sni, insecure, pinSHA256);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TlsBean)) {
                return false;
            }
            TlsBean tlsBean = (TlsBean) other;
            return Intrinsics.areEqual(this.sni, tlsBean.sni) && Intrinsics.areEqual(this.insecure, tlsBean.insecure) && Intrinsics.areEqual(this.pinSHA256, tlsBean.pinSHA256);
        }

        @Nullable
        public final Boolean getInsecure() {
            return this.insecure;
        }

        @Nullable
        public final String getPinSHA256() {
            return this.pinSHA256;
        }

        @Nullable
        public final String getSni() {
            return this.sni;
        }

        public int hashCode() {
            String str = this.sni;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            Boolean bool = this.insecure;
            int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
            String str2 = this.pinSHA256;
            return hashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            String str = this.sni;
            Boolean bool = this.insecure;
            String str2 = this.pinSHA256;
            StringBuilder sb = new StringBuilder("TlsBean(sni=");
            sb.append(str);
            sb.append(", insecure=");
            sb.append(bool);
            sb.append(", pinSHA256=");
            return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, str2, ")");
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;", "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "", "udp", "Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;", "<init>", "(Ljava/lang/String;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;)V", "getType", "()Ljava/lang/String;", "getUdp", "()Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "TransportUdpBean", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class TransportBean {

        @Nullable
        private final String type;

        @Nullable
        private final TransportUdpBean udp;

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;", "", "hopInterval", "", "<init>", "(Ljava/lang/String;)V", "getHopInterval", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        /* loaded from: classes3.dex */
        public static final /* data */ class TransportUdpBean {

            @Nullable
            private final String hopInterval;

            public TransportUdpBean(@Nullable String str) {
                this.hopInterval = str;
            }

            public static /* synthetic */ TransportUdpBean copy$default(TransportUdpBean transportUdpBean, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = transportUdpBean.hopInterval;
                }
                return transportUdpBean.copy(str);
            }

            @Nullable
            /* renamed from: component1, reason: from getter */
            public final String getHopInterval() {
                return this.hopInterval;
            }

            @NotNull
            public final TransportUdpBean copy(@Nullable String hopInterval) {
                return new TransportUdpBean(hopInterval);
            }

            public boolean equals(@Nullable Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof TransportUdpBean) && Intrinsics.areEqual(this.hopInterval, ((TransportUdpBean) other).hopInterval);
            }

            @Nullable
            public final String getHopInterval() {
                return this.hopInterval;
            }

            public int hashCode() {
                String str = this.hopInterval;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            @NotNull
            public String toString() {
                return AbstractC0362x4440ab85.m2932x95f25580("TransportUdpBean(hopInterval=", this.hopInterval, ")");
            }
        }

        public TransportBean(@Nullable String str, @Nullable TransportUdpBean transportUdpBean) {
            this.type = str;
            this.udp = transportUdpBean;
        }

        public static /* synthetic */ TransportBean copy$default(TransportBean transportBean, String str, TransportUdpBean transportUdpBean, int i, Object obj) {
            if ((i & 1) != 0) {
                str = transportBean.type;
            }
            if ((i & 2) != 0) {
                transportUdpBean = transportBean.udp;
            }
            return transportBean.copy(str, transportUdpBean);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final TransportUdpBean getUdp() {
            return this.udp;
        }

        @NotNull
        public final TransportBean copy(@Nullable String type, @Nullable TransportUdpBean udp) {
            return new TransportBean(type, udp);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TransportBean)) {
                return false;
            }
            TransportBean transportBean = (TransportBean) other;
            return Intrinsics.areEqual(this.type, transportBean.type) && Intrinsics.areEqual(this.udp, transportBean.udp);
        }

        @Nullable
        public final String getType() {
            return this.type;
        }

        @Nullable
        public final TransportUdpBean getUdp() {
            return this.udp;
        }

        public int hashCode() {
            String str = this.type;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            TransportUdpBean transportUdpBean = this.udp;
            return hashCode + (transportUdpBean != null ? transportUdpBean.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "TransportBean(type=" + this.type + ", udp=" + this.udp + ")";
        }
    }

    public Hysteria2Bean(@Nullable String str, @Nullable String str2, @Nullable Boolean bool, @Nullable ObfsBean obfsBean, @Nullable Socks5Bean socks5Bean, @Nullable Socks5Bean socks5Bean2, @Nullable TlsBean tlsBean, @Nullable TransportBean transportBean, @Nullable BandwidthBean bandwidthBean) {
        this.server = str;
        this.auth = str2;
        this.lazy = bool;
        this.obfs = obfsBean;
        this.socks5 = socks5Bean;
        this.http = socks5Bean2;
        this.tls = tlsBean;
        this.transport = transportBean;
        this.bandwidth = bandwidthBean;
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getServer() {
        return this.server;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getAuth() {
        return this.auth;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final Boolean getLazy() {
        return this.lazy;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final ObfsBean getObfs() {
        return this.obfs;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final Socks5Bean getSocks5() {
        return this.socks5;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final Socks5Bean getHttp() {
        return this.http;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final TlsBean getTls() {
        return this.tls;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final TransportBean getTransport() {
        return this.transport;
    }

    @Nullable
    /* renamed from: component9, reason: from getter */
    public final BandwidthBean getBandwidth() {
        return this.bandwidth;
    }

    @NotNull
    public final Hysteria2Bean copy(@Nullable String server, @Nullable String auth, @Nullable Boolean lazy, @Nullable ObfsBean obfs, @Nullable Socks5Bean socks5, @Nullable Socks5Bean http, @Nullable TlsBean tls, @Nullable TransportBean transport, @Nullable BandwidthBean bandwidth) {
        return new Hysteria2Bean(server, auth, lazy, obfs, socks5, http, tls, transport, bandwidth);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Hysteria2Bean)) {
            return false;
        }
        Hysteria2Bean hysteria2Bean = (Hysteria2Bean) other;
        return Intrinsics.areEqual(this.server, hysteria2Bean.server) && Intrinsics.areEqual(this.auth, hysteria2Bean.auth) && Intrinsics.areEqual(this.lazy, hysteria2Bean.lazy) && Intrinsics.areEqual(this.obfs, hysteria2Bean.obfs) && Intrinsics.areEqual(this.socks5, hysteria2Bean.socks5) && Intrinsics.areEqual(this.http, hysteria2Bean.http) && Intrinsics.areEqual(this.tls, hysteria2Bean.tls) && Intrinsics.areEqual(this.transport, hysteria2Bean.transport) && Intrinsics.areEqual(this.bandwidth, hysteria2Bean.bandwidth);
    }

    @Nullable
    public final String getAuth() {
        return this.auth;
    }

    @Nullable
    public final BandwidthBean getBandwidth() {
        return this.bandwidth;
    }

    @Nullable
    public final Socks5Bean getHttp() {
        return this.http;
    }

    @Nullable
    public final Boolean getLazy() {
        return this.lazy;
    }

    @Nullable
    public final ObfsBean getObfs() {
        return this.obfs;
    }

    @Nullable
    public final String getServer() {
        return this.server;
    }

    @Nullable
    public final Socks5Bean getSocks5() {
        return this.socks5;
    }

    @Nullable
    public final TlsBean getTls() {
        return this.tls;
    }

    @Nullable
    public final TransportBean getTransport() {
        return this.transport;
    }

    public int hashCode() {
        String str = this.server;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.auth;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.lazy;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        ObfsBean obfsBean = this.obfs;
        int hashCode4 = (hashCode3 + (obfsBean == null ? 0 : obfsBean.hashCode())) * 31;
        Socks5Bean socks5Bean = this.socks5;
        int hashCode5 = (hashCode4 + (socks5Bean == null ? 0 : socks5Bean.hashCode())) * 31;
        Socks5Bean socks5Bean2 = this.http;
        int hashCode6 = (hashCode5 + (socks5Bean2 == null ? 0 : socks5Bean2.hashCode())) * 31;
        TlsBean tlsBean = this.tls;
        int hashCode7 = (hashCode6 + (tlsBean == null ? 0 : tlsBean.hashCode())) * 31;
        TransportBean transportBean = this.transport;
        int hashCode8 = (hashCode7 + (transportBean == null ? 0 : transportBean.hashCode())) * 31;
        BandwidthBean bandwidthBean = this.bandwidth;
        return hashCode8 + (bandwidthBean != null ? bandwidthBean.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.server;
        String str2 = this.auth;
        Boolean bool = this.lazy;
        ObfsBean obfsBean = this.obfs;
        Socks5Bean socks5Bean = this.socks5;
        Socks5Bean socks5Bean2 = this.http;
        TlsBean tlsBean = this.tls;
        TransportBean transportBean = this.transport;
        BandwidthBean bandwidthBean = this.bandwidth;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("Hysteria2Bean(server=", str, ", auth=", str2, ", lazy=");
        m2944x4440ab85.append(bool);
        m2944x4440ab85.append(", obfs=");
        m2944x4440ab85.append(obfsBean);
        m2944x4440ab85.append(", socks5=");
        m2944x4440ab85.append(socks5Bean);
        m2944x4440ab85.append(", http=");
        m2944x4440ab85.append(socks5Bean2);
        m2944x4440ab85.append(", tls=");
        m2944x4440ab85.append(tlsBean);
        m2944x4440ab85.append(", transport=");
        m2944x4440ab85.append(transportBean);
        m2944x4440ab85.append(", bandwidth=");
        m2944x4440ab85.append(bandwidthBean);
        m2944x4440ab85.append(")");
        return m2944x4440ab85.toString();
    }

    public /* synthetic */ Hysteria2Bean(String str, String str2, Boolean bool, ObfsBean obfsBean, Socks5Bean socks5Bean, Socks5Bean socks5Bean2, TlsBean tlsBean, TransportBean transportBean, BandwidthBean bandwidthBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? Boolean.TRUE : bool, (i & 8) != 0 ? null : obfsBean, (i & 16) != 0 ? null : socks5Bean, (i & 32) != 0 ? null : socks5Bean2, (i & 64) != 0 ? null : tlsBean, (i & 128) != 0 ? null : transportBean, (i & 256) != 0 ? null : bandwidthBean);
    }
}
