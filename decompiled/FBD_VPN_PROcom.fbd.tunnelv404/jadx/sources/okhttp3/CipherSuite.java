package okhttp3;

import defpackage.AbstractC1197x89633db9;
import java.util.Comparator;
import java.util.LinkedHashMap;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004R\u0017\u0010\u0005\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0004¨\u0006\n"}, d2 = {"Lokhttp3/CipherSuite;", "", "", "-deprecated_javaName", "()Ljava/lang/String;", "javaName", "toString", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/String;", "Companion", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CipherSuite {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_AES_128_CCM_8_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_AES_128_CCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_CHACHA20_POLY1305_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_DSS_WITH_DES_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DHE_RSA_WITH_DES_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_RC4_40_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_DES_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_DH_anon_WITH_RC4_128_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDHE_RSA_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_RSA_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_anon_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_ECDH_anon_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_EMPTY_RENEGOTIATION_INFO_SCSV;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_FALLBACK_SCSV;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_PSK_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_PSK_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_PSK_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_PSK_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_EXPORT_WITH_DES40_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_EXPORT_WITH_RC4_40_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_3DES_EDE_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_AES_256_GCM_SHA384;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_128_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_256_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_DES_CBC_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_NULL_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA256;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_RC4_128_MD5;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_RC4_128_SHA;

    @JvmField
    @NotNull
    public static final CipherSuite TLS_RSA_WITH_SEED_CBC_SHA;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final CipherSuite$Companion$ORDER_BY_NAME$1 f2748x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final LinkedHashMap f2749x1378447b;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final String javaName;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b{\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R*\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0007j\b\u0012\u0004\u0012\u00020\u0002`\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0011R\u0014\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0011R\u0014\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0011R\u0014\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0011R\u0014\u0010\u001d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0011R\u0014\u0010\u001f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0011R\u0014\u0010 \u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\u0011R\u0014\u0010!\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0011R\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u0011R\u0014\u0010#\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0011R\u0014\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010\u0011R\u0014\u0010%\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0011R\u0014\u0010&\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010\u0011R\u0014\u0010'\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0011R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b(\u0010\u0011R\u0014\u0010)\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\u0011R\u0014\u0010*\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u0010\u0011R\u0014\u0010+\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010\u0011R\u0014\u0010,\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010\u0011R\u0014\u0010-\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b-\u0010\u0011R\u0014\u0010.\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010\u0011R\u0014\u0010/\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b/\u0010\u0011R\u0014\u00100\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010\u0011R\u0014\u00101\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b1\u0010\u0011R\u0014\u00102\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b2\u0010\u0011R\u0014\u00103\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b3\u0010\u0011R\u0014\u00104\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b4\u0010\u0011R\u0014\u00105\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u0010\u0011R\u0014\u00106\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u0010\u0011R\u0014\u00107\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b7\u0010\u0011R\u0014\u00108\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u0010\u0011R\u0014\u00109\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b9\u0010\u0011R\u0014\u0010:\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010\u0011R\u0014\u0010;\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010\u0011R\u0014\u0010<\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b<\u0010\u0011R\u0014\u0010=\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b=\u0010\u0011R\u0014\u0010>\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b>\u0010\u0011R\u0014\u0010?\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010\u0011R\u0014\u0010@\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b@\u0010\u0011R\u0014\u0010A\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010\u0011R\u0014\u0010B\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bB\u0010\u0011R\u0014\u0010C\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bC\u0010\u0011R\u0014\u0010D\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bD\u0010\u0011R\u0014\u0010E\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bE\u0010\u0011R\u0014\u0010F\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bF\u0010\u0011R\u0014\u0010G\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bG\u0010\u0011R\u0014\u0010H\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bH\u0010\u0011R\u0014\u0010I\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bI\u0010\u0011R\u0014\u0010J\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bJ\u0010\u0011R\u0014\u0010K\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bK\u0010\u0011R\u0014\u0010L\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bL\u0010\u0011R\u0014\u0010M\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bM\u0010\u0011R\u0014\u0010N\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bN\u0010\u0011R\u0014\u0010O\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bO\u0010\u0011R\u0014\u0010P\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bP\u0010\u0011R\u0014\u0010Q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010\u0011R\u0014\u0010R\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bR\u0010\u0011R\u0014\u0010S\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bS\u0010\u0011R\u0014\u0010T\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bT\u0010\u0011R\u0014\u0010U\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bU\u0010\u0011R\u0014\u0010V\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bV\u0010\u0011R\u0014\u0010W\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bW\u0010\u0011R\u0014\u0010X\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bX\u0010\u0011R\u0014\u0010Y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bY\u0010\u0011R\u0014\u0010Z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bZ\u0010\u0011R\u0014\u0010[\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b[\u0010\u0011R\u0014\u0010\\\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\\\u0010\u0011R\u0014\u0010]\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b]\u0010\u0011R\u0014\u0010^\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b^\u0010\u0011R\u0014\u0010_\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b_\u0010\u0011R\u0014\u0010`\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b`\u0010\u0011R\u0014\u0010a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\ba\u0010\u0011R\u0014\u0010b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bb\u0010\u0011R\u0014\u0010c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bc\u0010\u0011R\u0014\u0010d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bd\u0010\u0011R\u0014\u0010e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\be\u0010\u0011R\u0014\u0010f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bf\u0010\u0011R\u0014\u0010g\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bg\u0010\u0011R\u0014\u0010h\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bh\u0010\u0011R\u0014\u0010i\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bi\u0010\u0011R\u0014\u0010j\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bj\u0010\u0011R\u0014\u0010k\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bk\u0010\u0011R\u0014\u0010l\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bl\u0010\u0011R\u0014\u0010m\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bm\u0010\u0011R\u0014\u0010n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bn\u0010\u0011R\u0014\u0010o\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bo\u0010\u0011R\u0014\u0010p\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bp\u0010\u0011R\u0014\u0010q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bq\u0010\u0011R\u0014\u0010r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\br\u0010\u0011R\u0014\u0010s\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bs\u0010\u0011R\u0014\u0010t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bt\u0010\u0011R\u0014\u0010u\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bu\u0010\u0011R\u0014\u0010v\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bv\u0010\u0011R\u0014\u0010w\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bw\u0010\u0011R\u0014\u0010x\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bx\u0010\u0011R\u0014\u0010y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\by\u0010\u0011R\u0014\u0010z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bz\u0010\u0011R\u0014\u0010{\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b{\u0010\u0011R\u0014\u0010|\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b|\u0010\u0011R\u0014\u0010}\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b}\u0010\u0011R\u0014\u0010~\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b~\u0010\u0011R\u0014\u0010\u007f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u007f\u0010\u0011R\u0016\u0010\u0080\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010\u0011R\u0016\u0010\u0081\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u0011R\u0016\u0010\u0082\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010\u0011R\u0016\u0010\u0083\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010\u0011R\u0016\u0010\u0084\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010\u0011R\u0016\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010\u0011R\u0016\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010\u0011R\u0016\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\u0011¨\u0006\u0088\u0001"}, d2 = {"Lokhttp3/CipherSuite$Companion;", "", "", "javaName", "Lokhttp3/CipherSuite;", "forJavaName", "(Ljava/lang/String;)Lokhttp3/CipherSuite;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "ORDER_BY_NAME", "Ljava/util/Comparator;", "getORDER_BY_NAME$okhttp", "()Ljava/util/Comparator;", "", "INSTANCES", "Ljava/util/Map;", "TLS_AES_128_CCM_8_SHA256", "Lokhttp3/CipherSuite;", "TLS_AES_128_CCM_SHA256", "TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_DSS_WITH_DES_CBC_SHA", "TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_DHE_RSA_WITH_DES_CBC_SHA", "TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA", "TLS_DH_anon_EXPORT_WITH_RC4_40_MD5", "TLS_DH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_DH_anon_WITH_AES_128_CBC_SHA", "TLS_DH_anon_WITH_AES_128_CBC_SHA256", "TLS_DH_anon_WITH_AES_128_GCM_SHA256", "TLS_DH_anon_WITH_AES_256_CBC_SHA", "TLS_DH_anon_WITH_AES_256_CBC_SHA256", "TLS_DH_anon_WITH_AES_256_GCM_SHA384", "TLS_DH_anon_WITH_DES_CBC_SHA", "TLS_DH_anon_WITH_RC4_128_MD5", "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_ECDSA_WITH_NULL_SHA", "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_NULL_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_ECDSA_WITH_NULL_SHA", "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_RSA_WITH_NULL_SHA", "TLS_ECDH_RSA_WITH_RC4_128_SHA", "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", "TLS_ECDH_anon_WITH_NULL_SHA", "TLS_ECDH_anon_WITH_RC4_128_SHA", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", "TLS_FALLBACK_SCSV", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", "TLS_KRB5_WITH_DES_CBC_MD5", "TLS_KRB5_WITH_DES_CBC_SHA", "TLS_KRB5_WITH_RC4_128_MD5", "TLS_KRB5_WITH_RC4_128_SHA", "TLS_PSK_WITH_3DES_EDE_CBC_SHA", "TLS_PSK_WITH_AES_128_CBC_SHA", "TLS_PSK_WITH_AES_256_CBC_SHA", "TLS_PSK_WITH_RC4_128_SHA", "TLS_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_RSA_EXPORT_WITH_RC4_40_MD5", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_RSA_WITH_DES_CBC_SHA", "TLS_RSA_WITH_NULL_MD5", "TLS_RSA_WITH_NULL_SHA", "TLS_RSA_WITH_NULL_SHA256", "TLS_RSA_WITH_RC4_128_MD5", "TLS_RSA_WITH_RC4_128_SHA", "TLS_RSA_WITH_SEED_CBC_SHA", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final CipherSuite access$init(Companion companion, String str, int i) {
            companion.getClass();
            CipherSuite cipherSuite = new CipherSuite(str, null);
            CipherSuite.f2749x1378447b.put(str, cipherSuite);
            return cipherSuite;
        }

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static String m2453xfbe0c504(String str) {
            if (AbstractC1197x89633db9.startsWith$default(str, "TLS_", false, 2, null)) {
                StringBuilder sb = new StringBuilder("SSL_");
                String substring = str.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                sb.append(substring);
                return sb.toString();
            }
            if (AbstractC1197x89633db9.startsWith$default(str, "SSL_", false, 2, null)) {
                StringBuilder sb2 = new StringBuilder("TLS_");
                String substring2 = str.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                sb2.append(substring2);
                return sb2.toString();
            }
            return str;
        }

        @JvmStatic
        @NotNull
        public final synchronized CipherSuite forJavaName(@NotNull String javaName) {
            CipherSuite cipherSuite;
            try {
                Intrinsics.checkNotNullParameter(javaName, "javaName");
                cipherSuite = (CipherSuite) CipherSuite.f2749x1378447b.get(javaName);
                if (cipherSuite == null) {
                    cipherSuite = (CipherSuite) CipherSuite.f2749x1378447b.get(m2453xfbe0c504(javaName));
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(javaName, null);
                    }
                    CipherSuite.f2749x1378447b.put(javaName, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
            return cipherSuite;
        }

        @NotNull
        public final Comparator<String> getORDER_BY_NAME$okhttp() {
            return CipherSuite.f2748x3271d0aa;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1] */
    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        f2748x3271d0aa = new Object();
        f2749x1378447b = new LinkedHashMap();
        TLS_RSA_WITH_NULL_MD5 = Companion.access$init(companion, "SSL_RSA_WITH_NULL_MD5", 1);
        TLS_RSA_WITH_NULL_SHA = Companion.access$init(companion, "SSL_RSA_WITH_NULL_SHA", 2);
        TLS_RSA_EXPORT_WITH_RC4_40_MD5 = Companion.access$init(companion, "SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        TLS_RSA_WITH_RC4_128_MD5 = Companion.access$init(companion, "SSL_RSA_WITH_RC4_128_MD5", 4);
        TLS_RSA_WITH_RC4_128_SHA = Companion.access$init(companion, "SSL_RSA_WITH_RC4_128_SHA", 5);
        TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = Companion.access$init(companion, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        TLS_RSA_WITH_DES_CBC_SHA = Companion.access$init(companion, "SSL_RSA_WITH_DES_CBC_SHA", 9);
        TLS_RSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = Companion.access$init(companion, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        TLS_DHE_DSS_WITH_DES_CBC_SHA = Companion.access$init(companion, "SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = Companion.access$init(companion, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        TLS_DHE_RSA_WITH_DES_CBC_SHA = Companion.access$init(companion, "SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = Companion.access$init(companion, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        TLS_DH_anon_WITH_RC4_128_MD5 = Companion.access$init(companion, "SSL_DH_anon_WITH_RC4_128_MD5", 24);
        TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = Companion.access$init(companion, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        TLS_DH_anon_WITH_DES_CBC_SHA = Companion.access$init(companion, "SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        TLS_KRB5_WITH_DES_CBC_SHA = Companion.access$init(companion, "TLS_KRB5_WITH_DES_CBC_SHA", 30);
        TLS_KRB5_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        TLS_KRB5_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_KRB5_WITH_RC4_128_SHA", 32);
        TLS_KRB5_WITH_DES_CBC_MD5 = Companion.access$init(companion, "TLS_KRB5_WITH_DES_CBC_MD5", 34);
        TLS_KRB5_WITH_3DES_EDE_CBC_MD5 = Companion.access$init(companion, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        TLS_KRB5_WITH_RC4_128_MD5 = Companion.access$init(companion, "TLS_KRB5_WITH_RC4_128_MD5", 36);
        TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA = Companion.access$init(companion, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        TLS_KRB5_EXPORT_WITH_RC4_40_SHA = Companion.access$init(companion, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5 = Companion.access$init(companion, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        TLS_KRB5_EXPORT_WITH_RC4_40_MD5 = Companion.access$init(companion, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        TLS_RSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        TLS_DHE_DSS_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        TLS_DHE_RSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        TLS_DH_anon_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        TLS_RSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        TLS_DHE_DSS_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        TLS_DHE_RSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        TLS_DH_anon_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        TLS_RSA_WITH_NULL_SHA256 = Companion.access$init(companion, "TLS_RSA_WITH_NULL_SHA256", 59);
        TLS_RSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        TLS_RSA_WITH_AES_256_CBC_SHA256 = Companion.access$init(companion, "TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        TLS_RSA_WITH_CAMELLIA_128_CBC_SHA = Companion.access$init(companion, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA = Companion.access$init(companion, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA = Companion.access$init(companion, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        TLS_DH_anon_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        TLS_DH_anon_WITH_AES_256_CBC_SHA256 = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        TLS_RSA_WITH_CAMELLIA_256_CBC_SHA = Companion.access$init(companion, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA = Companion.access$init(companion, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA = Companion.access$init(companion, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        TLS_PSK_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_PSK_WITH_RC4_128_SHA", 138);
        TLS_PSK_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        TLS_PSK_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        TLS_PSK_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        TLS_RSA_WITH_SEED_CBC_SHA = Companion.access$init(companion, "TLS_RSA_WITH_SEED_CBC_SHA", 150);
        TLS_RSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
        TLS_RSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
        TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        TLS_DH_anon_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        TLS_DH_anon_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        TLS_EMPTY_RENEGOTIATION_INFO_SCSV = Companion.access$init(companion, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        TLS_FALLBACK_SCSV = Companion.access$init(companion, "TLS_FALLBACK_SCSV", 22016);
        TLS_ECDH_ECDSA_WITH_NULL_SHA = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        TLS_ECDH_ECDSA_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        TLS_ECDHE_ECDSA_WITH_NULL_SHA = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        TLS_ECDH_RSA_WITH_NULL_SHA = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        TLS_ECDH_RSA_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        TLS_ECDHE_RSA_WITH_NULL_SHA = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        TLS_ECDHE_RSA_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        TLS_ECDH_anon_WITH_NULL_SHA = Companion.access$init(companion, "TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        TLS_ECDH_anon_WITH_RC4_128_SHA = Companion.access$init(companion, "TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        TLS_ECDH_anon_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        TLS_ECDH_anon_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA = Companion.access$init(companion, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = Companion.access$init(companion, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = Companion.access$init(companion, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
        TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = Companion.access$init(companion, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256 = Companion.access$init(companion, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
        TLS_AES_128_GCM_SHA256 = Companion.access$init(companion, "TLS_AES_128_GCM_SHA256", 4865);
        TLS_AES_256_GCM_SHA384 = Companion.access$init(companion, "TLS_AES_256_GCM_SHA384", 4866);
        TLS_CHACHA20_POLY1305_SHA256 = Companion.access$init(companion, "TLS_CHACHA20_POLY1305_SHA256", 4867);
        TLS_AES_128_CCM_SHA256 = Companion.access$init(companion, "TLS_AES_128_CCM_SHA256", 4868);
        TLS_AES_128_CCM_8_SHA256 = Companion.access$init(companion, "TLS_AES_128_CCM_8_SHA256", 4869);
    }

    public CipherSuite(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.javaName = str;
    }

    @JvmStatic
    @NotNull
    public static final synchronized CipherSuite forJavaName(@NotNull String str) {
        CipherSuite forJavaName;
        synchronized (CipherSuite.class) {
            forJavaName = INSTANCE.forJavaName(str);
        }
        return forJavaName;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "javaName", imports = {}))
    @JvmName(name = "-deprecated_javaName")
    @NotNull
    /* renamed from: -deprecated_javaName, reason: not valid java name and from getter */
    public final String getJavaName() {
        return this.javaName;
    }

    @JvmName(name = "javaName")
    @NotNull
    public final String javaName() {
        return this.javaName;
    }

    @NotNull
    public String toString() {
        return this.javaName;
    }
}
