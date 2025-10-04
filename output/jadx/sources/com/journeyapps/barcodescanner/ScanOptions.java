package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ScanOptions {
    private Class<?> captureActivity;
    private Collection<String> desiredBarcodeFormats;
    private final Map<String, Object> moreExtras = new HashMap(3);
    public static final String UPC_A = new ObfuscatedString(new long[]{2261765083554039460L, 7010342200959300592L}).toString();
    public static final String UPC_E = new ObfuscatedString(new long[]{-3168451272729986059L, -2338741673669197888L}).toString();
    public static final String EAN_8 = new ObfuscatedString(new long[]{-2253029596225221663L, -4720489962568570092L}).toString();
    public static final String EAN_13 = new ObfuscatedString(new long[]{-3466654597862386003L, 4298134087282761649L}).toString();
    public static final String RSS_14 = new ObfuscatedString(new long[]{6158376606304293328L, -7024134688566884393L}).toString();
    public static final String CODE_39 = new ObfuscatedString(new long[]{6825115619624217458L, 8585182234288487478L}).toString();
    public static final String CODE_93 = new ObfuscatedString(new long[]{-3898595258690077736L, -1466771976387998289L}).toString();
    public static final String CODE_128 = new ObfuscatedString(new long[]{485897996385409818L, 221110440061500397L}).toString();
    public static final String ITF = new ObfuscatedString(new long[]{-8061453559653766619L, -1858824242713018484L}).toString();
    public static final String RSS_EXPANDED = new ObfuscatedString(new long[]{2876660512093395880L, -2649987486431589525L, -7097004283590810397L}).toString();
    public static final String QR_CODE = new ObfuscatedString(new long[]{2650400206152752374L, -4580404311692234078L}).toString();
    public static final String DATA_MATRIX = new ObfuscatedString(new long[]{7869868762157928546L, 843982402493748445L, 7645508611673124990L}).toString();
    public static final String PDF_417 = new ObfuscatedString(new long[]{5070739202211686678L, 5958450782687132406L}).toString();
    public static final Collection<String> PRODUCT_CODE_TYPES = list(new ObfuscatedString(new long[]{4406945592150685092L, 3970442233382489020L}).toString(), new ObfuscatedString(new long[]{2363541186974937221L, -1723803832068877292L}).toString(), new ObfuscatedString(new long[]{5536038115243834144L, 5975720380575507371L}).toString(), new ObfuscatedString(new long[]{4888807791762429271L, -5311245230774163391L}).toString(), new ObfuscatedString(new long[]{-5912296940245471540L, 5465550114058486878L}).toString());
    public static final Collection<String> ONE_D_CODE_TYPES = list(new ObfuscatedString(new long[]{7257233755137973171L, -1365280787964184568L}).toString(), new ObfuscatedString(new long[]{-9064268287318522182L, -8498352379912447551L}).toString(), new ObfuscatedString(new long[]{3988891284836283707L, -8662251233517994315L}).toString(), new ObfuscatedString(new long[]{7407388383503936792L, 2090743065623339597L}).toString(), new ObfuscatedString(new long[]{8258455350709454583L, -8346991435388453016L}).toString(), new ObfuscatedString(new long[]{-3659337397779884408L, -8283532992650317953L}).toString(), new ObfuscatedString(new long[]{4553252417098726114L, 2937799211366825571L}).toString(), new ObfuscatedString(new long[]{-5700053467328237895L, -1488726556474967143L}).toString(), new ObfuscatedString(new long[]{-547939725986115062L, -986268444518021111L}).toString(), new ObfuscatedString(new long[]{-5842115496399647664L, 2269671965226873131L}).toString(), new ObfuscatedString(new long[]{-2187387543835081126L, 5902154181123901977L, -8811237255483559191L}).toString());
    public static final Collection<String> ALL_CODE_TYPES = null;

    private void attachMoreExtras(Intent intent) {
        for (Map.Entry<String, Object> entry : this.moreExtras.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Integer) {
                intent.putExtra(key, (Integer) value);
            } else if (value instanceof Long) {
                intent.putExtra(key, (Long) value);
            } else if (value instanceof Boolean) {
                intent.putExtra(key, (Boolean) value);
            } else if (value instanceof Double) {
                intent.putExtra(key, (Double) value);
            } else if (value instanceof Float) {
                intent.putExtra(key, (Float) value);
            } else if (value instanceof Bundle) {
                intent.putExtra(key, (Bundle) value);
            } else if (value instanceof int[]) {
                intent.putExtra(key, (int[]) value);
            } else if (value instanceof long[]) {
                intent.putExtra(key, (long[]) value);
            } else if (value instanceof boolean[]) {
                intent.putExtra(key, (boolean[]) value);
            } else if (value instanceof double[]) {
                intent.putExtra(key, (double[]) value);
            } else if (value instanceof float[]) {
                intent.putExtra(key, (float[]) value);
            } else if (value instanceof String[]) {
                intent.putExtra(key, (String[]) value);
            } else {
                intent.putExtra(key, value.toString());
            }
        }
    }

    private static List<String> list(String... strArr) {
        return DesugarCollections.unmodifiableList(Arrays.asList(strArr));
    }

    public final ScanOptions addExtra(String str, Object obj) {
        this.moreExtras.put(str, obj);
        return this;
    }

    public Intent createScanIntent(Context context) {
        Intent intent = new Intent(context, getCaptureActivity());
        intent.setAction(new ObfuscatedString(new long[]{4787666581254026202L, -8951006864257813906L, 3649422168194762596L, 1074110218309249769L, -8327454198766967967L, -1775358474564473737L}).toString());
        if (this.desiredBarcodeFormats != null) {
            StringBuilder sb = new StringBuilder();
            for (String str : this.desiredBarcodeFormats) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(str);
            }
            intent.putExtra(new ObfuscatedString(new long[]{-49309579927039518L, 1747099826919151043L, 4744254224669118775L}).toString(), sb.toString());
        }
        intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        intent.addFlags(524288);
        attachMoreExtras(intent);
        return intent;
    }

    public Class<?> getCaptureActivity() {
        if (this.captureActivity == null) {
            this.captureActivity = getDefaultCaptureActivity();
        }
        return this.captureActivity;
    }

    public Class<?> getDefaultCaptureActivity() {
        return CaptureActivity.class;
    }

    public Map<String, ?> getMoreExtras() {
        return this.moreExtras;
    }

    public ScanOptions setBarcodeImageEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-3079136445450044961L, 7967974090495429513L, -7433296144555890098L, 9096582936243307580L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setBeepEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-2851115531928605657L, -2829902911911284710L, 7670535804647510183L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setCameraId(int i) {
        if (i >= 0) {
            addExtra(new ObfuscatedString(new long[]{-5387127179320578008L, 4996444120687203938L, 6004756313529784921L}).toString(), Integer.valueOf(i));
        }
        return this;
    }

    public ScanOptions setCaptureActivity(Class<?> cls) {
        this.captureActivity = cls;
        return this;
    }

    public ScanOptions setDesiredBarcodeFormats(Collection<String> collection) {
        this.desiredBarcodeFormats = collection;
        return this;
    }

    public ScanOptions setOrientationLocked(boolean z) {
        addExtra(new ObfuscatedString(new long[]{3963051642018454153L, 5332754678051978311L, -2392979596600640381L, 8671094975099804482L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public final ScanOptions setPrompt(String str) {
        if (str != null) {
            addExtra(new ObfuscatedString(new long[]{8786019459352624603L, -2609945309125719757L, -3863720000786004239L}).toString(), str);
        }
        return this;
    }

    public ScanOptions setTimeout(long j) {
        addExtra(new ObfuscatedString(new long[]{-7401461306579115210L, 6361975287345089468L}).toString(), Long.valueOf(j));
        return this;
    }

    public ScanOptions setTorchEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-896314996315562571L, -6546172184246693102L, -2949298212720158L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public ScanOptions setDesiredBarcodeFormats(String... strArr) {
        this.desiredBarcodeFormats = Arrays.asList(strArr);
        return this;
    }
}
