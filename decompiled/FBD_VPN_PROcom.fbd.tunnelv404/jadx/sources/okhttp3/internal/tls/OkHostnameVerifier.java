package okhttp3.internal.tls;

import defpackage.AbstractC1197x89633db9;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._HostnamesCommonKt;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000bJ\u001b\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "", "host", "Ljavax/net/ssl/SSLSession;", "session", "", "verify", "(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z", "Ljava/security/cert/X509Certificate;", "certificate", "(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z", "", "allSubjectAltNames", "(Ljava/security/cert/X509Certificate;)Ljava/util/List;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOkHostnameVerifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1747#2,3:209\n1747#2,3:212\n*S KotlinDebug\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n*L\n63#1:209,3\n71#1:212,3\n*E\n"})
/* loaded from: classes3.dex */
public final class OkHostnameVerifier implements HostnameVerifier {

    @NotNull
    public static final OkHostnameVerifier INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static List m2626xfbe0c504(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && Intrinsics.areEqual(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    @NotNull
    public final List<String> allSubjectAltNames(@NotNull X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        return CollectionsKt___CollectionsKt.plus((Collection) m2626xfbe0c504(certificate, 7), (Iterable) m2626xfbe0c504(certificate, 2));
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x004a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[LOOP:1: B:28:0x0084->B:60:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean verify(@NotNull String host, @NotNull X509Certificate certificate) {
        boolean z;
        int length;
        String host2 = host;
        Intrinsics.checkNotNullParameter(host2, "host");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        if (_HostnamesCommonKt.canParseAsIpAddress(host)) {
            String canonicalHost = _HostnamesCommonKt.toCanonicalHost(host);
            List m2626xfbe0c504 = m2626xfbe0c504(certificate, 7);
            if ((m2626xfbe0c504 instanceof Collection) && m2626xfbe0c504.isEmpty()) {
                return false;
            }
            Iterator it = m2626xfbe0c504.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(canonicalHost, _HostnamesCommonKt.toCanonicalHost((String) it.next()))) {
                }
            }
            return false;
        }
        if (host.length() == ((int) Utf8.size$default(host2, 0, 0, 3, null))) {
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            host2 = host2.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(host2, "toLowerCase(...)");
        }
        List<String> m2626xfbe0c5042 = m2626xfbe0c504(certificate, 2);
        if ((m2626xfbe0c5042 instanceof Collection) && m2626xfbe0c5042.isEmpty()) {
            return false;
        }
        for (String str : m2626xfbe0c5042) {
            INSTANCE.getClass();
            if (host2 != null && host2.length() != 0 && !AbstractC1197x89633db9.startsWith$default(host2, ".", false, 2, null) && !AbstractC1197x89633db9.endsWith$default(host2, "..", false, 2, null) && str != null && str.length() != 0 && !AbstractC1197x89633db9.startsWith$default(str, ".", false, 2, null) && !AbstractC1197x89633db9.endsWith$default(str, "..", false, 2, null)) {
                String concat = !AbstractC1197x89633db9.endsWith$default(host2, ".", false, 2, null) ? host2.concat(".") : host2;
                if (!AbstractC1197x89633db9.endsWith$default(str, ".", false, 2, null)) {
                    str = str.concat(".");
                }
                if (str.length() == ((int) Utf8.size$default(str, 0, 0, 3, null))) {
                    Locale US2 = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US2, "US");
                    str = str.toLowerCase(US2);
                    Intrinsics.checkNotNullExpressionValue(str, "toLowerCase(...)");
                }
                if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "*", false, 2, (Object) null)) {
                    z = Intrinsics.areEqual(concat, str);
                } else if (AbstractC1197x89633db9.startsWith$default(str, "*.", false, 2, null) && StringsKt__StringsKt.indexOf$default((CharSequence) str, '*', 1, false, 4, (Object) null) == -1 && concat.length() >= str.length() && !Intrinsics.areEqual("*.", str)) {
                    String substring = str.substring(1);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    if (AbstractC1197x89633db9.endsWith$default(concat, substring, false, 2, null) && ((length = concat.length() - substring.length()) <= 0 || StringsKt__StringsKt.lastIndexOf$default((CharSequence) concat, '.', length - 1, false, 4, (Object) null) == -1)) {
                        z = true;
                    }
                }
                if (!z) {
                }
            }
            z = false;
            if (!z) {
            }
        }
        return false;
        return true;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String host, @NotNull SSLSession session) {
        Certificate certificate;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(session, "session");
        if (host.length() == ((int) Utf8.size$default(host, 0, 0, 3, null))) {
            try {
                certificate = session.getPeerCertificates()[0];
                Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            } catch (SSLException unused) {
                return false;
            }
        }
        return verify(host, (X509Certificate) certificate);
    }
}
