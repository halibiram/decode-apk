package com.tknetwork.tunnel.core;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import app.tunnel.vpncommons.org.spongycastle.util.io.pem.PemObject;
import app.tunnel.vpncommons.org.spongycastle.util.io.pem.PemReader;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;
import java.lang.Character;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Hashtable;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes3.dex */
public class X509Utils {
    public static String getCertificateFriendlyName(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            X509Certificate x509Certificate = (X509Certificate) getCertificatesFromFile(str)[0];
            return getCertificateValidityString(x509Certificate, context.getResources()) + getCertificateFriendlyName(x509Certificate);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getCertificateValidityString(X509Certificate x509Certificate, Resources resources) {
        try {
            x509Certificate.checkValidity();
            long time = x509Certificate.getNotAfter().getTime() - new Date().getTime();
            if (time > 7776000000L) {
                return resources.getString(R.string.months_left, Long.valueOf(getMonthsDifference(r0, r8)));
            }
            if (time > 259200000) {
                return resources.getString(R.string.days_left, Long.valueOf(time / 86400000));
            }
            return resources.getString(R.string.hours_left, Long.valueOf(time / 3600000));
        } catch (CertificateExpiredException unused) {
            return new ObfuscatedString(new long[]{-7286598900357841168L, 3918865472871251582L, 7979039694498533640L}).toString();
        } catch (CertificateNotYetValidException unused2) {
            return new ObfuscatedString(new long[]{5865499373463992953L, 2335007838010289192L, 7404553206855403776L}).toString();
        }
    }

    public static Certificate[] getCertificatesFromFile(String str) {
        CertificateFactory certificateFactory = CertificateFactory.getInstance(new ObfuscatedString(new long[]{-5161541181951105379L, -1487669294847344989L}).toString());
        Vector vector = new Vector();
        if (VpnProfile.isEmbedded(str)) {
            int indexOf = str.indexOf(new ObfuscatedString(new long[]{-7850060902076025316L, -3812448340235074647L, -8120741938509261046L, 1021567266588110504L, 4407811326516848186L}).toString());
            do {
                int max = Math.max(0, indexOf);
                vector.add(certificateFactory.generateCertificate(new ByteArrayInputStream(str.substring(max).getBytes())));
                indexOf = str.indexOf(new ObfuscatedString(new long[]{3238895817441070782L, 5049630616746908425L, -201226274355808698L, -93122859438582228L, -6316054356128391147L}).toString(), max + 1);
            } while (indexOf > 0);
            return (Certificate[]) vector.toArray(new Certificate[vector.size()]);
        }
        return new Certificate[]{certificateFactory.generateCertificate(new FileInputStream(str))};
    }

    public static int getMonthsDifference(Date date, Date date2) {
        return ((date2.getMonth() + (date2.getYear() * 12)) - (date.getMonth() + (date.getYear() * 12))) + 1;
    }

    private static String ia5decode(String str) {
        String obfuscatedString = new ObfuscatedString(new long[]{-2735046969627561535L}).toString();
        for (int i = 1; i < str.length(); i += 2) {
            String substring = str.substring(i - 1, i + 1);
            char parseInt = (char) Integer.parseInt(substring, 16);
            if (isPrintableChar(parseInt)) {
                obfuscatedString = obfuscatedString + parseInt;
            } else if (i != 1 || (parseInt != 18 && parseInt != 27)) {
                obfuscatedString = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1784651974097000633L, -1501194880820765373L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString), substring);
            }
        }
        return obfuscatedString;
    }

    public static boolean isPrintableChar(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        if (!Character.isISOControl(c) && of != null && of != Character.UnicodeBlock.SPECIALS) {
            return true;
        }
        return false;
    }

    public static PemObject readPemObjectFromFile(String str) {
        Reader fileReader;
        if (VpnProfile.isEmbedded(str)) {
            fileReader = new StringReader(VpnProfile.getEmbeddedContent(str));
        } else {
            fileReader = new FileReader(new File(str));
        }
        PemReader pemReader = new PemReader(fileReader);
        PemObject readPemObject = pemReader.readPemObject();
        pemReader.close();
        return readPemObject;
    }

    public static String getCertificateFriendlyName(X509Certificate x509Certificate) {
        String str;
        X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
        byte[] encoded = subjectX500Principal.getEncoded();
        try {
            Class<?> cls = Class.forName(new ObfuscatedString(new long[]{1045681276808016934L, 8075674895998749529L, -6656914896870568232L, -1685136981807097481L, -5449612730024838685L, -5841193997944770640L, 6036027438799329554L}).toString());
            Method method = cls.getMethod(new ObfuscatedString(new long[]{3515343022365629033L, -2732277837199731400L, 8980535042456157532L}).toString(), Object.class);
            Hashtable hashtable = (Hashtable) cls.getField(new ObfuscatedString(new long[]{-3720719079420674013L, -1756750307040277464L, 7414102655516678191L}).toString()).get(cls);
            if (!hashtable.containsKey(new ObfuscatedString(new long[]{-6576666500716418584L, -703749635790769479L, -4248764710211677701L, 539750192850092806L}).toString())) {
                hashtable.put(new ObfuscatedString(new long[]{-5187652503436240334L, 7179475926407207983L, -3130229898467484475L, -5576281729680404626L}).toString(), new ObfuscatedString(new long[]{-5763392992959378530L, -6984381686352132841L}).toString());
            }
            str = (String) cls.getMethod(new ObfuscatedString(new long[]{-6001780261813384996L, 6407511064021362223L}).toString(), Boolean.TYPE, Hashtable.class).invoke(method.invoke(cls, encoded), Boolean.TRUE, hashtable);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
            str = null;
        }
        if (str == null) {
            str = subjectX500Principal.getName();
        }
        String[] split = str.split(new ObfuscatedString(new long[]{8781541111182322233L, -5504356014319051936L}).toString());
        for (int i = 0; i < split.length; i++) {
            String str2 = split[i];
            if (str2.startsWith(new ObfuscatedString(new long[]{8230969194312952674L, -504344108872017188L, 6587538722665975227L, 694828364959651190L}).toString())) {
                split[i] = new ObfuscatedString(new long[]{164757353871078500L, 1834906973445320741L}).toString() + ia5decode(str2.replace(new ObfuscatedString(new long[]{4384268470292354738L, -4243413634970547735L, -5874002240237086042L, 1149810319380348908L}).toString(), new ObfuscatedString(new long[]{-8592071359982470062L}).toString()));
            }
        }
        return TextUtils.join(new ObfuscatedString(new long[]{5854247284291857363L, -8292750496667580874L}).toString(), split);
    }
}
