package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcdv {
    public static final Handler zza = new zzftt(Looper.getMainLooper());
    private static final String zzb = AdView.class.getName();
    private static final String zzc = InterstitialAd.class.getName();
    private static final String zzd = AdManagerAdView.class.getName();
    private static final String zze = AdManagerInterstitialAd.class.getName();
    private static final String zzf = SearchAdView.class.getName();
    private static final String zzg = AdLoader.class.getName();
    private float zzh = -1.0f;

    private final JSONArray zzA(Collection collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zzB(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final void zzB(JSONArray jSONArray, @Nullable Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(zzh((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(zzi((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(zzA((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(zzg((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    private final void zzC(JSONObject jSONObject, String str, @Nullable Object obj) {
        Boolean[] boolArr;
        Long[] lArr;
        Double[] dArr;
        Integer[] numArr;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzt)).booleanValue()) {
            str = String.valueOf(str);
        }
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzh((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, zzi((Map) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONObject.put(String.valueOf(str), zzA((Collection) obj));
            return;
        }
        if (obj instanceof Object[]) {
            jSONObject.put(str, zzA(Arrays.asList((Object[]) obj)));
            return;
        }
        int i = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            if (iArr == null) {
                numArr = new Integer[0];
            } else {
                int length = iArr.length;
                Integer[] numArr2 = new Integer[length];
                while (i < length) {
                    numArr2[i] = Integer.valueOf(iArr[i]);
                    i++;
                }
                numArr = numArr2;
            }
            jSONObject.put(str, zzg(numArr));
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr2 = (double[]) obj;
            if (dArr2 == null) {
                dArr = new Double[0];
            } else {
                int length2 = dArr2.length;
                Double[] dArr3 = new Double[length2];
                while (i < length2) {
                    dArr3[i] = Double.valueOf(dArr2[i]);
                    i++;
                }
                dArr = dArr3;
            }
            jSONObject.put(str, zzg(dArr));
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            if (jArr == null) {
                lArr = new Long[0];
            } else {
                int length3 = jArr.length;
                Long[] lArr2 = new Long[length3];
                while (i < length3) {
                    lArr2[i] = Long.valueOf(jArr[i]);
                    i++;
                }
                lArr = lArr2;
            }
            jSONObject.put(str, zzg(lArr));
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            if (zArr == null) {
                boolArr = new Boolean[0];
            } else {
                int length4 = zArr.length;
                Boolean[] boolArr2 = new Boolean[length4];
                while (i < length4) {
                    boolArr2[i] = Boolean.valueOf(zArr[i]);
                    i++;
                }
                boolArr = boolArr2;
            }
            jSONObject.put(str, zzg(boolArr));
            return;
        }
        jSONObject.put(str, obj);
    }

    private static final void zzD(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar, @Nullable String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int zzx = zzx(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzqVar.zzf - zzx, zzqVar.zzc - zzx, 17));
        viewGroup.addView(frameLayout, zzqVar.zzf, zzqVar.zzc);
    }

    public static int zza(Context context, int i) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                int i2 = configuration.orientation;
                if (i == 0) {
                    i = i2;
                }
                if (i == i2) {
                    return Math.round(displayMetrics.heightPixels / displayMetrics.density);
                }
                return Math.round(displayMetrics.widthPixels / displayMetrics.density);
            }
            return -1;
        }
        return -1;
    }

    public static AdSize zzc(Context context, int i, int i2, int i3) {
        int round;
        int zza2 = zza(context, i3);
        if (zza2 == -1) {
            return AdSize.INVALID;
        }
        int min = Math.min(90, Math.round(zza2 * 0.15f));
        if (i > 655) {
            round = Math.round((i / 728.0f) * 90.0f);
        } else if (i > 632) {
            round = 81;
        } else if (i > 526) {
            round = Math.round((i / 468.0f) * 60.0f);
        } else if (i > 432) {
            round = 68;
        } else {
            round = Math.round((i / 320.0f) * 50.0f);
        }
        return new AdSize(i, Math.max(Math.min(round, min), 50));
    }

    public static String zzd() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{3115911714912295227L, -2504863054405216191L}).toString());
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    @Nullable
    public static String zze(String str) {
        return zzz(str, new ObfuscatedString(new long[]{6504929559209435997L, -7503307007622077967L}).toString());
    }

    @Nullable
    public static String zzf(String str) {
        return zzz(str, new ObfuscatedString(new long[]{6413570423989963273L, -2498935648645090734L}).toString());
    }

    @VisibleForTesting
    public static boolean zzo(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) zzbij.zzd.zze());
    }

    public static final int zzp(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    @Nullable
    @VisibleForTesting
    public static final String zzq(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        String str2;
        int i2 = 0;
        while (true) {
            i = i2 + 1;
            if (i < stackTraceElementArr.length) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i2];
                String className = stackTraceElement.getClassName();
                if (!new ObfuscatedString(new long[]{2017902838555740192L, 8067882084649576364L}).toString().equalsIgnoreCase(stackTraceElement.getMethodName()) || (!zzb.equalsIgnoreCase(className) && !zzc.equalsIgnoreCase(className) && !zzd.equalsIgnoreCase(className) && !zze.equalsIgnoreCase(className) && !zzf.equalsIgnoreCase(className) && !zzg.equalsIgnoreCase(className))) {
                    i2 = i;
                }
            } else {
                str2 = null;
                break;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, new ObfuscatedString(new long[]{4664892699153362765L, -1190359885510887472L}).toString());
            StringBuilder sb = new StringBuilder();
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                for (int i3 = 2; i3 > 0 && stringTokenizer.hasMoreElements(); i3--) {
                    sb.append(new ObfuscatedString(new long[]{-6480584418510108990L, 8638302597251425028L}).toString());
                    sb.append(stringTokenizer.nextToken());
                }
                str = sb.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
        }
        return null;
    }

    public static final boolean zzr() {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkN)).booleanValue();
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            if (str.contains(new ObfuscatedString(new long[]{3026567728294265984L, -863684977845270601L}).toString()) || str.contains(new ObfuscatedString(new long[]{4892637757237948069L, -4428625578752648220L}).toString())) {
                return true;
            }
            if (booleanValue && Build.HARDWARE.contains(new ObfuscatedString(new long[]{4410781188934952889L, -6775117755271803864L}).toString())) {
                return true;
            }
            return false;
        }
        return Build.DEVICE.startsWith(new ObfuscatedString(new long[]{6828955869970541450L, 8132828855169426914L}).toString());
    }

    public static final boolean zzs(Context context, int i) {
        if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean zzt(Context context) {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
        if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
            return false;
        }
        return true;
    }

    public static final boolean zzu() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static final int zzv(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static final void zzw(Context context, @Nullable String str, String str2, Bundle bundle, boolean z, zzcdu zzcduVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString(new ObfuscatedString(new long[]{-4003281750756399200L, 2465349989067915754L}).toString(), Build.VERSION.RELEASE);
        bundle.putString(new ObfuscatedString(new long[]{-1288573992350684228L, 2578720470968341254L}).toString(), String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString(new ObfuscatedString(new long[]{8776594233791857635L, -2458808165867054826L}).toString(), applicationContext.getPackageName());
        if (str == null) {
            str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1146491243968025991L, -3702923449135829577L, -8843094468259368913L}), AbstractC0749x8313616e.m3340x952a0a9e(GoogleApiAvailabilityLight.getInstance().getApkVersion(context)));
        }
        bundle.putString(new ObfuscatedString(new long[]{-3031380518976542671L, 8824927625717964225L}).toString(), str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme(new ObfuscatedString(new long[]{-1261273308240661556L, -2224524667511163821L}).toString()).path(new ObfuscatedString(new long[]{2046414303518519538L, -8850792762589003221L, -3533465626364228752L, 5408113135859564514L, 6718709242545598961L, -6842257558654890909L, 1152453932921112406L}).toString()).appendQueryParameter(new ObfuscatedString(new long[]{-3720274859957737303L, 3621517502051346544L}).toString(), new ObfuscatedString(new long[]{6302589740304299656L, 7378351489749779755L, 4922389440703219326L}).toString());
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        zzcduVar.zza(appendQueryParameter.toString());
    }

    public static final int zzx(Context context, int i) {
        return zzp(context.getResources().getDisplayMetrics(), i);
    }

    @Nullable
    public static final String zzy(Context context) {
        String string;
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, new ObfuscatedString(new long[]{7496006563892493741L, -1539011597327946463L, -1926710328669420739L}).toString());
        }
        if (string == null || zzr()) {
            string = new ObfuscatedString(new long[]{3078671773280459176L, -4463998483795824200L}).toString();
        }
        return zzz(string, new ObfuscatedString(new long[]{1031831085196595878L, 1112056986373138089L}).toString());
    }

    @Nullable
    private static String zzz(String str, String str2) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, new ObfuscatedString(new long[]{347110602001697709L, 8420593520341372794L}).toString(), new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    public final int zzb(Context context, int i) {
        if (this.zzh < 0.0f) {
            synchronized (this) {
                try {
                    if (this.zzh < 0.0f) {
                        WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-2416632457582262983L, -8790797965360184816L}).toString());
                        if (windowManager == null) {
                            return 0;
                        }
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        defaultDisplay.getMetrics(displayMetrics);
                        this.zzh = displayMetrics.density;
                    }
                } finally {
                }
            }
        }
        return Math.round(i / this.zzh);
    }

    @VisibleForTesting
    public final JSONArray zzg(Object[] objArr) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            zzB(jSONArray, obj);
        }
        return jSONArray;
    }

    public final JSONObject zzh(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zzC(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final JSONObject zzi(Map map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zzC(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            throw new JSONException(new ObfuscatedString(new long[]{8835226903342701784L, 2630813345791700155L, -8046996562738457803L, 1396516024805810045L, 3127209600937754541L}).toString().concat(String.valueOf(e.getMessage())));
        }
    }

    public final JSONObject zzj(@Nullable Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return zzh(bundle);
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-155007301377203193L, 8759779102798232137L, -228050692709496191L, 6239136378540231340L, -8090961820316594626L}).toString(), e);
            return null;
        }
    }

    public final void zzk(JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject2.get(next);
            try {
                Object obj2 = jSONObject.get(next);
                if (JSONObject.class.isInstance(obj2) && JSONObject.class.isInstance(obj)) {
                    zzk((JSONObject) obj2, (JSONObject) obj);
                }
            } catch (JSONException unused) {
                jSONObject.put(next, obj);
            }
        }
    }

    public final void zzl(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar, @Nullable String str, @Nullable String str2) {
        if (str2 != null) {
            zzcec.zzj(str2);
        }
        zzD(viewGroup, zzqVar, str, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK);
    }

    public final void zzm(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzq zzqVar, @Nullable String str) {
        zzD(viewGroup, zzqVar, new ObfuscatedString(new long[]{-4647151398513500637L, -4668851572827107301L, -194680258639817138L}).toString(), ViewCompat.MEASURED_STATE_MASK, -1);
    }

    public final void zzn(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        zzw(context, str, new ObfuscatedString(new long[]{8494685421067267735L, -2602406737325438747L, -8617133653044929370L}).toString(), bundle, true, new zzcdu() { // from class: com.google.android.gms.internal.ads.zzcds
            @Override // com.google.android.gms.internal.ads.zzcdu
            public final boolean zza(String str3) {
                new zzcdt(zzcdv.this, str3).start();
                return true;
            }
        });
    }
}
