package de.blinkt.openvpn.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import com.fbd.tunnel.R;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0636x205c8375;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.FormatFlagsConversionMismatchException;
import java.util.Locale;
import java.util.UnknownFormatConversionException;

/* loaded from: classes3.dex */
public class LogItem implements Parcelable {
    public static final Parcelable.Creator<LogItem> CREATOR = new C0636x205c8375(1);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final TkLogStatus.LogLevel f1013xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object[] f1014x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final String f1015x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final int f1016x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final long f1017x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final int f1018x9e171bf9;

    public LogItem(int i, Object... objArr) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1018x9e171bf9 = -1;
        this.f1016x75d576dc = i;
        this.f1014x3271d0aa = objArr;
    }

    public static String join(CharSequence charSequence, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : objArr) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static String m1742xfbe0c504(Context context) {
        String str;
        context.getPackageManager();
        String str2 = "error getting package signature";
        try {
            X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray()));
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(x509Certificate.getEncoded());
            byte[] digest = messageDigest.digest();
            if (!Arrays.equals(digest, TkLogStatus.f1021xfbe0c504) && !Arrays.equals(digest, TkLogStatus.f1022x3271d0aa)) {
                str2 = "- Core3";
            } else {
                str2 = "";
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = String.format("%s Build %d", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException unused) {
            str = "error getting version";
        }
        return context.getString(R.string.app_mobile_info, str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String format(Context context, int i) {
        String str;
        DateFormat timeFormat;
        if (i != 0) {
            Date date = new Date(getLogtime());
            if (i == 2) {
                timeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
            } else {
                timeFormat = android.text.format.DateFormat.getTimeFormat(context);
            }
            str = "<b>[" + timeFormat.format(date) + "]</b>  ";
        } else {
            str = "";
        }
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(getString(context));
        return m3341xc20437a5.toString();
    }

    public TkLogStatus.LogLevel getLogLevel() {
        return this.f1013xfbe0c504;
    }

    public long getLogtime() {
        return this.f1017x9738a56c;
    }

    public String getMessage() {
        return this.f1015x1378447b;
    }

    public String getString(Context context) {
        try {
            String str = this.f1015x1378447b;
            if (str != null) {
                return str;
            }
            int i = this.f1016x75d576dc;
            Object[] objArr = this.f1014x3271d0aa;
            if (context != null) {
                if (i == R.string.app_mobile_info) {
                    return m1742xfbe0c504(context);
                }
                if (objArr == null) {
                    return context.getString(i);
                }
                return context.getString(i, objArr);
            }
            Locale locale = Locale.ENGLISH;
            String str2 = "Log (no context) resid " + i;
            if (objArr != null) {
                return str2 + join("|", objArr);
            }
            return str2;
        } catch (FormatFlagsConversionMismatchException e) {
            if (context != null) {
                throw new FormatFlagsConversionMismatchException(e.getLocalizedMessage() + getString(null), e.getConversion());
            }
            throw e;
        } catch (UnknownFormatConversionException e2) {
            if (context != null) {
                throw new UnknownFormatConversionException(e2.getLocalizedMessage() + getString(null));
            }
            throw e2;
        }
    }

    public int getVerbosityLevel() {
        int i = this.f1018x9e171bf9;
        if (i == -1) {
            return this.f1013xfbe0c504.getInt();
        }
        return i;
    }

    public String toString() {
        return getString(null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeArray(this.f1014x3271d0aa);
        parcel.writeString(this.f1015x1378447b);
        parcel.writeInt(this.f1016x75d576dc);
        parcel.writeInt(this.f1013xfbe0c504.getInt());
        parcel.writeLong(this.f1017x9738a56c);
    }

    public LogItem(TkLogStatus.LogLevel logLevel, int i, String str) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1013xfbe0c504 = logLevel;
        this.f1015x1378447b = str;
        this.f1018x9e171bf9 = i;
    }

    public LogItem(TkLogStatus.LogLevel logLevel, int i, Object... objArr) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1018x9e171bf9 = -1;
        this.f1013xfbe0c504 = logLevel;
        this.f1016x75d576dc = i;
        this.f1014x3271d0aa = objArr;
    }

    public LogItem(TkLogStatus.LogLevel logLevel, String str) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1018x9e171bf9 = -1;
        this.f1013xfbe0c504 = logLevel;
        this.f1015x1378447b = str;
    }

    public LogItem(TkLogStatus.LogLevel logLevel, int i) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1018x9e171bf9 = -1;
        this.f1016x75d576dc = i;
        this.f1013xfbe0c504 = logLevel;
    }

    public LogItem(Parcel parcel) {
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.INFO;
        this.f1014x3271d0aa = null;
        this.f1015x1378447b = null;
        this.f1017x9738a56c = System.currentTimeMillis();
        this.f1018x9e171bf9 = -1;
        this.f1014x3271d0aa = parcel.readArray(Object.class.getClassLoader());
        this.f1015x1378447b = parcel.readString();
        this.f1016x75d576dc = parcel.readInt();
        this.f1013xfbe0c504 = TkLogStatus.LogLevel.getEnumByValue(parcel.readInt());
        this.f1017x9738a56c = parcel.readLong();
    }
}
