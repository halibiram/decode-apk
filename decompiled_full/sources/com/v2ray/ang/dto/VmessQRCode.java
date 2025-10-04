package com.v2ray.ang.dto;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\bA\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\u009f\u0001\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u0003HÆ\u0001J\u0013\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010G\u001a\u00020HHÖ\u0001J\t\u0010I\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0015\"\u0004\b%\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0015\"\u0004\b'\u0010\u0017R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0015\"\u0004\b+\u0010\u0017R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0015\"\u0004\b-\u0010\u0017R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0015\"\u0004\b1\u0010\u0017R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0015\"\u0004\b3\u0010\u0017¨\u0006J"}, d2 = {"Lcom/v2ray/ang/dto/VmessQRCode;", "", "v", "", "ps", "add", "port", "id", "aid", "scy", "net", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "host", "path", "tls", "sni", "alpn", "fp", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getV", "()Ljava/lang/String;", "setV", "(Ljava/lang/String;)V", "getPs", "setPs", "getAdd", "setAdd", "getPort", "setPort", "getId", "setId", "getAid", "setAid", "getScy", "setScy", "getNet", "setNet", "getType", "setType", "getHost", "setHost", "getPath", "setPath", "getTls", "setTls", "getSni", "setSni", "getAlpn", "setAlpn", "getFp", "setFp", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class VmessQRCode {

    @NotNull
    private String add;

    @NotNull
    private String aid;

    @NotNull
    private String alpn;

    @NotNull
    private String fp;

    @NotNull
    private String host;

    @NotNull
    private String id;

    @NotNull
    private String net;

    @NotNull
    private String path;

    @NotNull
    private String port;

    @NotNull
    private String ps;

    @NotNull
    private String scy;

    @NotNull
    private String sni;

    @NotNull
    private String tls;

    @NotNull
    private String type;

    @NotNull
    private String v;

    public VmessQRCode() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getV() {
        return this.v;
    }

    @NotNull
    /* renamed from: component10, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    @NotNull
    /* renamed from: component11, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    /* renamed from: component12, reason: from getter */
    public final String getTls() {
        return this.tls;
    }

    @NotNull
    /* renamed from: component13, reason: from getter */
    public final String getSni() {
        return this.sni;
    }

    @NotNull
    /* renamed from: component14, reason: from getter */
    public final String getAlpn() {
        return this.alpn;
    }

    @NotNull
    /* renamed from: component15, reason: from getter */
    public final String getFp() {
        return this.fp;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPs() {
        return this.ps;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getAdd() {
        return this.add;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getPort() {
        return this.port;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final String getAid() {
        return this.aid;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final String getScy() {
        return this.scy;
    }

    @NotNull
    /* renamed from: component8, reason: from getter */
    public final String getNet() {
        return this.net;
    }

    @NotNull
    /* renamed from: component9, reason: from getter */
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final VmessQRCode copy(@NotNull String v, @NotNull String ps, @NotNull String add, @NotNull String port, @NotNull String id, @NotNull String aid, @NotNull String scy, @NotNull String net2, @NotNull String type, @NotNull String host, @NotNull String path, @NotNull String tls, @NotNull String sni, @NotNull String alpn, @NotNull String fp) {
        Intrinsics.checkNotNullParameter(v, new ObfuscatedString(new long[]{1010882263276953193L, 7317130117605623646L}).toString());
        Intrinsics.checkNotNullParameter(ps, new ObfuscatedString(new long[]{-4227986242860663747L, 4819028678049300775L}).toString());
        Intrinsics.checkNotNullParameter(add, new ObfuscatedString(new long[]{-1990478910245210606L, -235420214639429770L}).toString());
        Intrinsics.checkNotNullParameter(port, new ObfuscatedString(new long[]{7193452562405252333L, -5838375510293889845L}).toString());
        Intrinsics.checkNotNullParameter(id, new ObfuscatedString(new long[]{-6973890287133780859L, 7255106201253957643L}).toString());
        Intrinsics.checkNotNullParameter(aid, new ObfuscatedString(new long[]{6558879892556172353L, 6533109242744559105L}).toString());
        Intrinsics.checkNotNullParameter(scy, new ObfuscatedString(new long[]{-8433040924331114421L, 5686816087880033233L}).toString());
        Intrinsics.checkNotNullParameter(net2, new ObfuscatedString(new long[]{8441025574842115067L, 4740158027953854743L}).toString());
        Intrinsics.checkNotNullParameter(type, new ObfuscatedString(new long[]{4270656786749328123L, 7378829910021678474L}).toString());
        Intrinsics.checkNotNullParameter(host, new ObfuscatedString(new long[]{-4353480402144747972L, 1325796590360733367L}).toString());
        Intrinsics.checkNotNullParameter(path, new ObfuscatedString(new long[]{-642778628741250058L, -3951594485162151217L}).toString());
        Intrinsics.checkNotNullParameter(tls, new ObfuscatedString(new long[]{-5585279146284340909L, 5986835334966648902L}).toString());
        Intrinsics.checkNotNullParameter(sni, new ObfuscatedString(new long[]{-7478061164516647882L, -8034407167121787673L}).toString());
        Intrinsics.checkNotNullParameter(alpn, new ObfuscatedString(new long[]{-8383685888782807840L, -3311998865646322801L}).toString());
        Intrinsics.checkNotNullParameter(fp, new ObfuscatedString(new long[]{-1679858847566518924L, -6219368680382186962L}).toString());
        return new VmessQRCode(v, ps, add, port, id, aid, scy, net2, type, host, path, tls, sni, alpn, fp);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VmessQRCode)) {
            return false;
        }
        VmessQRCode vmessQRCode = (VmessQRCode) other;
        return Intrinsics.areEqual(this.v, vmessQRCode.v) && Intrinsics.areEqual(this.ps, vmessQRCode.ps) && Intrinsics.areEqual(this.add, vmessQRCode.add) && Intrinsics.areEqual(this.port, vmessQRCode.port) && Intrinsics.areEqual(this.id, vmessQRCode.id) && Intrinsics.areEqual(this.aid, vmessQRCode.aid) && Intrinsics.areEqual(this.scy, vmessQRCode.scy) && Intrinsics.areEqual(this.net, vmessQRCode.net) && Intrinsics.areEqual(this.type, vmessQRCode.type) && Intrinsics.areEqual(this.host, vmessQRCode.host) && Intrinsics.areEqual(this.path, vmessQRCode.path) && Intrinsics.areEqual(this.tls, vmessQRCode.tls) && Intrinsics.areEqual(this.sni, vmessQRCode.sni) && Intrinsics.areEqual(this.alpn, vmessQRCode.alpn) && Intrinsics.areEqual(this.fp, vmessQRCode.fp);
    }

    @NotNull
    public final String getAdd() {
        return this.add;
    }

    @NotNull
    public final String getAid() {
        return this.aid;
    }

    @NotNull
    public final String getAlpn() {
        return this.alpn;
    }

    @NotNull
    public final String getFp() {
        return this.fp;
    }

    @NotNull
    public final String getHost() {
        return this.host;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getNet() {
        return this.net;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final String getPort() {
        return this.port;
    }

    @NotNull
    public final String getPs() {
        return this.ps;
    }

    @NotNull
    public final String getScy() {
        return this.scy;
    }

    @NotNull
    public final String getSni() {
        return this.sni;
    }

    @NotNull
    public final String getTls() {
        return this.tls;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final String getV() {
        return this.v;
    }

    public int hashCode() {
        return this.fp.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(AbstractC0362x4440ab85.m2927x1378447b(this.v.hashCode() * 31, 31, this.ps), 31, this.add), 31, this.port), 31, this.id), 31, this.aid), 31, this.scy), 31, this.net), 31, this.type), 31, this.host), 31, this.path), 31, this.tls), 31, this.sni), 31, this.alpn);
    }

    public final void setAdd(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-1872818743369146445L, 2655086745255107529L}).toString());
        this.add = str;
    }

    public final void setAid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4578002843982359310L, 3957826533034598911L}).toString());
        this.aid = str;
    }

    public final void setAlpn(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4461557380976832486L, -5953046780361727495L}).toString());
        this.alpn = str;
    }

    public final void setFp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3073447705883272439L, -2727340193344014730L}).toString());
        this.fp = str;
    }

    public final void setHost(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3631546673671490738L, 8236486378201406388L}).toString());
        this.host = str;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{6262469933120079676L, -5026872043945374497L}).toString());
        this.id = str;
    }

    public final void setNet(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-5217877614997154312L, -4962036880374731129L}).toString());
        this.net = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-138345340725067910L, 6494201204380860207L}).toString());
        this.path = str;
    }

    public final void setPort(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{5289758453211474451L, 355072760010919912L}).toString());
        this.port = str;
    }

    public final void setPs(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-8757713338398671421L, 6028728359506237041L}).toString());
        this.ps = str;
    }

    public final void setScy(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{8362293246747455800L, 3201210696788366530L}).toString());
        this.scy = str;
    }

    public final void setSni(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6712576626555246336L, -742169992218303275L}).toString());
        this.sni = str;
    }

    public final void setTls(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7722073534863534442L, -8034031219041909742L}).toString());
        this.tls = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-478502190129335869L, 7372030029068531323L}).toString());
        this.type = str;
    }

    public final void setV(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-9052785943213579874L, 2305981298558167738L}).toString());
        this.v = str;
    }

    @NotNull
    public String toString() {
        String str = this.v;
        String str2 = this.ps;
        String str3 = this.add;
        String str4 = this.port;
        String str5 = this.id;
        String str6 = this.aid;
        String str7 = this.scy;
        String str8 = this.net;
        String str9 = this.type;
        String str10 = this.host;
        String str11 = this.path;
        String str12 = this.tls;
        String str13 = this.sni;
        String str14 = this.alpn;
        String str15 = this.fp;
        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("VmessQRCode(v=", str, ", ps=", str2, ", add=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str3, ", port=", str4, ", id=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str5, ", aid=", str6, ", scy=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str7, ", net=", str8, ", type=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str9, ", host=", str10, ", path=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str11, ", tls=", str12, ", sni=");
        AbstractC0749x8313616e.m3350x5ac5058d(m2944x4440ab85, str13, ", alpn=", str14, ", fp=");
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(m2944x4440ab85, str15, ")");
    }

    public VmessQRCode(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, @NotNull String str6, @NotNull String str7, @NotNull String str8, @NotNull String str9, @NotNull String str10, @NotNull String str11, @NotNull String str12, @NotNull String str13, @NotNull String str14, @NotNull String str15) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{7321426666503667914L, -7336654950817492897L}).toString());
        Intrinsics.checkNotNullParameter(str2, new ObfuscatedString(new long[]{-8802038873254245520L, 5402094728530584340L}).toString());
        Intrinsics.checkNotNullParameter(str3, new ObfuscatedString(new long[]{-4650472320009119571L, -3453309613339467039L}).toString());
        Intrinsics.checkNotNullParameter(str4, new ObfuscatedString(new long[]{3106277464653400934L, 1023018915252535584L}).toString());
        Intrinsics.checkNotNullParameter(str5, new ObfuscatedString(new long[]{8390169598294251223L, -2378882217280129948L}).toString());
        Intrinsics.checkNotNullParameter(str6, new ObfuscatedString(new long[]{8093808087279687310L, 8095618594710942873L}).toString());
        Intrinsics.checkNotNullParameter(str7, new ObfuscatedString(new long[]{-5308006686835936390L, -8676408874849623752L}).toString());
        Intrinsics.checkNotNullParameter(str8, new ObfuscatedString(new long[]{8729151304158842682L, 1979883607302740862L}).toString());
        Intrinsics.checkNotNullParameter(str9, new ObfuscatedString(new long[]{-2545499415223886340L, 2888722714366415257L}).toString());
        Intrinsics.checkNotNullParameter(str10, new ObfuscatedString(new long[]{-591532006094078423L, 8247549794900276690L}).toString());
        Intrinsics.checkNotNullParameter(str11, new ObfuscatedString(new long[]{-201384840713212231L, 5987669318772642688L}).toString());
        Intrinsics.checkNotNullParameter(str12, new ObfuscatedString(new long[]{5359387657344587377L, 329484678647054764L}).toString());
        Intrinsics.checkNotNullParameter(str13, new ObfuscatedString(new long[]{-3708381696662412811L, -1763107269123872274L}).toString());
        Intrinsics.checkNotNullParameter(str14, new ObfuscatedString(new long[]{-2362451403382540322L, -1086481714038993505L}).toString());
        Intrinsics.checkNotNullParameter(str15, new ObfuscatedString(new long[]{-736468070053157972L, -1613725059877733572L}).toString());
        this.v = str;
        this.ps = str2;
        this.add = str3;
        this.port = str4;
        this.id = str5;
        this.aid = str6;
        this.scy = str7;
        this.net = str8;
        this.type = str9;
        this.host = str10;
        this.path = str11;
        this.tls = str12;
        this.sni = str13;
        this.alpn = str14;
        this.fp = str15;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ VmessQRCode(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r4, r5, r6, r7, r8, r1, r9, r10, r11, r12, r13, r36, r16, r14, (i & 16384) != 0 ? new ObfuscatedString(new long[]{7911303783393665387L}).toString() : str15);
        String str16;
        String str17;
        String str18;
        String str19;
        String obfuscatedString = (i & 1) != 0 ? new ObfuscatedString(new long[]{-5202089122539373936L}).toString() : str;
        String obfuscatedString2 = (i & 2) != 0 ? new ObfuscatedString(new long[]{-5285309133631662580L}).toString() : str2;
        String obfuscatedString3 = (i & 4) != 0 ? new ObfuscatedString(new long[]{-5797044412448610289L}).toString() : str3;
        String obfuscatedString4 = (i & 8) != 0 ? new ObfuscatedString(new long[]{-4886448362253850721L}).toString() : str4;
        String obfuscatedString5 = (i & 16) != 0 ? new ObfuscatedString(new long[]{-6894971125259030223L}).toString() : str5;
        String obfuscatedString6 = (i & 32) != 0 ? new ObfuscatedString(new long[]{-6957270887081513763L, -2134642382083467817L}).toString() : str6;
        String obfuscatedString7 = (i & 64) != 0 ? new ObfuscatedString(new long[]{1124263596408987737L}).toString() : str7;
        String obfuscatedString8 = (i & 128) != 0 ? new ObfuscatedString(new long[]{847809283022044725L}).toString() : str8;
        String obfuscatedString9 = (i & 256) != 0 ? new ObfuscatedString(new long[]{273844979268651043L}).toString() : str9;
        String obfuscatedString10 = (i & 512) != 0 ? new ObfuscatedString(new long[]{-7743510424695078091L}).toString() : str10;
        String obfuscatedString11 = (i & 1024) != 0 ? new ObfuscatedString(new long[]{-7084356415297411176L}).toString() : str11;
        String obfuscatedString12 = (i & 2048) != 0 ? new ObfuscatedString(new long[]{3721497876328389276L}).toString() : str12;
        if ((i & 4096) != 0) {
            str16 = obfuscatedString12;
            str17 = new ObfuscatedString(new long[]{-1995055234354594283L}).toString();
        } else {
            str16 = obfuscatedString12;
            str17 = str13;
        }
        if ((i & 8192) != 0) {
            str18 = str17;
            str19 = new ObfuscatedString(new long[]{-5852202511894683989L}).toString();
        } else {
            str18 = str17;
            str19 = str14;
        }
    }
}
